#!/usr/bin/sh

# echo "MY first bash script!"

#greeting just to play a bit
USERNAME=$(whoami) #prints pc user
GREET="Good Morning, $USERNAME 😹👍"

#echo prints the greeting
echo $GREET

#sample search: "goose g how to make a cake"
search_google() {
    # this line checks for the parameter that is sent from the IF statement
    # this parameter is just "$1" since all the parameters are sent as one from the IF statement("$*")
    query="$1" 
    echo "Searching on Google for: $query" # prints your query

    query=$(echo "$query" | sed 's/ /+/g') 
    #'sed' replaces("s") all("g") spaces("/ /") with a plus sign ("/+/") since its how all browsers concatenate the string to search 

    start "https://www.google.com/search?q=$query" # searches the link on your default browser
}

# sample search: "goose yt [youtube-search]"
search_youtube() {
    query="$1"
    echo "Searching on youtube for: $query"
    query=$(echo "$query" | sed 's/ /+/g')
    start "https://www.youtube.com/results?search_query=$query"
}


if [ "$1" = "g" ]; then 
    # shift sets the next positional parameter ("$2") to the left positional parameter by one position("$1")
    shift
    #calls the function and passes all the following parameters for the function to receive it as one
    search_google "$*"
elif [ "$1" = "yt" ]; then
    shift
    search_youtube "$*"
else
    echo "Invalid command"
fi