#marks= 80
#result= ""
#if marks<30:
 #   result= "Failed"
#elif marks>75:
 #   result = "Passed with distinction"
#else:
 #   result = "Passed"
  #  print( result)

#def checkVowel(n):
 #match n:
  #      case 'a': return "Vowel alphabet"
   #     case 'e': return "Vowel alphabet"
    #    case 'i': return "Vowel alphabet"
     #   case 'o': return "Vowel alphabet"
      #  case 'u': return "Vowel alphabet"
        
       # case _: return "Simple alphabet"
#print (checkVowel('a'))
#print (checkVowel('m'))
#print (checkVowel('o'))
#print (checkVowel ('z'))
#print (checkVowel ("e"))
    
    
    
#words = ["one", "two", "three", "four"]
#for x in words:
    #print(x)
    
#i = 1
#while i<10:
   # print(i)
    #i+= 2
    
#x= 0

#while x < 10:
# print("x", x)
  #  if x== 5:
   #     print("Breaking...")
  ##      break
    #x += 1
   # print("End")
    
#j= 1
#while j< 6:
 #   print(j)
  #  j +=1
  
#bike = 'Ninja'
#if bike == 'Hero':
 #   print("bike is Hero")
#elif bike == 'Suzuki':
 #   print("bike is Suzuki")
#elif bike == "Yamaha":
 #   print ("bike is Yamaha")
#else:
 #   print ("Please choose the correct answer")
    
    
    
#
#def add_nums(a,b):
 #   answer = a + b
  #  return answer
#print(add_nums(2,15))
#

#def add_nums (a, b):
 #   answer = a + b
  #  def double_it ():
   #     double = answer * 2
    #    print (double)
    #double_it()
    #return answer
#print (add_nums (2, 15)) 
              

#from networkx import global_parameters


#global_var = 15

#def add_nums (a, b):
 #   total = a + b
  #  print("Global_var in outer function: ", global_var)
   # def double_it():
    #     double = total * 2
     #    print("Global_var in inner function: ", global_var)
         #print("Double:", double)
  #  double_it()
   # return total
#add_nums(15,5)


    

  #Lambda function declaration
  
#snack = lambda : print("Njugu")

# Calling the lambda 
#snack()



# Using the def and return function

#def num_square(num):
 #   return num ** 2 #calculating square

# calling out num_square function wiyh argument setvto num=8

#print("Square of num is:  ", num_square(8))


# Re-writing using our lambda function knowledge, this is how it would look:

#num_square = lambda num : num ** 2

# calling the lambda inside print()

#print("Square of num is: ", num_square(8))

    
# Determining if a string is a palindrome
    
# A normal python function to determine a palindrome of a given string:
    
#def IsPalindrome(string):
 #   if ( string == string [::-1]):
  #      return "A Palindrome."
   # else:
    #    return "Not a Palindrome."
    
# Enter string input
#string = input("Enter string: ") 

# Call the function and pass inut from the user _ string variable
#print (IsPalindrome(string))  
 
 
# Re-writing the above function using lambda function:
#IsPalindrome = lambda string: " A Palindrome." if string == string#[::-1] else "Not Palindrome."  
#string = input ("Enter string")

# Calling our lambda and passing string argument
#print(IsPalindrome(string))


#R = 500
#print(bin(R), type(R))


#def Is_Power_greater_than_5000 (a, b):
        #Result = a  ** b
        #if (Result> 5000):
         #   return True
        #else:
         #   return  False    

#print(Is_Power_greater_than_5000(a=20, b=10))
#print(Is_Power_greater_than_5000(15,4))


#def Is_Divisible_by_ten (num):
 #   Remainder = num % 10
  #  if (Remainder == 0):
   #     return True
    #else:
     #   return False
    
#print(Is_Divisible_by_ten (33))
#print (Is_Divisible_by_ten (50))   

 
 