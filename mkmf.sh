#!/bin/sh
#
# mkmf - generate object dependencies for make
#

# - source files end in .c and are supposed to be in the current directory
# - only source files include header files
# - includes are not allowed to be conditional (so no #ifdefs around includes)
#
for source in $(ls -1 *.c) ; do
    headers=$(cat ${source} |egrep "^[ \t]*#[ \t]*include[ \t]*\"[^\"]*\"[ \t]*$" |sed s/".*\"\([^\"]*\)\".*"/"\\1"/)
    object=${source%.c}.o
    printf "${object}: ${source}"
    for header in ${headers} ; do
	printf " ${header}"
    done
    printf "\n"
done
