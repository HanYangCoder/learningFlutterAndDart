void main(List<String> args) {

  DateTime mySpacecraftLaunchDate = new DateTime(1995, 04, 22);
  Spacecraft mySpacecraft = new Spacecraft("International Space Station", mySpacecraftLaunchDate, 100);

  mySpacecraft.showSpacecraftData();
}

class Spacecraft{

  String name;
  DateTime launchDate;
  double totalNetWeight;

  Spacecraft(String name, DateTime launchDate, double totalNetWeight){
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