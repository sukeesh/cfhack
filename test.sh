while true
do
python test.py > in
g++ a.cpp
./a.out <in> victim
g++ suk.cpp
./a.out <in> sukeesh
diff --brief <(sort victim) <(sort sukeesh) >/dev/null
comp_value=$?
if [ $comp_value -eq 1 ]
then
	echo " "
	echo "--------- HACK! --------"
	echo " Input : "
	cat ./in
	echo " Expected : "
	cat ./sukeesh
	printf "\n"
	echo " Recieved : "
	cat ./victim
	printf "\n"
	break
else
	echo " "
	echo "----------Same----------"
	echo " Input : "
	cat ./in
	echo " Expected : "
	cat ./sukeesh
	printf "\n"
	echo " Recieved : "
	cat ./victim
	printf "\n"
fi
done
