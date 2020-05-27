PKGS := ncursesw
CPPFLAGS := -g -Wall $(shell pkg-config --cflags $(PKGS))
LDFLAGS := $(shell pkg-config --libs $(PKGS))

all: nvselect

nvselect: main.cpp
	$(CXX) $(CPPFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm nvselect
