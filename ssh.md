# SSH

ALVO ==>> cat ~/.ssh/authorized_keys
LOCAL ==>> ssh-keygen
LOCAL ==>> cat id_rsa.pub (Copiar)
ALVO ==>> nano cat ~/.ssh/authorized_keys (Colar sua chave pública)
LOCAL ==>> ssh-add
LOCAL ==>> Conectar no alvo via SSH.
