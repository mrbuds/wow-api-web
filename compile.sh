#!/usr/bin/env bash

# https://mrbuds.github.io/wow-api-web/

# this script concatenate the 100+ .lua documentation in one big file and compile lua to js

# install moonshinejs : http://moonshinejs.org/
# need this directory : https://github.com/Gethe/wow-ui-source/tree/live/AddOns/Blizzard_APIDocumentation
#      or beta branch : https://github.com/Gethe/wow-ui-source/tree/beta/AddOns/Blizzard_APIDocumentation

BLIZZDOC='Blizzard_APIDocumentation'
UPDATEDDOCPATH="../wow-ui-source/AddOns/${BLIZZDOC}"
TOCFILE="${BLIZZDOC}/${BLIZZDOC}.toc"
CONCATFILE="fulldoc.lua"



# clean files
if [ -e ${CONCATFILE} ]; then
  echo ". delete old files"
  rm ${CONCATFILE} *.luac api.lua.json ${BLIZZDOC}/*.lua ${BLIZZDOC}/*.luac ${BLIZZDOC}/*.json
fi

echo ". copy data from ${UPDATEDDOCPATH}"
cp ${UPDATEDDOCPATH}/* ${BLIZZDOC}/

# concatenate documentation
echo ". make ${CONCATFILE}"
go=false
cat "${TOCFILE}" | sed $'s/\r$//' | while read -r line || [[ -n "$line" ]]; do
  if  [ "${line:0:7}" = "# Start" ]; then
    go=true
    continue
  fi
  if [ "$go" = true ]; then
    if [ ! "${line:0:1}" = '#' ]; then
      file="${BLIZZDOC}/${line}"
      if [ -e "$file" ]; then
        echo ".. add file ${file}"
        cat "$file" >> "${CONCATFILE}"
      else
        echo ".. can't find file: ${file}"
      fi
    fi
  fi
done

echo ". compile Lua files to javascript"

moonshine distil api.lua # fulldoc.lua
cd "${BLIZZDOC}"
moonshine distil *.lua
