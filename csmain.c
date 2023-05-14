#include <stdio.h>
#include "swap.h"
#include "compare.h"

int main(int argc, char *argv[])
{
	int a[11] = {7, 6, 4, 3, 8, 9, 1, 2, 10, 11};
	int i=0, j=5, ret;
	ret = compare(a, i, j);
	printf("%d, %d, %d, %d, %d\n", i, j, a[i], a[j], ret);
	swap(a, i, j);
	printf("%d, %d, %d, %d, %d\n", i, j, a[i], a[j], ret);
	return 0;
}
