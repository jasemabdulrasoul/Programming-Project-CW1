Test Plan

1- Argument Check:
 - No arguments
 - 2 arguments

2- File Handling:
 - Empty file
 - Width/height < 5
 - Width/height > 100
 - Rows not in equal length
 - Columns not in equal length
 - Additional characters
 - Less than 4 characters

3- Inputs:
 - Wrong input
 - Moving into wall
 - Moving off the edge

4- Successful:
 - Successful maze format
 - Successful message when reaching "E"

Total tests = 14

* Errors/Messages regarding each test/section:
  - Argument Check:
    - "Usage: maze <filename>"
  - File Handling:
    - "Error: File is empty"
    - "Error: Invalid maze format"
  - Inputs:
     - "Error: Invalid input"
     - "Error: Invalid movement"
     - "You are here."
  - Successful:
     - "Maze successfuly loaded
     - "Congratulations! You win."
