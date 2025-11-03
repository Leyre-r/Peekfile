nlines=$(cat $1 | wc -l)
if [[ -z $2 ]]
then 
head -n3 $1
echo "..."
tail -n3 $1 
elif [[ $nlines -gt $(( $2*2 )) ]]
then
echo Warning: this is not the full content of the file
head -n $2 $1
echo "..."
tail -n $2 $1 
elif [[ $nlines -le $(( $2*2 )) ]]
then
cat $1
fi
