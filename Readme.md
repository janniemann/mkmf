# mkmf - generate object dependencies for make

## Limitations

- source files end in .c and are supposed to be in the current directory
- only source files include header files
- includes are not allowed to be conditional (so no #ifdefs around includes)
