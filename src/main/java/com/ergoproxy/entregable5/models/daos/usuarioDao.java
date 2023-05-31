package com.ergoproxy.entregable5.models.daos;

import com.ergoproxy.entregable5.models.beans.Juegos;
import com.ergoproxy.entregable5.models.beans.Usuario;

import java.sql.*;
import java.util.ArrayList;

public class usuarioDao {
    public static ArrayList<Usuario> listarUsuario() {
        ArrayList<Usuario> listaUsuario = new ArrayList<>();
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
                Usuario usuario = new Usuario();
                usuario.setIdusuario(resultSet.getInt(1));
                usuario.setNombre(resultSet.getString(2));
                usuario.setApellido(resultSet.getString(3));
                usuario.setCorreo(resultSet.getString(4));
                usuario.setContrasenia(resultSet.getString(5));
                usuario.setNickname(resultSet.getString(6));
                usuario.setAvatar(resultSet.getString(7));
                usuario.setEstado_baneado(resultSet.getInt(8));
                listaUsuario.add(usuario);
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return listaUsuario;
    }
}
