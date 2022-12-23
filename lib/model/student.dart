import 'package:batch_student_starter/model/batch.dart';
import 'package:objectbox/objectbox.dart';

//entity = table
@Entity()
class Student {
  @Id(assignable: true) //auto increment
  int stdId;
  String fname;
  String lname;
  String username;
  String password;

  final batch = ToOne<Batch>();

  Student(this.fname, this.lname, this.username, this.password,
      {this.stdId = 0}); //student constructer
  
}
