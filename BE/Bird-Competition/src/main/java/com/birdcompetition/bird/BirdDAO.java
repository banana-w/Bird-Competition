/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.birdcompetition.bird;

import com.birdcompetition.util.DBHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.naming.NamingException;

/**
 *
 * @author admin
 */
public class BirdDAO {

    List<BirdDTO> birdList;

    public List<BirdDTO> getBirdList() {
        return birdList;
    }

    public void displayLeaderboard()
            throws SQLException, NamingException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            //1.Make connection
            con = DBHelper.getConnection();
            
            //check 
            if (con != null) {
               
//                2.Creat SQL String 
                String sql = "Select IdBird, NameOfBird, Species, Point, IdMember "
                        + "From Bird";
                //3.Create Statement Object
                stm = con.prepareStatement(sql);

                //4.Exercute Query
                rs = stm.executeQuery();
                //5.Process
                while (rs.next()) {
                    //5.1 map 
                    //5.1.1 get data from Result Set
                    String birdID = rs.getString("IdBird");
                    String name = rs.getString("NameOfBird");
                    String speices = rs.getString("Species");
                    int point = rs.getInt("Point");
                    String ownerId = rs.getString("IdMember");

                    //5.1.2 set properties of DTO
                    BirdDTO dto = new BirdDTO(name, speices, point, speices, ownerId, sql, name, name, point);
                    //5.2 add data to list
                    if (this.birdList == null) {
                        this.birdList = new ArrayList<>();
                    }
//                    this.birdList.add(dto);
                }//end map DB to DTO
//                  sortLeaderboard(birdList);
            }//end connection is available
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
    
    
    public void checkConnect()
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        boolean result = false;

        try {
            con = DBHelper.getConnection();
            if (con != null) {
                System.out.println("vô");
                return;
            }
        } finally {
            if (con != null) {
                con.close();
            }
        }
        System.out.println("cút");;
    }
    
    
    
    void sort(List list) {
        Collections.sort(list, (BirdDTO b1, BirdDTO b2) -> b1.compareTo(b2));
    }
}
