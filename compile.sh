#!/usr/bin/env bash

# https://mrbuds.github.io/wow-api-web/

# this script concatenate the 100+ .lua documentation in one big file and compile lua to js

# install moonshinejs : http://moonshinejs.org/
# need this directory : https://github.com/Gethe/wow-ui-source/tree/live/AddOns/Blizzard_APIDocumentation
#      or beta branch : https://github.com/Gethe/wow-ui-source/tree/beta/AddOns/Blizzard_APIDocumentation

BLIZZDOC='Blizzard_APIDocumentation'
BLIZZDOCGEN='Blizzard_APIDocumentationGenerated'
UPDATEDDOCPATH="../BlizzardInterfaceCode/Interface/AddOns"
TOCFILE="${BLIZZDOC}/${BLIZZDOC}.toc"
TOCFILE2="${BLIZZDOC}/${BLIZZDOCGEN}.toc"
CONCATFILE="fulldoc.lua"



# clean files
if [ -e ${CONCATFILE} ]; then
  echo ". delete old files"
  rm ${CONCATFILE} *.luac api.lua.json ${BLIZZDOC}/*.lua ${BLIZZDOC}/*.luac ${BLIZZDOC}/*.json
fi

echo ". copy data from ${UPDATEDDOCPATH}"
cp ${UPDATEDDOCPATH}/${BLIZZDOC}/* ${BLIZZDOC}/
cp ${UPDATEDDOCPATH}/${BLIZZDOCGEN}/* ${BLIZZDOC}/

# concatenate documentation
echo ". make ${CONCATFILE}"
cat "patch.lua" > "${CONCATFILE}"
cat "${TOCFILE2}" | sed $'s/\r$//' | while read -r line || [[ -n "$line" ]]; do
  if [ ! "${line:0:1}" = '#' ]; then
    file="${BLIZZDOC}/${line}"
    if [ -e "$file" ]; then
      echo ".. add file ${file}"
      echo "" >> "${CONCATFILE}"
      cat "$file" >> "${CONCATFILE}"
    else
      echo ".. can't find file: ${file}"
    fi
  fi
done
cat "${CONCATFILE}"  | tr '\n' '\f' | sed -r 's/BACKPACK\|PLAYER/BACKPACK_PLAYER/g' | sed -r 's/CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_LAST - CHAR_CUSTOMIZE_CUSTOM_DISPLAY_OPTION_FIRST \+ 1/1/g' | sed -r 's/local \w+ =/APIDocumentation:AddDocumentationTable\(/g' | sed -r 's/\};/\}\);/g' | sed -r 's/\fAPIDocumentation:AddDocumentationTable\(\w+\);//g' | tr '\f' '\n' > fulldoc2.lua
echo ". compile Lua files to javascript"

moonshine distil api.lua
moonshine distil fulldoc2.lua

for file in ${BLIZZDOC}/*
do
  mv $file ${file}.tmp
  cat ${file}.tmp | sed -r 's/BACKPACK\|PLAYER/BACKPACK_PLAYER/g'  > $file
  rm ${file}.tmp
done

cd "${BLIZZDOC}"
moonshine distil *.lua
