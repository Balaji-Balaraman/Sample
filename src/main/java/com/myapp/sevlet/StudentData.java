package com.myapp.sevlet;

import java.util.ArrayList;
import java.util.List;

public class StudentData
{
    public static List<Student1> getStudents1(){
        // create empty list
        List <Student1> student1s=new ArrayList<>();
        //add sample data
        student1s.add(new Student1("Mary","cob","mary@gmail.com"));
        student1s.add(new Student1("Raj","Kumar","raj@gmail.com"));
        student1s.add(new Student1("Jaya","Anand","jaya@gmail.com"));
        student1s.add(new Student1("Jeswin","Bro","jeswin@gmail.com"));
        //return list
        return student1s;
    }
}
