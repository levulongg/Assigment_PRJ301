/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author sneezes
 */
public class StudentDAO extends DBContext {

    public ArrayList<Student> getAllStudent(String groupcode) {
        ArrayList<Student> alist = new ArrayList<>();
        String sql = "select s.* , g.* from Student s, [Group] g, Enroll e\n"
                + "  where s.SID = e.SID and g.GroupID = e.GroupID and g.GroupCode like ?";
        try {
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1,"%" + groupcode + "%");
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getString(5));
                alist.add(s);
            }
        } catch (Exception e) {
        }
        return alist;
    }
    public static void main(String[] args) {
        StudentDAO StudentDAO = new StudentDAO();
        System.out.println(StudentDAO.getAllStudent("SE1467"));
    }
}
