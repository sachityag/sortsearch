#include <stdio.h>
#include <string.h>
#include "compareterm.h"

int compareterm(int a[], int i, int searchterm)
{
	if (searchterm == a[i]) {
		return 0;
	}
	else if (searchterm < a[i]) {
		return -1;
	}
	return 1;
}
