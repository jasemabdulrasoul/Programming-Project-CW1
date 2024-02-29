#!/bin/bash

gcc skeleton.c -o maze

echo -e "Argument Check"

echo -n "Testing no arguments - "
./maze > tmp
if grep -q "Usage: maze <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing 2 arguments - "
./maze x x > tmp
if grep -q "Usage: maze <filename>" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -e "File Handling"

echo -n "Testing empty file - "
./maze Data/empty_maze.txt > tmp
if grep -q "Error: File is empty" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing width or height < 5 - "
./maze Data/width_less5.txt > tmp
if grep -q "Error: Invalid maze format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing width or height > 100 - "
./maze Data/height_more100.txt > tmp
if grep -q "Error: Invalid maze format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing rows not equal in length - "
./maze Data/inconsistent_rows.txt > tmp
if grep -q "Error: Invalid maze format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing columns not equal in length - "
./maze Data/inconsistent_columns.txt > tmp
if grep -q "Error: Invalid maze format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing additional characters - "
./maze Data/add_character.txt > tmp
if grep -q "Error: Invalid maze format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing missing characters - "
./maze Data/missing_character.txt > tmp
if grep -q "Error: Invalid maze format" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -e "Testing Inputs"

echo -n "Testing wrong input - "
echo "J" | ./maze Data/good_maze.txt > tmp
if grep -q "Error: Invalid input" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing hitting a wall - "
./maze data/hit_wall.txt < Input/into_wall.in > tmp
if grep -q "Error: Invalid movement" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing moving off the edge - "
./maze data/edge.txt < Input/off_edge.in > tmp
if grep -q "Error: Invalid movement" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing map - "
echo "m" | ./maze Data/good_maze.txt > tmp
if grep -q "You are here (X)" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -e "Successful Tests"

echo -n "Testing successful maze format - "
./maze data/good_maze.txt > tmp
if grep -q "Maze successfully loaded" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi

echo -n "Testing successful message when reaching E - "
./maze data/good_maze2.txt < Input/solved.in > tmp
if grep -q "Congratulations! You win" tmp;
then
    echo "PASS"
else
    echo "FAIL"
    cat tmp
fi