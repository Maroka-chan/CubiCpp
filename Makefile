CFLAGS = -std=c++23 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

CubiCpp: main.cpp
	g++ $(CFLAGS) -o CubiCpp main.cpp $(LDFLAGS)

.PHONY: test clean

test: CubiCpp
	./CubiCpp

clean:
	rm -f CubiCpp
