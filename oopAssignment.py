# Creating a class

class Person:
    def __init__(self, Name, Age, Gender):
        self.Name = Name
        self.Age = Age
        self.Gender = Gender
         
        
     # Creating a method to call the class
    def Introduce (self): 
        return f"My name is {self.Name}. I am {self.Age} years old and I am  a {self.Gender}"
        
       
 
# Creating an instance of the class and introducing the method
person1 = Person("Oscar Nwachukwu", 34, "Male") 
person2 = Person("Ekemini Williams", 30, "Female")
print(person1.Introduce())
print(person2.Introduce())
    
    
    