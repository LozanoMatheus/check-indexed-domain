#!/usr/bin/env bash

function google_search() {
  local -r Domain=$(<${MY_WORKDIR}/domains.txt)
  for i in ${Domain}; do
    googler --json -w ${i} --np " " 2> /dev/null | grep "^\[\]$" &> /dev/null
    [[ ${?} -ne 0 ]] && echo "No results for ${i}" || { echo "The doamin ${i} is getting indexed by Google" ; false ; }
  done
}
google_search
