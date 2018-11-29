
#!/bin/bash/

directory="$1" #get the directory with argument $1
string1=$directory

files_name=`ls $1`  #gets the name of the files in that directory

count=0 

for fn in $files_name

do
string2=$fn
dir_files="$string1$string2"

	if [ ! -s $dir_files ] 
	then
	 (( count++ ))
	 rm -rf $dir_files 
	 
	fi

done

echo "$count zero-length files are removed from directory : $1"
