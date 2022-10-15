All the reserved words of ruby:

- **ENCODING** : The script encoding of the current file.
- **LINE** : The line number of this keyword in the current file.
- **FILE** : The path to the current file.
- BEGIN : Runs before any other code in the current file.
- END : Runs after any other code in the current file.
- alias : Creates an alias between two methods (and other things).
- and : Short-circuit Boolean and with lower precedence than &&
- begin : Starts an exception handling block.
- break : Leaves a block early.
- case : Starts a case expression.
- class : Creates or opens a class.
- def : Defines a method.
- defined? : Returns a string describing its argument.
- do : Starts a block.
- else : The unhandled condition in case, if and unless expressions.
- elsif : An alternate condition for an if expression.
- end : The end of a syntax block. Used by classes, modules, methods, exception handling and control expressions.
- ensure : Starts a section of code that is always run when an exception is raised.
- false : Boolean false.
- for : A loop that is similar to using the each method.
- if : Used for if and modifier if expressions.
- in : Used to separate the iterable object and iterator variable in a for loop.
- module : Creates or opens a module.
- next : Skips the rest of the block.
- nil : A false value usually indicating “no value” or “unknown”.
- not : Inverts the following boolean expression. Has a lower precedence than !
- or : Boolean or with lower precedence than ||
- redo : Restarts execution in the current block.
- rescue : Starts an exception section of code in a begin block.
- retry : Retries an exception block.
- return : Exits a method.
- self : The object the current method is attached to.
- super : Calls the current method in a superclass.
- then : Indicates the end of conditional blocks in control structures.
- true : Boolean true.
- undef : Prevents a class or module from responding to a method call.
- unless : Used for unless and modifier unless expressions.
- until : Creates a loop that executes until the condition is true.
- when : A condition in a case expression.
- while : Creates a loop that executes while the condition is true.
- yield : Starts execution of the block sent to the current method.

Principles of Object-Oriented Programming (Software Design Patterns)

1. Abstraction
   The idea of representing significant details and hiding details of functionality is called data abstraction. The interface and the implementation are isolated by this programming technique. Abstraction is trying to minimize information so that the developer can concentrate on a few ideas at a time.
   Data Abstraction in modules: In Ruby, Modules are defined as a set of methods, classes, and constants together.
   Data Abstraction in Classes: we can use classes to perform data abstraction in ruby. The class allows us to group information and methods using access specifiers (private, protected, public). The Class will determine which information should be visible and which is not.
   Data Abstraction using Access Control: There are three levels of access control in Ruby (private, protected, public). These are the most important implementation of data abstraction in ruby. For Example-

- Members who have been declared public in a class can be accessed from anywhere in the program.
- Members declared to be private in a class can only be accessed from within the class. They are not allowed to access any part of the code outside the class.

2. Encapsulation
   Encapsulation is defined as the wrapping up of data under a single unit. It is the mechanism that binds together code and the data it manipulates. In a different way, encapsulation is a protective shield that prevents the data from being accessed by the code outside this shield.

- Technically in encapsulation, the variables or data of a class are hidden from any other class and can be accessed only through any member function of own class in which they are declared.
- Encapsulation can be achieved by declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.
  Advantages of Encapsulation:
- Data Hiding: The user will have no idea about the inner implementation of the class. It will not be visible to the user that how the class is storing values in the variables. He only knows that we are passing the values to a setter method and variables are getting initialized with that value.
- Reusability: Encapsulation also improves the re-usability and easy to change with new requirements.
- Testing code is easy: Encapsulated code is easy to test for unit testing.

3. Inheritance
   Inheritance is the property of objects to generate their children. A child object automatically inherits all fields and methods from the parent, can add new fields to objects and replace (override) parent methods or supplement them.
   The principle of inheritance solves the problem of modifying the properties of an object and makes OOP as a whole exceptionally flexible. When working with objects, a programmer usually selects an object that is closest in its properties to solving a particular problem, and creates one or more descendants from it, which “can” do what is not implemented in the parent.
   The consistent implementation of the "inherit and change" principle fits well with the phased approach to the development of large software projects and in many ways stimulates such an approach.

4. Polymorphism
   In Polymorphism, classes have different functionality but they share common interference. The concept of polymorphism can be studied under few sub categories.

- Polymorphism using Inheritance. Inheritance is a property where a child class inherits the properties and methods of a parent class. One can easily implement polymorphism using inheritance.
- Polymorphism using Duck-Typing. Duck Typing is nothing but working on the idea of what an object can do rather than what it actually is. Or, what operations could be performed on the object rather than the class of the object.
