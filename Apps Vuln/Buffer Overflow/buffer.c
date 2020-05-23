#include <stdio.h>
#include <string.h>

int main (int argc, char*argv[])
{
	int naoacessa = 0;
	char buff[8];
	printf("Variavel nao acessa tem %s",naoacessa);

	strcpy(buff, argv[1]);

	if(naoacessa == 0){
		printf("acesso negado\n");
	}else{
		printf("Ocorreu um buffer overflow, agora naoacessa vale %c\n",naoacessa);
		printf("Voce conseguiu acessar\n");
	}
	return 0;
}
