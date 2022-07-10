/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author sneezes
 */
public class Room {
    private int id;
    private String Code , campus , Capasity ;

    public Room(int id, String Code, String campus, String Capasity) {
        this.id = id;
        this.Code = Code;
        this.campus = campus;
        this.Capasity = Capasity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return Code;
    }

    public void setCode(String Code) {
        this.Code = Code;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public String getCapasity() {
        return Capasity;
    }

    public void setCapasity(String Capasity) {
        this.Capasity = Capasity;
    }
    
}
