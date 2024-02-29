#include <stdio.h>
#include <stdlib.h>

#define MAX_HEIGHT 100
#define MIN_HEIGHT 5
#define MAX_WIDTH 100
#define MIN_WIDTH 5

#define WALL '#'
#define PATH ' '
#define START 'S'
#define EXIT 'E'

//variables for position
int playerRow;
int playerCol;

//variable for storing maze data
char maze[MAX_HEIGHT][MAX_WIDTH];

//Declare functions
int mazeValidation(char *filename);
void displayMaze(char *filename);
int isValidMove(int new_row)
void movePlayer(char direction)






int main(int argc, char *argv[]) {
    // Check for correct number of command-line arguments
    if (argc != 2) {
        printf("Usage: maze <filename>");
        return 1;
    }
    
    mazeValidation(argv[1]);

    //create two nested for loops to get the players coordinates (starting position) and store in playerRow and playerCol

    //make a while loop that gets inputs from user until the game is over.
    // the while loop includes a switch statement that performs a certain code or function depending on the user's input (W,A,S,D,M,or other)
    // the while loop also has a default case where it prints an error (Error: Invalid input ) if the user chooses a wrong input.
    //for the movement keys, each key will call the movePlayer function if pressed and a directoin will be entered as a parameter depending on the input
    //the displayMaze function will be called if the input is m or M


}

int mazeValidation(char *filename){
    // Open the maze file if not empty
    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        printf("Error: File is empty");
        return 0;
    }

    //create variable for width
    int width;
    //use fscanf to read an integer from the file. The fscanf should be in an if statement so that if it doesn't get
    //an integer, it prints an error and returns 0.
    //the error here should be (Error: Invalid maze format)

    //create a variable for line and a variable for height
    char line[MAX_WIDTH + 2]; // +2 to account for new line and null terminator
    int height = 0;
    // use a while fgets statement to scan through the lines and compare the string length of each line and the width that we got before.
    // if they are not the same print error (Error: Invalid maze format) and return 0
    //increment 1 to the height each time a row gets scanned

    //use if statement to check wether the height and width are within the allowed range. print error (Error: Invalid maze format) and return 0 if not

    //make two nested for loops that scans all of the characters in the maze and checks if all of the characters (#, " ", S, E) are included.
    // if not print error (Error: Invalid maze format) and return 0.

    //use for loop and fscanf to store maze data in maze array.

    void displayMaze(char *filename){
        //open file
        //scan the maze with nested for loops and print it out
        //in addition to the maze being printed, print "You are here." for the test script
    }

    int isValidMove(int newRow, int newCol){
        //if statement to check if the new position is a valid move or not
        //return 1 if true and 0 if false
        // print "Error: Invalid movement" if false
    }

    void movePlayer(char direction){
        //create 2 variables which are newRow and newCol and make them equal starting position
        //use switch statement to change the position depending on the direction that was entered
        //check if the newRow and newCol are valid positions. If they are, set player position to new position
        //if the position of the player is equal to EXIT, then print victory message "Congratulations! You win"

    }

}