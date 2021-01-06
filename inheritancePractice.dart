void main(List<String> args) {

  DateTime mySpacecraftLaunchDate = new DateTime(1995, 04, 22);
  Spacecraft mySpacecraft = new Spacecraft.launched("International Space Station", mySpacecraftLaunchDate, 100);

  mySpacecraft.showSpacecraftData();

  print('');

  Rocket myRocket = new Rocket.unlaunched("Endeavor", 105, "Plasma Rocket");
  myRocket.showSpacecraftData();
}

class Spacecraft{

  String name;
  DateTime launchDate;
  double totalNetWeight;

  Spacecraft(){

  }

  Spacecraft.launched(String name, DateTime launchDate, double totalNetWeight){
    this.name = name;
    this.launchDate = launchDate;
    this.totalNetWeight = totalNetWeight;
  }

  Spacecraft.unlaunched(String name, double totalNetWeight){
    this.name = name;
    this.launchDate = null;
    this.totalNetWeight = totalNetWeight;
  }

  void setName(String name){
    this.name = name;
  }

  void setLaunchDate(DateTime launchDate){
    this.launchDate = launchDate;
  }

  void setTotalNetWeight(double totalNetWeight){
    this.totalNetWeight = totalNetWeight;
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

  double getTotalNetWeight(){
    return totalNetWeight;
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
    print("Total Net Weight: ${getTotalNetWeight()} tons");
  }
}

class Rocket extends Spacecraft{

  String name;
  DateTime launchDate;
  double totalNetWeight;
  String rocketType;

  Rocket(){
    
  }

  Rocket.launched(String name, DateTime launchDate, double totalNetWeight, String rocketType){
    this.name = name;
    this.launchDate = launchDate;
    this.totalNetWeight = totalNetWeight;
    this.rocketType = rocketType;
  }

  Rocket.unlaunched(String name, double totalNetWeight, String rocketType){
    this.name = name;
    this.launchDate = null;
    this.totalNetWeight = totalNetWeight;
    this.rocketType = rocketType;
  }

  void setRocketType(String rocketType){
    this.rocketType = rocketType;
  }

  String getRocketType(){
    return rocketType;
  }

  void showSpacecraftData(){

    print("Rocket: $name");
    if(launchDate != null)
    {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;

      print("Launched: ${getLaunchYear()} ($years years ago)");
    }
    else{
      print("Unlaunched");;
    }
    print("Total Net Weight: ${getTotalNetWeight()} tons");
    print("Rocket type: $rocketType");
  }
}