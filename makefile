a.out: searchmain.o compareterm.o search.o bubblesort.o swap.o compare.o
	gcc -o a.out searchmain.o compareterm.o search.o bubblesort.o swap.o compare.o

searchmain.o: searchmain.c compareterm.h search.h bubblesort.h swap.h compare.h
	gcc searchmain.c -o searchmain.o -c

search.o: search.c search.h compareterm.h
	gcc search.c -o search.o -c

b.out: comparemain.o compareterm.o
	gcc -o b.out comparemain.o compareterm.o

comparemain.o: comparemain.c compareterm.h
	gcc comparemain.c -o comparemain.o -c

compareterm.o: compareterm.c compareterm.h
	gcc compareterm.c -o compareterm.o -c

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

compare.o: compare.c compare.h
	gcc compare.c -o compare.o -c

clean: 
	rm *.out *.o
