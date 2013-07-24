#!/bin/bash

# First, get the zip file
cd /home/willy/code/willyhardy/ && wget -O projectmaster.zip -q https://github.com/wjhrdy/bitters/archive/master.zip

# Second, unzip it, if the zip file exists
if [ -f /home/willy/code/willyhardy/projectmaster.zip ]; then
      # Unzip the zip file
      unzip -q /home/willy/code/willyhardy/projectmaster.zip

      # Delete zip file
      rm /home/willy/code/willyhardy/projectmaster.zip

      # Rename project directory to desired name
      mv Project-master willyhardy.com

      # Delete current directory
      rm -rf /home/willy/code/willyhardy/bitters

      # Replace with new files
      mv willyhardy.com /home/willy/code/willyhardy/bitters

      # Perhaps call any other scripts you need to rebuild assets here
      # or set owner/permissions
      # or confirm that the old site was replaced correctly
fi
