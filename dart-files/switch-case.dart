void main(){

     List<String> frameworks=["nextjs","remix","tanstack","lemon"];
     for (var framework in frameworks){
        printDeveloper(framework);
      }
  }



  void printDeveloper(String framework){
      switch (framework) {
        case "nextjs":
              print(framework);
              continue nextCase;
        nextCase:      
        case "nextjs":
          print("Next Second Handler");
          break;
        case "remix":
            print("Ryan Florence");
            break;
         case "tanstack":
             print("Tanner Lisely");
             break;
         case "expo":
              print("Evan Beacon");
              break;
        default:
              print("Unkown Author");
      }
    }
