#!/bin/bash

for File in *;do 
   if [ -f "$File" ]; then
          echo "File: $File"

	  size=$(du -sh "$File" | awk '{print $1}')

	  echo "Size: $size"

	  permission=$(stat -c "%A" "$File")

	  echo "Permission: $permission"

	  userid=$(stat -c "%u" "$File")
	  username=$(stat -c "%U" "$File")

          echo "User-Id: $userid"
          echo "Username: $username"

	  echo "--------------------------------"

   fi
done
