# CMake Syntax for [Nova][Nova]

More information about the plugin can be found in the
`CMake.novaextension` directory.

## Building

If you want to build this, you will need the tree-sitter-cmake
repository, and will need to build the parser using the
supplied compile.sh and Makefile.

1. git clone https://github.com/uyha/tree-sitter-cmake

2. Copy the Makefile and compile.sh from this directory into
   the tree-sitter-cmake repo you just cloned
  
3. In that directory, do `compile.sh . /Applications/Nova.app`

4. cp libtree-sitter-cmake.dylib to the CMake.novaextension/Syntaxes
   subdir of this repository.

[Nova]: https://nova.app "Nova website"
[TreeSitter]: https://tree-sitter.github.io