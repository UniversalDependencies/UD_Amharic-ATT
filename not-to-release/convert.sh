#!/bin/bash

for i in sleepwalking third_apple_2 ; do
  for j in $i/*.txt ; do
    bn=`basename $j .txt`
    if [ -f $i/$bn.ann ] ; then
      echo $i/$bn
      perl ../../cairo/weaver/brat2conllu.pl --sidprefix $i-$bn- $j $i/$bn.ann > conllu/$i-$bn.conllu
    fi
  done
done

