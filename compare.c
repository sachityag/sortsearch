#include <stdio.h>
#include <string.h>
#include "compare.h"

int compare(int a[], int i, int j)
{
	if(a[i] > a[j]) {
		return 1;
	}
	return 0;
}
