void main(List<String> args) {
  
  // a normal fixed-size list and printed out using a for-loop
  var myList = new List(5);
  myList[0] = "Dog";
  myList[1] = "Cat"; 
  myList[2] = "Frog";
  myList[3] = "Alien";
  myList[4] = "Zombie";

  for(int i=0; i<myList.length; i++)
  {
    print(myList[i]);
  }

  // an example of a growable list 
  var growingList = new List();

  growingList.add("USA");
  growingList.add("UK");
  growingList.add("China");
  
  print("\nCountries with COVID-19 vaccine in year 1");
  for(int i=0; i<growingList.length; i++)
  {
    var j = i+1;
    print("$j. " + growingList[i]);
  }

  growingList.add("Russia");
  growingList.add("Canada");

  print("\nCountries with COVID-19 vaccine in year 2");
  for(int i=0; i<growingList.length; i++)
  {
    var j = i+1;
    print("$j. " + growingList[i]);
  }

  
}