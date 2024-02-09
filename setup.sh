#!/bin/bash

# Prompt the user for the token string and store it in a variable
echo -n "Enter your token string to be stored under your SSH folder: "
read token
echo "Token read-in as: $token"
echo ""

# Prompt the user for repo name. It will be used to create the filename reference for future permissions requests.
printf "The Repository Token will be stored under your SSH folder in a file using your repository name.\nYou may use it for future permission requests by referencing it in the following manner:\n\t\$(cat ~/.ssh/<repo>_token)"
echo ""
echo -n "Enter your repository name: "
read repo
echo ""

# Create token file
echo "$token" > ~/.ssh/"$repo"_token

echo -n "Enter your Github username:"
read username
echo ""

printf "Token created successfully.\nTo clone a repository using the token:\n\tgit clone https://$(cat ~/.ssh/${repo}_token)@github.com/${username}/${repo}.git"
echo ""
