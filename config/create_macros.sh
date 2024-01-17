#!/bin/bash


for x in {0..9} {A..Z} 
do
    echo "macro_hyperkey_$x: macro_hyperkey_$x{" >> $1
    echo " compatible = \"zmk,behavior-macro\";" >> $1
    echo " label = \"macro_hyperkey_$x\";" >> $1
    echo " #binding-cells = <0>;" >> $1
    echo " bindings = <&sk LEFT_COMMAND>, <&sk LEFT_ALT>, <&sk LEFT_SHIFT>, <&sk LEFT_CONTROL>, <&kp $x>;" >> $1
    echo "};" >> $1
done
