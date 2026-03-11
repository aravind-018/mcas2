#!/bin/bash
echo "show all users login "
who
echo "count of all login name "
who | wc -l


echo "print 3 coulmns in a home directory"
ls -l | cut -c 17-24,39-50,56-

echo "list of below priority jobs"
ps -al | cut -c 16-19,70-