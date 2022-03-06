#include "utils/gpuHelpFunctions.cuh"
#include "utils/cpuHelpFunctions.h"
#include <iostream>
#include <vector>

int main(int argc, char **argv) {


	std::vector<std::string> args(argv, argv+argc);

	for (size_t i=1; i<args.size(); ++i){
		if(args[i] == "--h"){
			std::cout << std::endl;
			std::cout << "******Help options****** " << "\n"
			<< "\t--v - Code information" << "\n"
			<< "\t--d - Device information" << std::endl;
			std::cout << std::endl;
		}else if (args[i] == "--v"){
			std::cout << std::endl;
			printCodeInfo();
			std::cout << std::endl;
		}else if (args[i] == "--d"){
			std::cout << std::endl;
			printDeviceProperties();
			std::cout << std::endl;
		}
	}

	//printDeviceProperties();
	//printCodeInfo();

	return 0;
}
