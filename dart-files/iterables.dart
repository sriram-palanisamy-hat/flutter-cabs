void main(){
    List<String> frameworks=["nextjs","remix","expo","tanstack","remix"];
    print("frameworks - $frameworks");
    Set<String> uniqueFrameworks=frameworks.toSet();
    print("Unique Frameworks - $uniqueFrameworks");
    Map<String,String> creatorMap={
        "nextjs":"vercel",
        "remix":"ryan florence",
        "expo":"evan baecon",
        "tanstack":"tanner lesely"
      };
     for (var framework in uniqueFrameworks){
        print("$framework was created by ${creatorMap[framework]}");
      }
      List<String> uppercasedFrameworks=uniqueFrameworks.map((iterm)=>iterm.toUpperCase()).toList();
      print("uppercasedFrameworks - $uppercasedFrameworks");
      var duplicateList=frameworks.where((iterm)=>iterm=="remix").toList();
      print(duplicateList);
      String remix=frameworks.firstWhere((iterm)=>iterm=="remix");
      print(remix);
  }
