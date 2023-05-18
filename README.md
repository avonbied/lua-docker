# Lua for Docker

This is an adaptation of the repository of Lua development code, as seen by the Lua team, for development with Docker.

## Prerequistites
- [Docker](https://www.docker.com)  

**OR**
- gnu make
- Your choice of C/C++ compiler

## Structure

- `build` - build outputs
  - `bin` - final binaries
  - `obj` - intermediates files (.o) 
- `doc` - documentation files
- `include` - PUBLIC header files (.h/.hpp files)
- `src` - PRIVATE source files
- `test` - tests files

## Build Instructions

Run the following in your shell:
> `> make all`  
> `> make test`  

## TODO
- [x] Fix build process in makefile for predictable outputs
- [ ] Integrate tests into build process
- [ ] Create minified Docker image for use with standalone Lua programs 
- [ ] Create minified Docker image for use in generating Lua build artifacts (Multi-platform) 


## Official Lua Information

For complete information about Lua, visit [Lua.org](https://www.lua.org/).

Download official Lua releases from [Lua.org](https://www.lua.org/download.html).
