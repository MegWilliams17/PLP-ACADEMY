

# File Creation
try:
    with open("my_file.txt", "w") as file:
        file.write("This is a line to test the functionality of the 'write' command.\n")
        file.write("123456789098765432Alpha\n")
        file.write("Another line  here to place emphasis.\n")
    print("File created and initial content written successfully.")
except PermissionError:
    print("Permission denied. Cannot create file.")
except Exception as e:
    print("An error occurred:", e)
finally:
    print("File creation process completed.\n")

# File Reading and Display
try:
    with open("my_file.txt", "r") as file:
        print("Contents of my_file.txt:")
        for line in file:
            print(line.strip())
    print("\nFile read and displayed successfully.")
except FileNotFoundError:
    print("File not found. Cannot read.")
except Exception as e:
    print("An error occurred:", e)
finally:
    print("File reading process completed.\n")

# File Appending
try:
    with open("my_file.txt", "a") as file:
        file.write("An appended line to show the clarity of line 1.\n")
        file.write("987654567\n")
        file.write("Another line for appending.\n")
    print("Content appended to my_file.txt successfully.")
except PermissionError:
    print("Permission denied. Cannot append to file.")
except Exception as e:
    print("An error occurred:", e)
finally:
    print("File appending process completed.\n")