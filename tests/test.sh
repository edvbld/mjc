#!/bin/bash

find_mainclass() {
    for i in ./*.class; do
        c=`strings "$i" | grep -c "main"`
        if [ "$c" -gt "0" ]; then
            echo `basename "$i" .class`
            return
        fi
    done
    return
}

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

echo "TIGRIS TESTS"
echo "=============="
tigris=`ls tests/tigris/*.java` 
for fname in $tigris
do
    java -jar dist/mjc.jar -q $fname
    name=`basename ${fname%\.*}`
    output="${fname%\.*}.out"
    cd $name
    mainclass=`find_mainclass`
    java $mainclass > output
    if `cmp -s output ../${output} > /dev/null`; then
        echo "$name: OK"
    else
        echo "$name: FAIL"
        exit 1
    fi
    cd ..
    rm -r "$name"
done
