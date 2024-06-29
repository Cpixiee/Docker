#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
	int hack_me = 0;
	char buf[128];

	puts("Any Input?");
	gets(buf);

	if(hack_me > 0){
		system("echo \"Hi, here is your flag\"; cat flag.txt");
	}
	else{
		puts("maybe later");
	}
}