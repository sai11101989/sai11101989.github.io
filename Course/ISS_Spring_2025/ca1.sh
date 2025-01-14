#!/bin/bash

validate() {
    local rows cols
    read -r rows cols
    if ! [[ $rows =~ ^[0-9]+$ ]] || ! [[ $cols =~ ^[0-9]+$ ]] || [ $rows -eq 0 ] || [ $cols -eq 0 ]; then
        echo "Invalid dimensions" >&2
        exit 1
    fi
}


multiply() {
    local rows1 cols1 rows2 cols2
    read -r rows1 cols1
    read -r rows2 cols2

    if [ $cols1 -ne $rows2 ]; then
        echo "Multiplication not possible" >&2
        return 1
    fi

    declare -A result
    for ((i=0; i<rows1; i++))
    do
        for ((j=0; j<cols2; j++))
        do
            result[$i,$j]=0
        done
    done

   
    for ((i=0; i<rows1; i++))
    do
        for ((k=0; k<cols1; k++))
        do
            for ((j=0; j<cols2; j++))
            do
                result[$i,$j]=$((result[$i,$j] + ${set1[$i,$k]} * ${set2[$k,$j]}))
            done
        done
    done

   
    echo "Result:"
    for ((i=0; i<rows1; i++))
    do
        for ((j=0; j<cols2; j++))
        do
            printf "%d " "${result[$i,$j]}"
        done
        echo
    done
}


if [ $# -ne 2 ]; then
    echo "Usage: $0 <set1> <set2>" >&2
    exit 1
fi

echo "Enter dimensions and elements of first set:"
read -r rows1 cols1
declare -A set1
for ((i=0; i<rows1; i++))
do
    read -ra row
    for ((j=0; j<cols1; j++))
    do
        set1[$i,$j]=${row[j]}
    done
done


echo "Enter dimensions and elements of second set:"
read -r rows2 cols2
declare -A set2
for ((i=0; i<rows2; i++))
do
    read -ra row
    for ((j=0; j<cols2; j++))
    do
        set2[$i,$j]=${row[j]}
    done
done

validate_m
multiply_m
