/* ordenación con el algoritmo de la burbuja */
#include <stdio.h>

int vector[100] = {20, -18, 16, 17, 20, -9, 13, -10, 4, 2, 0, 2, 4, 10, -8, 13, 20, 18, 16, 19};
int n;
 
int main() 
{
	int it = 0;

	int i = 0, j, tmp, canvis;
 
	n = 20;
	do
	{
		canvis = 0;
		for ( j=0 ; j<n-i-1 ; j++)
		{
			if (vector[j] > vector[j+1])
			{
				tmp = vector[j];
				vector[j] = vector[j+1];
				vector[j+1] = tmp;
				canvis++;
			}
			++it;
		}
		i++;
		++it;
	} while (canvis != 0);
	printf("%d\n", it);
}
