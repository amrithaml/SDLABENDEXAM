read -p "Enter file name : " filename
n=1
touch e
touch o
while read line; do
  n=`expr $line + 0`
  if [ `expr $n % 2` == 0 ]
then
 
  echo $line >> e
else
  
  echo $line >> o
fi
n=$((n+1))
done < $filename
