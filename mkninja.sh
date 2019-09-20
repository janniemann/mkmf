#!/bin/sh
#
# mkmf - generate object dependencies for ninja
#

# - source files end in .c and are supposed to be in the current directory
# - only source files include header files
# - includes are not allowed to be conditional (so no #ifdefs around includes)
#

cat <<EOF
# save as deps.ninja and use include in build.ninja.
#
EOF

for source in $(ls -1 *.c) ; do
    headers=$(cat ${source} |egrep "^[ \t]*#[ \t]*include[ \t]*\"[^\"]*\"[ \t]*$" |sed s/".*\"\([^\"]*\)\".*"/"\\1"/)
    object=${source%.c}.o
    printf "build ${object}: cc ${source}"
    for header in ${headers} ; do
	printf " ${header}"
    done
    printf "\n"
done
