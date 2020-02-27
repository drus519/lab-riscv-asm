//Найти сумму положительных элементов массива.

//(N = 4, M = 2)
/*
2 -9 
1 11
-3 6 
-7 5
*/
// res = 25
#include <stdio.h>

#define N 4 
#define M 2

int main()
{
	int matrix[N][M];

	for (int i = 0; i < N; i++)
		for (int j = 0; j < M; j++)
			scanf("%d", &matrix[i][j]);

	printf("%d", proc(N, M, matrix));

	return 0;
}

int proc(int n, int m, int matr[N][M])
{
	int buf = 0;
	for (int i = 0; i < n; i++)
		for (int j = 0; j < m; j++)
			if (matr[i][j] > 0)
				buf += matr[i][j];
	return buf;
}