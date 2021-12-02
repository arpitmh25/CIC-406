#!/bin/bash/ -x
word() {
   fold -w1 <<< "${1//[^[alnum]]/}" | tr '[upper]' '[lower]' | sort | tr -d '\n'
}

   isAnagram() {
   a=$1
   b=$(word "$2")
   [[ $a = $b ]] && echo "yes" || echo "no";
}
isAnagram "the eyes" "they see"
