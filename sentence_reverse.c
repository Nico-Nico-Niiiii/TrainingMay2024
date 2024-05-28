#include <stdio.h>
#include <string.h>
int main() {
	char sentence[1000];
	scanf("%[^\n]s",sentence);
	printf("%s",sentence);
	char words[100][100];
	int i=0,wordcount=0,j=0,l=0;
	for(i;sentence[i]!='\0';i++){
	   // printf("888");
	    if(sentence[i]==' '){
	        words[wordcount][j]='\0';
	       // printf("888");
	        wordcount++;
	        j=0;
	    }
	    else{
	        words[wordcount][j]=sentence[i];
	        j++;
	    }
	    words[wordcount][j]='\0';
	   // printf("wordcount %d j= %d", wordcount,j);
	    
	}
    int k=wordcount;
    printf("\nThe Reversed String is \n");
	for(k ; k>=0 ; k--){
	    printf("%s ", words[k]);
	    }
	return 0;
}

