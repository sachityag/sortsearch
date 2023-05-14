a.out: searchmain.o compare.o search.o bubblesort.o swap.o
	gcc -o a.out searchmain.o compare.o search.o bubblesort.o swap.o

searchmain.o: searchmain.c compare.h search.h bubblesort.h swap.h
	gcc searchmain.c -o searchmain.o -c

b.out: comparemain.o compare.o
	gcc -o b.out comparemain.o compare.o

comparemain.o: comparemain.c compare.h
	gcc comparemain.c -o comparemain.o -c

compare.o: compare.c compare.h
	gcc compare.c -o compare.o -c

search.o: search.c search.h compare.h
	gcc search.c -o search.o -c

c.out: bubblemain.o bubblesort.o swap.o compare.o
	gcc -o a.out bubblemain.o bubblesort.o swap.o compare.o

bubblemain.o: bubblemain.c bubblesort.h swap.h compare.h
	gcc bubblemain.c -o bubblemain.o -c

bubblesort.o: bubblesort.c bubblesort.h swap.h compare.h
	gcc bubblesort.c -o bubblesort.o -c

d.out: csmain.o swap.o compare.o
	gcc -o c.out csmain.o swap.o compare.o

csmain.o: csmain.c swap.h compare.h
	gcc csmain.c -o csmain.o -c

swap.o: swap.c swap.h
	gcc swap.c -o swap.o -c

clean: 
	rm *.o a.out b.out c.out d.out
