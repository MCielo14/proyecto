package com.ergoproxy.entregable5.manager.models.daos;

import com.ergoproxy.entregable5.manager.models.beans.Manager;

import java.sql.*;
import java.util.ArrayList;

public class managerDao {
    public static ArrayList<Manager> listarManager() {
        ArrayList<Manager> listaManager = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sql = "select * from usuario";
        String url = "jdbc:mysql://localhost:3306/mydb";

        try (Connection connection = DriverManager.getConnection(url, "root", "root");
             Statement stmt = connection.createStatement();
             ResultSet resultSet = stmt.executeQuery(sql)) {

            while (resultSet.next()) {
                Manager manager = new Manager();
                manager.setIdusuario(resultSet.getInt(1));
                manager.setNombre(resultSet.getString(2));
                manager.setApellido(resultSet.getString(3));
                manager.setCorreo(resultSet.getString(4));
                manager.setContrasenia(resultSet.getString(5));
                manager.setNickname(resultSet.getString(6));
                manager.setAvatar(resultSet.getString(7));
                manager.setEstado_baneado(resultSet.getInt(8));
                listaManager.add(manager);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaManager;
    }
}
