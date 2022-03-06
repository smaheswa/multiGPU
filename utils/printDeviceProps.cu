#include <iostream>


void printDeviceProperties(){

	int devID;
	cudaDeviceProp props;

	cudaGetDevice(&devID);
	cudaGetDeviceProperties(&props, devID);
	std::cout<< 
		"\tDevice: " << devID << "\n" << 
		"\twith compute: " << props.name << "\n" <<
		"\tcapability: " <<props.name << "." << props.minor << "\n" <<  
		"\ttotalGlobalMemory: " << props.totalGlobalMem << "\n" << 
		"\tsharedMemPerBlock: " << props.sharedMemPerBlock << "\n" <<
		"\tmaxThreadsPerBlock: " << props.maxThreadsPerBlock << "\n" <<
		"\totalConstantMemory: " << props.totalConstMem << "\n" << 
		"\tcompute Mode: " << props.computeMode << "\n" << 
		"\tECC enabled: " << props.ECCEnabled << std::endl;
}
