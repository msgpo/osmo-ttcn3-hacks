#!/bin/sh

FILES="*.ttcn"

ttcn3_makefilegen -f MGCP_Test.ttcn $FILES
sed -i -e 's/# TTCN3_DIR = /TTCN3_DIR = \/usr/' Makefile
sed -i -e 's/LDFLAGS = /LDFLAGS = -L \/usr\/lib\/titan/' Makefile
sed -i -e 's/TTCN3_LIB = ttcn3-parallel/TTCN3_LIB = ttcn3/' Makefile
sed -i -e 's/CPPFLAGS = -D$(PLATFORM) -I$(TTCN3_DIR)\/include/CPPFLAGS = -D$(PLATFORM) -I$(TTCN3_DIR)\/include -I\/usr\/include\/titan/' Makefile
