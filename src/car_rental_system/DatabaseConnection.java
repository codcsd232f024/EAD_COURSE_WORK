/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package car_rental_system;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author hwera
 */
public class DatabaseConnection {
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_system", "root", ""); // Update with your DB details
        } catch (Exception e) {
            throw new RuntimeException("Database connection error: " + e.getMessage());
        }
    }
}
