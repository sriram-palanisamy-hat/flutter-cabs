void main(){

String val=text(name:"Sriram",age:23);
print(val);
String val2=text(name:"Prasanth",age:24,randomtext:"Dragon Slayer");
print(val2);

  }

int age(){
    return 23;
  }
String text({required String name,required num age,String? randomtext }){
    return "Name is $name and his age is $age ${randomtext!=null?'$randomtext':''}";
  }

