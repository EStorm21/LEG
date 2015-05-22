CXX = g++
CXXFLAGS       = -g -std=gnu++0x -Wall -Wextra -pedantic -O2 $(EXTRA_CXXFLAGS)

TARGETS = convertBinToDat

all: $(TARGETS)

clean:
	rm -f $(TARGETS)
	rm -rf *.o

convertBinToDat: convertBinToDat.o
	$(CXX) $(CXXFLAGS) -o convertBinToDat $^

convertBinToDat.o: convertBinToDat.cpp
	$(CXX) $(CXXFLAGS) -c convertBinToDat.cpp