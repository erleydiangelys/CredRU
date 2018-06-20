/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author biscoito
 */
public class Conexao {
           
    public Connection getConnection(){
        try {
			String URL = "jdbc:mysql://localhost/credru";
                        String user = "admin";
                        String pass = "admin";
			Class.forName("com.mysql.jdbc.Driver");			
			return DriverManager.getConnection(URL, user, pass);
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
    }
    
    public void close(){
        try {
            getConnection().close();
	} catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
