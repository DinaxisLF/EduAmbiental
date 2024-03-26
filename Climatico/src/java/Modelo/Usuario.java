/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Dinaxis
 */
public class Usuario {
    
    //Atributos
    
    private int codigo;
    private String Nombre;

    
    private String Apellido1;
    private String Apellido2;
    private String Estado;
    private String Municipio;
    private String Colonia;
    private String Email;
    private String Nombre_Usuario;
    private String Contraseña;

    @Override
    public String toString() {
        return "Usuario{" + "Nombre=" + Nombre + ", Apellido1=" + Apellido1 + ", Apellido2=" + Apellido2 + ", Estado=" + Estado + ", Municipio=" + Municipio + ", Colonia=" + Colonia + ", Email=" + Email + ", Nombre_Usuario=" + Nombre_Usuario + ", Contrase\u00f1a=" + Contraseña + ", Activo=" + Activo + '}';
    }
    private int Activo;   
    
    //Constructors
    
    public Usuario(){
        
    }
    
    public Usuario(String nombre, String apellido1, String apellido2, String estado, String municipio, String colonia, String email, String nombre_usuario, String contraseña){
        this.Nombre = nombre;
        this.Apellido1 = apellido1;
        this.Apellido2 = apellido2;
        this.Estado = estado;
        this.Municipio = municipio;
        this.Colonia = colonia;
        this.Email = email;
        this.Nombre_Usuario = nombre_usuario;
        this.Contraseña = contraseña;

    }
    
    public Usuario(String nombre, String apellido1, String apellido2, String estado, String municipio, String colonia, String email, String nombre_usuario, int activo){
        this.Nombre = nombre;
        this.Apellido1 = apellido1;
        this.Apellido2 = apellido2;
        this.Estado = estado;
        this.Municipio = municipio;
        this.Colonia = colonia;
        this.Email = email;
        this.Nombre_Usuario = nombre_usuario;
        this.Activo = activo;
    }
    
    public Usuario(int codigo ,String nombre, String apellido1, String apellido2, String estado, String municipio, String colonia, String email){
        this.codigo = codigo;
        this.Nombre = nombre;
        this.Apellido1 = apellido1;
        this.Apellido2 = apellido2;
        this.Estado = estado;
        this.Municipio = municipio;
        this.Colonia = colonia;
        this.Email = email;
        
        
    }

    public int getActivo() {
        return Activo;
    }

    public void setActivo(int Activo) {
        this.Activo = Activo;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
     
     

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido1() {
        return Apellido1;
    }

    public void setApellido1(String Apellido1) {
        this.Apellido1 = Apellido1;
    }

    public String getApellido2() {
        return Apellido2;
    }

    public void setApellido2(String Apellido2) {
        this.Apellido2 = Apellido2;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public String getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(String Municipio) {
        this.Municipio = Municipio;
    }

    public String getColonia() {
        return Colonia;
    }

    public void setColonia(String Colonia) {
        this.Colonia = Colonia;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getNombre_Usuario() {
        return Nombre_Usuario;
    }

    public void setNombre_Usuario(String Nombre_Usuario) {
        this.Nombre_Usuario = Nombre_Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
    
     
   
    
    
    
}
