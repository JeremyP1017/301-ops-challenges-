#!/bin/bash

# Prompt user for input directory path
read -p "Enter the directory path: " dir_path

# Prompt user for input permissions number
read -p 777 permissions

# Navigate to the directory input by the user
cd $dir_path

# Change all files inside it to the input setting
chmod -R $permissions *

# Print the directory contents and new permissions settings of everything in the directory
echo "Directory contents and new permissions settings:"
ls -l $dir_path

This script first prompts the user for the directory path and permissions number using the read command.
then navigates to the directory using the cd command and changes the permissions of all files inside it using the chmod command. 
Finally, it prints the directory contents and the new permissions settings using the ls command with the -l flag to display detailed information about each file in the directory.

sources:google,chatgrp