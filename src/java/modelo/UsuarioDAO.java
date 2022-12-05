/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;


import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author brand
 */
public class UsuarioDAO {
       Connection conexion=null;
       PreparedStatement ps=null;
       ResultSet rs=null;       
       Usuario usuario;
         
  public UsuarioDAO() {
        Conexion con = new Conexion();
        conexion=con.getConexion();        
         
    }
  public Usuario inicioSesion(String usser, String pasword){
        
      try{
   
        String sql="SELECT id,usuario,pasword FROM usuarios WHERE usuario=? and pasword=?";
        ps=conexion.prepareStatement(sql);
        ps.setString(1,usser);
        ps.setString(2, pasword);
        rs = ps.executeQuery();
        while(rs.next()){
                    
            usuario= new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setUsuario(rs.getString("usuario"));
            usuario.setPassword(rs.getString("pasword"));
        }
        
      }catch (SQLException e){
          e.printStackTrace();
      } finally{
          try{
              if(rs!=null){
                  rs.close();
              }
              if(ps!=null){
                  ps.close();
              }
              if(conexion!=null){
                  conexion.close();
              }
                  
          }catch(SQLException e2){
              e2.printStackTrace();
          }        
      }
      
      return usuario;
  }

}