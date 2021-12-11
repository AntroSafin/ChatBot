package sample;

import java.sql.Connection;
import java.sql.DriverManager;
public class Databaseconnect {
    static Connection connection;
    static final String JDBC_DRIVER="com.mysql.cj.jdbc.Driver";
    static final String DB_URL="jdbc:mysql://localhost/T1";
    
    static final String USER="root";
    static final String PASS="*********";
    public static Connection getConnection(){
        try{
            Class.forName(JDBC_DRIVER);
            connection=DriverManager.getConnection(DB_URL,USER,PASS);
        }
        catch(Exception e){
            System.out.println(e);
        }
        return connection;
    }
}
