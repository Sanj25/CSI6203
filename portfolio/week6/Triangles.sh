triangles()
{
    for base in {1..100..1}
    do
         for height in {1..10..1}
         do
            printf "\nThe area of triangle with base $base and height $height is %d " $(($base*$height/2))
         done
    done
}

triangles
