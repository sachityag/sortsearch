#include <stdio.h>
#include <stdlib.h>
#include "bubblesort.h"
#include "swap.h"
#include "compare.h"


int bubblesort(int a[], int len)
{
	int i, j;
	for(i=0;i<len;i++) {
		for(j=0;j<len-i-1;j++) {
			if(compare(a, j, j+1)) {
				swap(a, j, j+1);
			}
		}
	}
	for(i=0;i<len;i++) {
		printf("%d ", a[i]);
	}
	printf("\n");
	return 0;
}
