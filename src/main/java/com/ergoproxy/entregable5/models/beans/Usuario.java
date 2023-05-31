package com.ergoproxy.entregable5.models.beans;

public class Usuario {
    private int idusuario;
    private String nombre;
    private String apellido;
    private String correo;

    private String contrasenia;
    private String nickname;
    private String avatar;
    private int estado_baneado;
    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
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
