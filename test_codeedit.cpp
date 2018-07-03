#include <iostream>
using namespace std;

//This is the C prototype of the assembly function, it requires extern"C" to
//show the name is going to be decorated as _test and not the C++ way of
//doing things
extern"C" {
	int average(int*, int);
	int max(int*, int);
	int min(int*, int);
}
int main()
{
	const int SIZE = 7;
	int arr[SIZE] = {1,2,3,4,5,6,7};

	cout << "The average of the array: " << average(arr, SIZE) << endl;
	cout << "The largest number in the array: " << max(arr, SIZE) << endl;
	cout << "The smallest number in the array: " << min(arr, SIZE) << endl;

	system("pause");
	return 0;
}

