#include <stdio.h>
#include <string.h>
#include "swap.h"

int swap(int a[], int i, int j) {
	int c;
	c = a[j];
	a[j] = a[i];
	a[i] = c;
	return 0;
}
