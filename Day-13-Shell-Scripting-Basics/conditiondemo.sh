function is_food() {
read -p "$1 for dinner?" food

if [[ $food == "Pizza" ]];
then 
	echo "Pizza is good"
elif [[ $food == "Salad" ]];
then
	echo "Salad is good"
else 
	echo "Have $1"
fi	
}

is_food "Bottle"
