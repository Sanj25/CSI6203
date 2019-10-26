#!/bin/bash

triangles()
{
    for base in {1..100..1} 
    do
        for height in {1..100..1}
        do
            printf "\nThe area for a triangle with base $base and height $height is %d " $(($base*$height/2))
        done
    done
}

triangles
