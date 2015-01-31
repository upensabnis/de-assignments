package entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.3.2.v20111125-r10461", date="2015-01-30T20:49:34")
@StaticMetamodel(Student.class)
public class Student_ { 

    public static volatile SingularAttribute<Student, Date> stdbirth;
    public static volatile SingularAttribute<Student, String> stdcontact;
    public static volatile SingularAttribute<Student, String> stdname;
    public static volatile SingularAttribute<Student, Integer> stdid;
    public static volatile SingularAttribute<Student, String> stdemail;
    public static volatile SingularAttribute<Student, String> stdtwitter;

}