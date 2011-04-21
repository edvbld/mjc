#!/bin/bash

echo "POSITIVE TESTS"
echo "=============="
positive=`ls tests/positive/*.java` 
for fname in $positive
do
    java -jar dist/mjc.jar -q $fname
    name=`basename ${fname%\.*}`
    output="${fname%\.*}.output"
    cd $name
    java $name > output
    if `cmp -s output ../${output} > /dev/null`; then
        echo "$name: OK"
    else
        echo "$name: FAIL"
        exit 1
    fi
    cd ..
    rm -r "$name"
done

echo "NEGATIVE TESTS"
echo "=============="
negative=`ls tests/negative/*.java` 
for fname in $negative
do
    java -jar dist/mjc.jar -q $fname > output
    name=`basename ${fname%\.*}`
    output="${fname%\.*}.output"
    if `cmp -s output ${output} > /dev/null`; then
        echo "$name: OK"
    else
        echo "$name: FAIL"
        exit 1
    fi
    rm -r "$name"
    rm "output"
done
