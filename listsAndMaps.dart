void main(List<String> args) {
  
  print("-----------------Lists-------------------");
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
  print("\n-----------------Maps-------------------");

  var epicMap = {"Key1":456, "Key2":"SomeValue"};

  // Had to convert the map into a String because it won't read them as one line
  print("\n" + epicMap.toString());
  print("This is the contents of Key2: " + epicMap["Key2"]);

  var image = {
    "tags" : "US president",
    "url" : "www.stockphotos.com",
    "resolution" : "1920x1080p"
  };

  print("\n" + image.toString());
  print("Source of image: " + image["url"]);
}