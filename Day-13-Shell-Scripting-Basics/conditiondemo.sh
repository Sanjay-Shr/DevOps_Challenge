read -p "What's for dinner?" food

if [[ $food == "Pizza" ]];
then 
	echo "Pizza is good"
elif [[ $food == "Salad" ]];
then
	echo "Salad is good"
else 
	echo "Have anything"
fi	
