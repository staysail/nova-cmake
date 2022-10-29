# CMake Syntax for [Nova][1]

**CMake** provides syntax highlighting and folding for [**CMake**][3] making use of [Tree-sitter][2].

![](https://raw.githubusercontent.com/staysail/nova-cmake/main/screenshot.png)

This provides basic syntax coverage, including rich highlighting and folding
support for most common constructs in CMake.

Limited indenting hints are implemented for blocks like if/else/endif and
function/endfunction.

It does not support symbolication for completions or indexing (yet?)

## Future Directions

CMake Language Server support would be cool.
Ultimately, we would also like to add support for using CMake
in the various typical ways -- e.g. to reconfigure a build etc.
At some level, CMake support is something best tightly integrated into
the editor, instead of via an extension.  Hopefully this at least improves
the capabilities of Nova to make it useful for C projects.

[1]: https://nova.app "Nova website"
[2]: https://tree-sitter.github.io "Tree-sitter website"
[3]: https://cmake.org/ "CMake website"
