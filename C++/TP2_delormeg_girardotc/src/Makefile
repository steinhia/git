OBJ_FILE = test.o Dvector.o

# Define compilation flags  

CC = clang++ 
CFLAGS = -Wall 

./%.o : ./%.cpp
	$(CC) -c $(CFLAGS) $<

dvector.o :  Dvector.cpp Dvector.h
	$(CC) -c $(CFLAGS) Dvector.cpp -o Dvector.o

test.o : test.cpp
	$(CC) -c $(CFLAGS) test.cpp -o test.o

mainTest : dvector.o test.o
	$(CC) -o mainTest $(OBJ_FILE)

egalTest : dvector.o egal.o
	$(CC) -o egalTest Dvector.o egal.o

.PHONY: check clean checkMemory egal

check: mainTest
	./mainTest
checkMemory: mainTest
	valgrind ./mainTest
clean:
	rm -rf *.o mainTest
egal: egalTest
	time ./egalTest
