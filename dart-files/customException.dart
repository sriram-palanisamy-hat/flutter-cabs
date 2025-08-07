class CustomFrameWorkException implements Exception{
    final String message;
    CustomFrameWorkException(this.message);
    @override
    String toString() => "MyError $message";
  }

void main(){
      
     try {
      throw CustomFrameWorkException("nextjs");
      }
      on CustomFrameWorkException catch(e){
          print(e);
        }
    catch(e){
        print("Random Error");
      }

  }  
