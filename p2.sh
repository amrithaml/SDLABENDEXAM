echo "Enter the size of first array"
read s1
i=0
echo "Enter the elements"
while [ $i -lt $s1 ]
do
   read a[$i]
   i=$((i+1))
done
echo "Enter the size of second array"
read s2
i=0
echo "Enter the elements"
while [ $i -lt $s2 ]
do
   read b[$i]
   i=$((i+1))
done

 m=("${a[@]}" "${b[@]}")
 size3=$(($s1 + $s2))
 echo -e "Array after merging : "
 echo ${m[@]:0:$size3}

for(( i=0;i<$size3;i++ ))
 do
     for(( j=0;j<$(($size3 - $i));j++ ))
       do
           if [ ${m[$j]} -gt ${m[$((j + 1))]} ]
           then
                t=${m[$j]}
                m[$j]=${m[$(($j+1))]}
                m[$(($j+1))]=$t
           fi
       done
 done
 echo -e "Array after sorting : "
 echo ${m[@]:0:$size3}
 

 m=$(( $size3 / 2 ))
 x=${m[$m]}
 y=${m[$m-1]}
 sum=$(($x + $y))
 median=$(($sum / 2))
 echo "Median = $median"
