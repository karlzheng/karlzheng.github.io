---
layout: post
categories: Algorithm
title: bubble_sort
typora-root-url: ../
---
## bubble_sort

```c
#include<stdio.h>
#include<time.h>
#include<stdlib.h>

void bubble_sort(int a[], int n)
{
	int i, j;

	for (i = 0; i < n - 1; i++) {
		for (j = 0; j < i; j++)
			if (a[j] > a[j + 1]) {
				int x;
				x = a[j];
				a[j] = a[i];
				a[i] = x;
			}
	}
}


int main(void)
{
	int i;
	int a[100];

	srand((unsigned int)time(NULL)); 

	for (i = 0; i < 100; ++i)
		a[i] = rand() % 100 + 1; 

	for (i = 0; i < 100; ++i)
		printf("%d ", a[i]);
	printf("\r\n");
	printf("\r\n");

	bubble_sort(a, 100);

	for (i = 0; i < 100; ++i)
		printf("%d ", a[i]);
	printf("\r\n");
	printf("\r\n");
}
```

