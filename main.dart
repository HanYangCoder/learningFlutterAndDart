void main(){

  var myNumber = 25;  // this is how to declare a variable
  var newNumber = 50;
  var numbNumberNumbest = 100;

  // Dart automatically determines the data type of the variable
  var name = "Columbus"; // String
  var letter = 'F'; // Still a string
  var year = 2020; // Integer
  var temperature = 38.5; // Double
  

  // this is how to print a string
  print("Hello World!\nThis is a new line.");
  
  // this is how to print a variable
  print("Your number is $myNumber");

  // you can also print a number like this, always add a .toString() method
  print("The biggest number here is " + numbNumberNumbest.toString());

  // passing a variable to another function
  printMyNewNumber(newNumber);
}

printMyNewNumber(int myNewNumber){
  print("This is my new number: $myNewNumber");
}