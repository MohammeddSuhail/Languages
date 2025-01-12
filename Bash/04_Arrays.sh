#!/bin/sh

fruits=("Apple" "Banana" "Cherry")

# Adding Elements to an Array
fruits+=("Dragonfruit")
fruits[4]="Orange"


echo ${fruits[3]}
echo ${fruits[4]}