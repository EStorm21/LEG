/**
 * Converts a binary file to a ModelSim .dat file
 */

#include <iostream>
#include <fstream>
#include <string>
#include <cassert>

using namespace std;

int main(int argc, char const *argv[])
{
	assert(argc == 3);

	ifstream binFile (argv[1], ios::in | ios::binary);
	ofstream datFile (argv[2]);

	bool wasSkipped = false;
	for (int i = 0; binFile.good(); ++i) {
		char word[4];
		binFile.read(word, 4);
		if(word[0]==0 && word[1]==0 && word[2]==0 && word[3]==0) {
			wasSkipped = true;
		} else {
			char buffer [20];
			if(wasSkipped) {
				//datFile << '@' << std::hex << i << endl;
				sprintf(buffer, "@%08x\n", i);
				datFile << buffer;
			}
			//datFile << std::hex << word[3] << word[2] << word[1] << word[0] << endl;
			sprintf(buffer, "%02hhx%02hhx%02hhx%02hhx\n", word[3], word[2], word[1], word[0]);
			datFile << buffer;
			wasSkipped = false;
		}
		
	}

	return 0;
}