/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Instructor;
import model.Student;

/**
 *
 * @author sneezes
 */
public class InstructorDAO extends DBContext{
    public ArrayList<Instructor> getAllInstructor() {
        ArrayList<Instructor> Students = new ArrayList<>();

        try {
            String sql = "SELECT * from Student";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Instructor i = new Instructor(rs.getInt(1), rs.getString(2), rs.getString(3));
                Students.add(i);
            }
        } catch (Exception e) {
        }
        return Students;
    }
}
