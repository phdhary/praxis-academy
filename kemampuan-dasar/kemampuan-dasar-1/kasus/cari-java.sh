# dir=$(find $1 -name "*.java")
# echo "Ada file java pada direktori $dir"

find $1 -name "*.java" | 
while read line
do
	echo "Ada file java pada direktori $line"
done
