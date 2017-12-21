#!/bin/bash

if [ -z "$1" ]
then
  echo "Error: missing input SAC directory"
  exit
fi

if [ -z "$2" ]
then
  echo "Warning: missing output list file, using default..."
  LIST='default.list'
else
  LIST=$2
fi


# Input of the script is the directory containing the sac files

echo '#---------------------------------' > $LIST
echo '# ARRAY TOOL 3C - FILE LIST'        >> $LIST
echo '#---------------------------------' >> $LIST
echo '# NAME = --'                        >> $LIST
echo '# LOCATION = --'                    >> $LIST
echo '# DATE = --/--/----'                >> $LIST
echo '#---------------------------------' >> $LIST
echo '# Root directory'                   >> $LIST
echo $1 | awk '{ printf("ROOT %s\n", $1); }' >> $LIST
echo '# SAC files: Channel1 Channel2 Channel3' >> $LIST

ls $1/*EH[1,4]*.sac | xargs -n1 basename > .tmp1
ls $1/*EH[2,5]*.sac | xargs -n1 basename > .tmp2
ls $1/*EH[3,6]*.sac | xargs -n1 basename > .tmp3

paste -d ' ' .tmp1 .tmp2 .tmp3 | awk '{ printf("SACF %s %s %s\n", $1, $2, $3); }' >> $LIST

rm .tmp1 .tmp2 .tmp3

