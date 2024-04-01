# File Creation
try:
    # Creating a new text file named "my_file.txt" in write mode ('w')
    with open("my_file.txt", "w") as file:
        # Writing at least three lines of text to the file
        file.write("This is line 1\n")
        file.write("12345\n")
        file.write("Another line with text and numbers: 789\n")
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied.")
else:
    print("File created successfully.")

# File Reading and Display
try:
    # Reading the contents of "my_file.txt"
    with open("my_file.txt", "r") as file:
        # Displaying the contents on the console
        print("Contents of my_file.txt:")
        print(file.read())
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied.")

# File Appending
try:
    # Opening "my_file.txt" in append mode ('a')
    with open("my_file.txt", "a") as file:
        # Appending three additional lines of text to the existing content
        file.write("This is line 4\n")
        file.write("Line 5 with numbers: 67890\n")
        file.write("Appending another line\n")
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied.")
else:
    print("Content appended successfully.")

# Error Handling
try:
    # Attempting to open a non-existent file to trigger FileNotFoundError
    with open("non_existent_file.txt", "r") as file:
        print(file.read())
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied.")
finally:
    print("Error handling completed.")
