abstract class Failier{
  final String message;

  Failier( this.message);
  
}
class ServerFailier extends Failier{
  ServerFailier(super.message);
}