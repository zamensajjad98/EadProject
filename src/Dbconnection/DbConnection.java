package Dbconnection;

import java.sql.*;

/**
 * Created by fawad.tariq on 9/26/2019.
 */
public class DbConnection {
    private String dbURL = "jdbc:mysql://localhost:3306/records";
    private String username = "root";
    private String password = "";
    private Connection connection;
    public DbConnection(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL,username,password);
            if(connection!=null){
                System.out.println("Success");
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertData(String name,String username,String password,String dob,String emailaddress){
        try {
            String sqlQuery = "INSERT INTO users( name,username,password,dob,emailaddress ) VALUES(?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, username );
            preparedStatement.setString(3,  password);
            preparedStatement.setString(4, dob);
            preparedStatement.setString(5,  emailaddress);
            int noOfRowsInserted = preparedStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    public void inserttweets(String tweets){
        try {
            String sqlQuery = "INSERT INTO tweets(tweets) VALUES(?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, tweets);

            int noOfRowsInserted = preparedStatement.executeUpdate();
            if(noOfRowsInserted>0){
                System.out.println(noOfRowsInserted + " rows inserted!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public ResultSet displayalltweets() {
        ResultSet result = null;
        try {
            String sqlQuery = "SELECT users.id, tweets.tweets,users.username FROM users INNER JOIN tweets ON users.id=tweets.id   ";
            Statement statement = connection.createStatement();
            result = statement.executeQuery(sqlQuery);
            return result;

        } catch (SQLException e) {
            e.printStackTrace();
            return result;
        }


    }

    public int loginAuthentication(String username,String password){
        try
        {
            String sqlQuery = "Select id,username from users where username = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);


            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet result = preparedStatement.executeQuery();


            int count = 0;
            while(result.next())
            {
                count = result.getInt(1);
            }

            if(count>0)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }catch(SQLException e2)
        {
            System.out.println("SQLException occured");
        }
        return 0;
    }




}
