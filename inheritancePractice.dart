void main(List<String> args) {

  DateTime mySpacecraftLaunchDate = new DateTime(1995, 04, 22);
  Spacecraft mySpacecraft = new Spacecraft("International Space Station", mySpacecraftLaunchDate);

  mySpacecraft.showSpacecraftData();
}

class Spacecraft{

  String name;
  DateTime launchDate;
  double totalNetWeight;

  Spacecraft(String name, DateTime launchDate){
    this.name = name;
    this.launchDate = launchDate;
  }

  Spacecraft.unlaunched(String name){
    this.name = name;
    this.launchDate = null;
  }

  void setName(String name){
    this.name = name;
  }

  void setLaunchDate(DateTime launchDate){
    this.launchDate = launchDate;
  }

  String getName(){
    return name;
  }

  getLaunchDate(){
    return launchDate;
  }

  int getLaunchYear(){
    return launchDate?.year;
  }

  void showSpacecraftData(){

    print("Spacecraft: $name");
    if(launchDate != null)
    {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;

      print("Launched: ${getLaunchYear()} ($years years ago)");
    }
    else{
      print("Unlaunched");;
    }
  }
}