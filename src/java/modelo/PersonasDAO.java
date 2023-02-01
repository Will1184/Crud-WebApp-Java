/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
<> 
*/
package modelo;


import config.Conexion;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author brand
 */
public class PersonasDAO {
    
    Connection conexion=null;
    public PersonasDAO() {
        Conexion con = new Conexion();
        conexion=con.getConexion();
    }
   public List<Persona> listaPersonas(){
        PreparedStatement ps;
        ResultSet rs;
       List<Persona>lista= new ArrayList<>();
        try{
            ps= conexion.prepareStatement("SELECT id, primerNombre,segundoNombre,primerApellido,segundoApellido,edad,correoElectronico,telefono,posicion FROM personas");
            rs=ps.executeQuery();
            while(rs.next()){
                int id=rs.getInt("id");
                String primerNombre=rs.getString("primerNombre");
                String segundoNombre=rs.getString("segundoNombre");
                String primerApellido=rs.getString("primerApellido");
                String segundoApellido=rs.getString("segundoApellido");
                String edad=rs.getString("edad");
                String correoElectronico=rs.getString("correoElectronico");
                String telefono=rs.getString("telefono");
                String posicion=rs.getString("posicion");
                Persona  persona=new Persona(id,primerNombre, segundoNombre, primerApellido, segundoApellido,edad, correoElectronico,telefono, posicion);
                lista.add(persona);
            }
            return lista;
            
        }catch(SQLException e){
            System.out.println(e.toString());   
            return null;
        }
        
    }
   
   public Persona mostrarPersona(int _id){
        
       PreparedStatement ps;
       ResultSet rs;
       Persona persona=null;
        try{
            ps= conexion.prepareStatement("SELECT id,primerNombre,segundoNombre,primerApellido,segundoApellido,edad,correoElectronico,telefono,posicion FROM personas WHERE id=?");
            ps.setInt(1,_id);
            rs=ps.executeQuery();
            
            while(rs.next()){
                int id=rs.getInt("id");
                String primerNombre=rs.getString("primerNombre");
                String segundoNombre=rs.getString("segundoNombre");
                String primerApellido=rs.getString("primerApellido");
                String segundoApellido=rs.getString("segundoApellido");
                String edad=rs.getString("edad");
                String correoElectronico=rs.getString("correoElectronico");
                String telefono=rs.getString("telefono");
                String posicion=rs.getString("posicion");
                persona=new Persona( id,primerNombre, segundoNombre, primerApellido, segundoApellido,edad, correoElectronico,telefono, posicion);                
            }
            return persona;
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
        
    }
   
   public boolean insertar(Persona persona){
        
        PreparedStatement ps;
       
        try{
            ps = conexion.prepareStatement("INSERT INTO personas(primerNombre,segundoNombre,primerApellido,segundoApellido,edad,correoElectronico,telefono,posicion) VALUES(?,?,?,?,?,?,?,?)");
            ps.setString(1, persona.getPrimerNombre());
            ps.setString(2, persona.getSegundoNombre());
            ps.setString(3, persona.getPrimerApellido());
            ps.setString(4, persona.getSegundoApellido());
            ps.setString(5,persona.getEdad());
            ps.setString(6, persona.getCorreoElectronico());
            ps.setString(7,persona.getTelefono());
            ps.setString(8, persona.getPosicion());
            ps.execute();
            return true;
           } catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
        
    }
    
   public boolean actualizar(Persona persona){
        
        PreparedStatement ps;
       
        try{
            ps= conexion.prepareStatement("UPDATE personas SET primerNombre=?, segundoNombre=?, primerApellido=?, segundoApellido=?, edad=?, correoElectronico=?, telefono=?, posicion=? WHERE id=?");
            
            ps.setString(1, persona.getPrimerNombre());
            ps.setString(2, persona.getSegundoNombre());
            ps.setString(3, persona.getPrimerApellido());
            ps.setString(4, persona.getSegundoApellido());
            ps.setString(5,persona.getEdad());
            ps.setString(6, persona.getCorreoElectronico());
            ps.setString(7,persona.getTelefono());
            ps.setString(8, persona.getPosicion());
            ps.setInt(9, persona.getId());
            ps.execute();
            
            return true;
           } catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
}
   
public boolean eliminar(int _id){
        
        PreparedStatement ps;
       
        try{
            ps= conexion.prepareStatement("DELETE FROM Personas WHERE id=?");
            ps.setInt(1,_id);
            ps.execute();
            return true;
           } catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
 }

    public List<Persona> buscar(String palabra) throws SQLException {
        String sentences = "{CALL buscarRegistro(?)}";
        CallableStatement callableStatement;
        ResultSet rs;
        List<Persona>lista= new ArrayList<>();
        try  {            
            callableStatement=conexion.prepareCall(sentences);
            callableStatement.setString(1,palabra);
            rs=callableStatement.executeQuery();
            while (rs.next()){
                int id=rs.getInt("id");
                String primerNombre=rs.getString("primerNombre");
                String segundoNombre=rs.getString("segundoNombre");
                String primerApellido=rs.getString("primerApellido");
                String segundoApellido=rs.getString("segundoApellido");
                String edad=rs.getString("edad");
                String correoElectronico=rs.getString("correoElectronico");
                String telefono=rs.getString("telefono");
                String posicion=rs.getString("posicion");
                Persona  persona=new Persona(id,primerNombre, segundoNombre, primerApellido, segundoApellido,edad, correoElectronico,telefono, posicion);
                lista.add(persona);
            }
            return lista;
        }catch(SQLException e){
            System.out.println(e.toString());   
            return null;
        }
    }
     public List<Persona> filtar(int letra) throws SQLException {
        String sentences = "{CALL filtroRegistros(?)}";
        CallableStatement callableStatement;
        ResultSet rs;
        List<Persona>lista= new ArrayList<>();
        try  {            
            callableStatement=conexion.prepareCall(sentences);
            callableStatement.setInt(1,letra);
            rs=callableStatement.executeQuery();
            while (rs.next()){
                int id=rs.getInt("id");
                String primerNombre=rs.getString("primerNombre");
                String segundoNombre=rs.getString("segundoNombre");
                String primerApellido=rs.getString("primerApellido");
                String segundoApellido=rs.getString("segundoApellido");
                String edad=rs.getString("edad");
                String correoElectronico=rs.getString("correoElectronico");
                String telefono=rs.getString("telefono");
                String posicion=rs.getString("posicion");
                Persona  persona=new Persona(id,primerNombre, segundoNombre, primerApellido, segundoApellido,edad, correoElectronico,telefono, posicion);
                lista.add(persona);
            }
            return lista;
        }catch(SQLException e){
            System.out.println(e.toString());   
            return null;
        }        
    }
     public void reporte(){
         String fileName="C:\\Users\\brand\\OneDrive\\Documentos\\NetBeansProjects\\Formulario0.1\\web\\Formulario\\archivos\\csv\\Reporte.csv";        
         PreparedStatement ps;
         ResultSet rs;         
             try (FileWriter fileWriter = new FileWriter(fileName,true)) {
                 fileWriter.append("ID");
                 fileWriter.append(",");
                 fileWriter.append("PRIMER NOMBRE");
                 fileWriter.append(",");
                 fileWriter.append("SEGUNDO NOMBRE");
                 fileWriter.append(",");
                 fileWriter.append("PRIMER APELLIDO");
                 fileWriter.append(",");
                 fileWriter.append("SEGUNDO APELLIDO");
                 fileWriter.append(",");
                 fileWriter.append("EDAD");
                 fileWriter.append(",");
                 fileWriter.append("EMAIL");
                 fileWriter.append(",");
                 fileWriter.append("TELEFONO");
                 fileWriter.append(",");
                 fileWriter.append("POSICION");
                 fileWriter.append("\n");
                 
                 ps= conexion.prepareStatement("SELECT id, primerNombre,segundoNombre,primerApellido,segundoApellido,edad,correoElectronico,telefono,posicion FROM personas");
                 rs=ps.executeQuery();
                 while(rs.next()){
                     fileWriter.append(rs.getString("id"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("primerNombre"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("segundoNombre"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("primerApellido"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("segundoApellido"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("edad"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("correoElectronico"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("telefono"));
                     fileWriter.append(",");
                     fileWriter.append(rs.getString("posicion"));
                     fileWriter.append("\n");
                 }
                 fileWriter.flush();
                 fileWriter.close();                    
        }catch(SQLException | IOException e){
           Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, e);           
        }             
     }     
}

