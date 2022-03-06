#include <iostream>


void printDeviceProperties(){

	int devID;
	cudaDeviceProp props;

	cudaGetDevice(&devID);
	cudaGetDeviceProperties(&props, devID);
	std::cout<< 
		" Device: " << devID << "\n" << 
		" with compute: " << props.name << "\n" <<
		" capability: " <<props.name << "." << props.minor << "\n" <<  
		" totalGlobalMemory: " << props.totalGlobalMem << "\n" << 
		" sharedMemPerBlock: " << props.sharedMemPerBlock << "\n" <<
		" maxThreadsPerBlock: " << props.maxThreadsPerBlock << "\n" <<
		" totalConstantMemory: " << props.totalConstMem << "\n" << 
		" compute Mode: " << props.computeMode << "\n" << 
		" ECC enabled: " << props.ECCEnabled << std::endl;

}
