# Defining the performance function
def peformance (Result):
    if Result >= 80:
        return  "Distinction"
    elif Result >= 70:
        return "Excellence"
    elif Result >= 60 and Result < 70:
        return  "Credit"
    elif Result >= 40  and Result <= 50:
        return "Fair"
    else:
        return "Fail"


# Requesting input from the user
user_result = float(input("Enter the students score: "))

Performance = peformance(user_result)
print(f"Student's performance: {Performance}")


    
    
    
''' A Simple calculator for Addition of two numbers, Multiplication, Subtraction and Division'''

def add_nums (a,b):
    answer = a + b
    return answer

 
 
 
#  Subtracting numbers


def subtract_numbers(numbers):
    answer = numbers[0]
    for num in numbers[1:]:
        answer -= num
    return answer
    
def multiply_numbers(numbers):
    result = 1
    for num in numbers:
        result *= num
    return result 
    
def divide_numbers(numbers):
    result = numbers[0]
    for num in numbers[1:]:
        try:
            result /= num
        except ZeroDivisionError:
            return "Error: Division by zero."
    return result
    

# Conditioning the operations
def calculate(operation, numbers):
    if operation == 'subtract':
        return subtract_numbers(numbers)
    elif operation == 'add':
        return add_nums(*numbers)
    elif operation == 'multiply':
        return multiply_numbers(numbers)
    elif operation == 'divide':
        return divide_numbers(numbers)
    else:
        return None
    
    
# Getting user number input
operation = input("Enter operation (subtract, add, multiply, divide): ")
numbers =[]
while True:
    num = input("Enter a number (or 'calculate' to finish): ")
    if num.lower() == 'calculate':
        break
    numbers.append(float(num))
    
#calling the function 
result = calculate(operation, numbers)
if result is not None:
    print("The result is:", result)
else:
    print("Invalid operation.")




''' A discount calculator to determine the final price '''

# Defining the calculate_discount function
def calculate_discount(original_price, discount_percent):
    if discount_percent >= 20:
        discount_amount= (discount_percent/100) * original_price
        final_price = original_price - discount_amount
        return final_price
    else:
        return original_price


# Requesting user input
original_price = float(input("Please enter the price"))
discount_percent = float(input("Please enter the discount percentage"))

final_price = calculate_discount(original_price, discount_percent)


# Printing out the final price
if final_price != original_price:  # Check if a discount was applied
    print(f"The final price after applying the discount is: ${final_price}")
else:
    print(f"No discount applied. The final price remains: ${final_price}")



