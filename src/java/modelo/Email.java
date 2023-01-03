/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author brand
 */
public class Email {
    private String correoEmisor,correoReceptor,subject,mensaje,contraseña;

    public Email() {
    }

    public Email(String correoEmisor, String correoReceptor, String subject, String mensaje, String contraseña) {
        this.correoEmisor = correoEmisor;
        this.correoReceptor = correoReceptor;
        this.subject = subject;
        this.mensaje = mensaje;
        this.contraseña = contraseña;
    }

    public String getCorreoEmisor() {
        return correoEmisor;
    }

    public void setCorreoEmisor(String correoEmisor) {
        this.correoEmisor = correoEmisor;
    }

    public String getCorreoReceptor() {
        return correoReceptor;
    }

    public void setCorreoReceptor(String correoReceptor) {
        this.correoReceptor = correoReceptor;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    @Override
    public String toString() {
        return "Email{" + "correoEmisor=" + correoEmisor + ", correoReceptor=" + correoReceptor + ", subject=" + subject + ", mensaje=" + mensaje + ", contrase\u00f1a=" + contraseña + '}';
    }
    

}
