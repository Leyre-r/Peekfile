echo $1
nlines=$(cat $1 | wc -l )
if [[ $nlines -eq 0 ]]
then 
echo the file has 0 lines
elif [[ $nlines -eq 1 ]]
then echo the file has 1 line
elif [[ $nlines -gt 1 ]]
then echo the file has $nlines lines
fi
