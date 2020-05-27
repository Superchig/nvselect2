PKGS := ncursesw
CPPFLAGS := -g -Wall $(shell pkg-config --cflags $(PKGS))
LDFLAGS := $(shell pkg-config --libs $(PKGS))

all: nvselect

nvselect: main.cpp
	$(CXX) $(CPPFLAGS) $^ -o $@ $(LDFLAGS)

install: nvselect
	mkdir -p ~/bin
	ln -s $(PWD)/nvselect ~/bin/nvselect

clean:
	rm nvselect
