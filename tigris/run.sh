#!/bin/sh

MJC="java -jar ~/code/minijava/mjc/dist/mjc.jar"
DIR="$1"
EXT="ISC,ICG,JVM,SPILL,IWE,NBD,BMO"

check() {
    category="$1"
    dir=`dirname "$2"`
    testfile=`basename "$2"`
    log="$dir/$testfile.log"
    output=""
    failed="-1"

    echo -n "$dir/$testfile: "
    old_dir=`pwd`
    cd "$dir"
    
    case "$category" in
        noncompile)
            output=`eval "$MJC" "$testfile" 2>&1`
            [ $? -ne 0 ]; failed=$?
            ;;
        compile)
            output=`eval "$MJC" "$testfile" 2>&1`
            [ $? -eq 0 ]; failed=$?
            ;;
        execute)
            output=`eval "$MJC" "$testfile" 2>&1`
            [ $? -eq 0 ]; failed=$?

            if [ "$failed" -eq "0" ]; then
                mainclass=`find_mainclass`
                java "$mainclass" > "$testfile.output" 2>&1
                [ $? -eq 0 ]; failed=$?

                if [ "$failed" -eq "0" ]; then
                    javac "$testfile" >/dev/null 2>&1

                    if [ "$?" -ne "0" ]; then
                        failed=-1
                    else
                        java "$mainclass" > "$testfile.refoutput"

                        diff "$testfile.output" "$testfile.refoutput" >/dev/null 2>&1

                        [ "$?" -eq 0 ]; failed="$?"
                    fi
                fi
            fi
            ;;
        nonexecute)
            output=`eval "$MJC" "$testfile" 2>&1`
            [ $? -eq 0 ]; failed=$?

            if [ "$failed" -eq "0" ]; then
                mainclass=`find_mainclass`
                java "$mainclass" > "$testfile.output" 2>&1
                [ $? -ne 0 ]; failed=$?
            fi
            ;;
    esac

    cd "$old_dir"

    if [ "$failed" -eq "0" ]; then
        echo "OK"
    elif [ "$failed" -eq "1" ]; then
        echo "FAIL (see error log: $log)"
        echo "$output" > "$log"
    else
        echo "NOT TESTED"
    fi
}

is_supported() {
    testfile="$1"
    grep "EXT:" "$testfile" | awk -F':' "{print \$2}" | while read line; do
        cur=`echo "$line" | tr -d ' \r\n'`
        if [ `echo "$EXT" | grep -c "$cur"` -ne 1 ]; then
            echo "fail"
            return
        fi
    done
    echo "ok"
}

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

for i in noncompile compile execute nonexecute; do
    directory="$DIR/$i"

    if ! [ -d "$directory" ]; then
        continue
    fi

    find "$directory" -type f -name "*.java" | while read testfile; do
        out=`is_supported "$testfile"`
        if [ "$out" = "ok" ]; then
            check "$i" "$testfile";
        fi
    done
done
