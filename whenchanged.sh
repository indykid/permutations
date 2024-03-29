#!/bin/sh

while true    
do
   ATIME=`find $1 -type f -print0 | xargs -0 stat -f "%m"`

   if [[ "$ATIME" != "$LTIME" ]]
   then
       $2 $3 $4 $5 $6 $7 $8 $9
       LTIME=$ATIME
   fi
   sleep 0.2
done
