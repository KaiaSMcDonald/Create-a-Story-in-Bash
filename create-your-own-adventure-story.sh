#!/bin/bash

#Print a statement that welcomes the user to the friends roadtrip 

echo "Welcome to the friends roadtrip filled with a lot of exictement!"

#List who will be joining the friends roadtrip

friends=("Destiny" "Marcus" "David" "Aliyah" "Sabrina")

echo "Joining you on this road trip are your friends:"

for friends in "${friends[@]}"

do 

echo "$friends"

done 
#Define a list of songs 

songs=("Favorite Girl" "Mamushi" "Love Me Je Je" "After Hours")

#Prompt user to pick a song

echo "Pick a song to start the road trip:"

# Display the list of songs
for i in "${!songs[@]}"; do
    echo "$((i + 1)). ${songs[$i]}"
done

# Prompt user to pick a song by number
read -p "Enter the number of your choice: " choice

# Validate the user's choice
if [[ $choice -ge 1 && $choice -le ${#songs[@]} ]]; then
    selected_song="${songs[$((choice - 1))]}"
    echo "Great choice! Playing '$selected_song' for your road trip."
else
    echo "Invalid choice. Please select a number between 1 and ${#songs[@]}."
fi 



echo "The friends roadtrip has offically began! What will be the first stop?"

# List of available stops
stops=("Beach" "Mountain" "City" "Countryside")

while true; do
    # Display the list of stops
    echo "Please choose a place to stop from the following list:"
    for i in "${!stops[@]}"; do
        echo "$((i + 1)). ${stops[$i]}"
    done

    # Prompt user to pick a stop by number
    read -p "Enter the number of your choice: " choice

    # Validate the user's choice
    if [[ $choice -ge 1 && $choice -le ${#stops[@]} ]]; then
        selected_stop="${stops[$((choice - 1))]}"
        echo "Great choice! The first stop will be at the $selected_stop."
        break  # Exit the loop since a valid choice has been made
    else
        echo "Invalid choice. Please select a number between 1 and ${#stops[@]}."
    fi
done

echo "Sabrina has lost her phone!!! What will happen next?"

while true; do
    # Display the choices
    echo "Please choose one of the following options:"
    echo "1. Retrace Sabrina's steps and look for the phone."
    echo "2. Use a phone tracking app to locate the phone."

    # Prompt user to make a choice
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    if [ "$choice" -eq 1 ]; then
        echo "You have chosen to retrace Sabrina's steps and look for the phone."
        echo "This will take longer and cause delays in the road trip."
        # Insert additional logic here if needed
        delay_message="Expect some delays in the road trip due to the search."
        break  # Exit the loop after a valid choice
    elif [ "$choice" -eq 2 ]; then
        echo "You have chosen to use a phone tracking app to locate the phone."
        # Insert additional logic here if needed
        delay_message="No additional delays expected."
        break  # Exit the loop after a valid choice
    else
        echo "Invalid choice. Please select 1 or 2."
    fi
done

# Output the delay message
echo "$delay_message" 


echo "A good Samaritan has returned Sabrina's phone. What should the group do to thank them?"

while true; do
    # Display the choices
    echo "Please choose one of the following options:"
    echo "1. Give them a small gift as a token of appreciation."
    echo "2. Write a thank you note and offer to buy them a meal."

    # Prompt user to make a choice
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    if [ "$choice" -eq 1 ]; then
        echo "You have chosen to give them a small gift as a token of appreciation."
        # Insert additional logic here if needed
        thank_you_message="A small gift will be given to the good Samaritan."
        break  # Exit the loop after a valid choice
    elif [ "$choice" -eq 2 ]; then
        echo "You have chosen to write a thank you note and offer to buy them a meal."
        # Insert additional logic here if needed
        thank_you_message="A thank you note will be written and an offer for a meal will be extended."
        break  # Exit the loop after a valid choice
    else
        echo "Invalid choice. Please select 1 or 2."
    fi
done

# Output the thank you message
echo "$thank_you_message"


echo "Everyone on the road trip is getting hungry. So y'all stop at a gas station to get snacks."

# List of available snacks
snacks=("Chips" "Chocolate" "Nuts" "Granola Bar" "Cookies")

while true; do
    # Display the list of snacks
    echo "Please choose a snack from the following options:"
    for i in "${!snacks[@]}"; do
        echo "$((i + 1)). ${snacks[$i]}"
    done

    # Prompt user to pick a snack by number
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    if [[ $choice -ge 1 && $choice -le ${#snacks[@]} ]]; then
        selected_snack="${snacks[$((choice - 1))]}"
        echo "You have chosen $selected_snack. Enjoy your snack!"
        break  # Exit the loop after a valid choice
    else
        echo "Invalid choice. Please select a number between 1 and ${#snacks[@]}."
    fi
done

echo "You've arrived at the amusement park! Time to pick a ride."

# List of available rides
rides=("Roller Coaster" "Ferris Wheel" "Swings" "Bumper Cars")

while true; do
    # Display the list of rides
    echo "Please choose a ride from the following options:"
    for i in "${!rides[@]}"; do
        echo "$((i + 1)). ${rides[$i]}"
    done

    # Prompt user to pick a ride by number
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    if [[ $choice -ge 1 && $choice -le ${#rides[@]} ]]; then
        selected_ride="${rides[$((choice - 1))]}"
        echo "You have chosen to go on the $selected_ride. Enjoy the ride!"
        break  # Exit the loop after a valid choice
    else
        echo "Invalid choice. Please select a number between 1 and ${#rides[@]}."
    fi
done

echo "After leaving the amusement park and driving a few miles, the car gets a flat tire."

while true; do
    # Display the choices
    echo "Please choose one of the following options to handle the flat tire:"
    echo "1. Change the tire yourself using the spare tire."
    echo "2. Call roadside assistance for help."

    # Prompt user to make a choice
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    if [ "$choice" -eq 1 ]; then
        echo "You have chosen to change the tire yourself using the spare tire."
        # Insert additional logic here if needed
        resolution_message="You will change the tire yourself. This may take some time but you'll be back on the road soon."
        break  # Exit the loop after a valid choice
    elif [ "$choice" -eq 2 ]; then
        echo "You have chosen to call roadside assistance for help."
        # Insert additional logic here if needed
        resolution_message="Roadside assistance has been called. Help is on the way and should arrive shortly."
        break  # Exit the loop after a valid choice
    else
        echo "Invalid choice. Please select 1 or 2."
    fi
done

# Output the resolution message
echo "$resolution_message"



echo "You’ve stopped at the hotel to get some rest. Some people invite you to a pool party."

while true; do
    # Display the choices
    echo "Please choose one of the following options:"
    echo "1. Go to the pool party with the new friends."
    echo "2. Stay at the hotel and relax."

    # Prompt user to make a choice
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    if [ "$choice" -eq 1 ]; then
        echo "You have chosen to go to the pool party with the new friends."
        # Insert additional logic here if needed
        activity_message="You will enjoy the pool party with the new friends. Have a great time!"
        break  # Exit the loop after a valid choice
    elif [ "$choice" -eq 2 ]; then
        echo "You have chosen to stay at the hotel and relax."
        # Insert additional logic here if needed
        activity_message="You will stay at the hotel and relax. However, everyone gets bored and end up having a pillow fight."
        break  # Exit the loop after a valid choice
    else
        echo "Invalid choice. Please select 1 or 2."
    fi
done

# Output the activity message
echo "$activity_message"

echo "The group has left the hotel and is driving to their destination in Texas."

while true; do
    # Display the choices
    echo "How do you feel about the road trip? Please choose one of the following options:"
    echo "1. It was an amazing adventure with lots of fun."
    echo "2. It was a good trip, but there were some challenges along the way."
    echo "3. It was a bit stressful and had some unexpected issues."
    echo "4. It wasn't enjoyable and I'd rather have stayed home."

    # Prompt user to make a choice
    read -p "Enter the number of your choice: " choice

    # Handle the user's choice
    case "$choice" in
        1)
            feedback_message="It was an amazing adventure with lots of fun. Glad you enjoyed it!"
            ;;
        2)
            feedback_message="It was a good trip, but there were some challenges along the way. A memorable experience!"
            ;;
        3)
            feedback_message="It was a bit stressful and had some unexpected issues. Hopefully, it becomes a learning experience."
            ;;
        4)
            feedback_message="It wasn't enjoyable and you'd rather have stayed home. Hopefully, the next trip will be better."
            ;;
        *)
            echo "Invalid choice. Please select a number between 1 and 4."
            continue
            ;;
    esac

    # Exit the loop after a valid choice
    break
done

# Output the feedback message
echo "$feedback_message"
