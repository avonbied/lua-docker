# change this variable to point to the directory with Lua headers
# of the version being tested
LUA_DIR = ../../src
SRC_DIR := src
INC_DIR := ../include

CC = gcc

# compilation should generate Dynamic-Link Libraries
CFLAGS = -Wall -std=gnu99 -O2 -I$(INC_DIR) -fPIC -shared

# libraries used by the tests
all: lib1.so lib11.so lib2.so lib21.so lib2-v2.so
	touch all

lib1.so: libs/lib1.c $(INC_DIR)/luaconf.h $(INC_DIR)/lua.h
	$(CC) $(CFLAGS) -o lib1.so libs/lib1.c

lib11.so: libs/lib11.c $(INC_DIR)/luaconf.h $(INC_DIR)/lua.h
	$(CC) $(CFLAGS) -o lib11.so libs/lib11.c

lib2.so: libs/lib2.c $(INC_DIR)/luaconf.h $(INC_DIR)/lua.h
	$(CC) $(CFLAGS) -o lib2.so libs/lib2.c

lib21.so: libs/lib21.c $(INC_DIR)/luaconf.h $(INC_DIR)/lua.h
	$(CC) $(CFLAGS) -o lib21.so libs/lib21.c

lib2-v2.so: libs/lib21.c $(INC_DIR)/luaconf.h $(INC_DIR)/lua.h
	$(CC) $(CFLAGS) -o lib2-v2.so libs/lib22.c
