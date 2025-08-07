void main(){
     List<String> frameworks=["nextjs","remix","tanstack","lemon"];
     for (var framework in frameworks){
          print(pickDeveloper(framework));

      }
  }

String pickDeveloper(String framework){
  String maintainer='';
  if(framework=="nextjs"){
       maintainer="vercel";
    }
    else if(framework=="remix"){
        maintainer ="shopify";
      }

    else if (framework=="tanstack"){
        maintainer="tanner";

      }
    else if(framework=="lemon"){
        maintainer="deno";
      }



      return maintainer;



  }
