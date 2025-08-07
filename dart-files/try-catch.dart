void main(){
    try {
        throwError();
      }
    catch(e){
        print("Error: $e");
      }
    finally{
        print("Test Finally");
      }

  }


int throwError(){
    return 10 ~/0;
  }
