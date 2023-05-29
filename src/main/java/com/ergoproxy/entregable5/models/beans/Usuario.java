package com.ergoproxy.entregable5.models.beans;

public class Usuario {
    private String nombre;
    private String apellido;
    private String correo;
    private String contrasena;
    private String nickname;
    private int estado_baneado;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public int getEstado_baneado() {
        return estado_baneado;
    }

    public void setEstado_baneado(int estado_baneado) {
        this.estado_baneado = estado_baneado;
    }
}
