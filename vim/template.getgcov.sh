#!/bin/bash

RESULT=`gcov -b "${1}"`
echo $RESULT | grep "No branches" > /dev/null 2>&1
if [ $? -eq 1 ]; then
	COVERAGE="`echo $RESULT | cut -d'%' -f1 | cut -d':' -f2`%"
	BRANCHES="`echo $RESULT | cut -d'%' -f2 | cut -d':' -f2`%"
	TAKEN="`echo $RESULT | cut -d'%' -f3 | cut -d':' -f2`%"
	CALLS="`echo $RESULT | cut -d'%' -f4 | cut -d':' -f2`%"
else
	COVERAGE="`echo $RESULT | cut -d'%' -f1 | cut -d':' -f2`%"
	BRANCHES="(n/a)"
	TAKEN="(n/a)"
	CALLS="`echo $RESULT | cut -d'%' -f2 | cut -d':' -f2`%"
fi

LINES=`wc -l $2 | cut -d' ' -f1`
LINESM2=`expr $LINES - 2`
LINESM3=`expr $LINES - 3`

NEWFILEDATA=`tail -$LINESM2 $2 | head -$LINESM3`
NEWFILE=`mktemp tmp.XXXXXXXXXX`

COVFILE=`basename $1 .o`
COVFILE="${COVFILE}.c.gcov"

echo "<?xml version=\"1.0\"?>" >> $NEWFILE
echo "<testsuites xmlns=\"http://check.sourceforge.net/ns\">" >> $NEWFILE
echo $NEWFILEDATA >> $NEWFILE
echo "<coverage>$COVERAGE</coverage>" >> $NEWFILE
echo "<branches>$BRANCHES</branches>" >> $NEWFILE
echo "<taken>$TAKEN</taken>" >> $NEWFILE
echo "<calls>$CALLS</calls>" >> $NEWFILE
echo "</testsuites>" >> $NEWFILE

mv $NEWFILE $2
