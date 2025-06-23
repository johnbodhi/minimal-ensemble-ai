#include <iostream>
#include <chrono>

using namespace std::chrono;

auto start = high_resolution_clock::now();

int main()
{







    std::cout << "Hello World!\n";

	auto stop = high_resolution_clock::now();
	auto duration = duration_cast<microseconds>(stop - start);
	std::cout << "Time taken by function: " << duration.count() << " microseconds" << std::endl;
}

