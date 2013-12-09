/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBMS;

import Clases.Usuario;
import Clases.Empleado;
import Clases.LoginForm;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author luismiranda
 */
public class DBMS {
    private static Connection conexion;
    
    protected DBMS(){
    }
    
    private static DBMS instance = null;
    
    public static DBMS getInstance(){
        if (null == DBMS.instance){
            DBMS.instance = new DBMS();
        }
        DBMS.conectar();
        return DBMS.instance;
    }
    
    private static boolean conectar() {
        try {
            Class.forName("org.postgresql.Driver");
            conexion = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sigulab",
                    "postgres",
                    "qwerty");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean agregarUsuario(Usuario u) {
        
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "INSERT INTO USUARIO VALUES (?,?,?,?,?,?,?,?,?);");
            
            psAgregar.setString(1, u.getUsbid());
            psAgregar.setString(2, u.getNombres());
            psAgregar.setString(3, u.getApellidos());
            psAgregar.setInt(4, u.getCedula());
            psAgregar.setString(5, "");
            psAgregar.setString(6, "");
            psAgregar.setString(7, "");
            psAgregar.setString(8, "");
            psAgregar.setString(9, u.getTipo());
                    
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }

    }

    public boolean modificarUsuario(Usuario u){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE USUARIO SET nombres=? , apellidos=? , cedula=? , correo=? , direccion=? , telefono_casa=? , telefono_celular=? , tipo=? WHERE usbid=?;"
            );
            
            
            psAgregar.setString(1, u.getNombres());
            psAgregar.setString(2, u.getApellidos());
            psAgregar.setInt(3, u.getCedula());
            psAgregar.setString(4, u.getCorreo());
            psAgregar.setString(5, u.getDireccion());
            psAgregar.setString(6, u.getTelefono_casa());
            psAgregar.setString(7, u.getTelefono_celular());
            psAgregar.setString(8, u.getTipo());
            psAgregar.setString(9, u.getUsbid());
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
        
    }
    
    public boolean eliminarUsuario(Usuario u){
        
        PreparedStatement psEliminar = null;
        try {

            psEliminar = conexion.prepareStatement(
                    "DELETE FROM USUARIO WHERE usbid=(?);");
            
            psEliminar.setString(1, u.getUsbid());

            Integer i = psEliminar.executeUpdate();

            return i > 0;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    public ArrayList<Empleado> listarEmpleados(){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT * FROM USUARIO AS U,EMPLEADO AS E WHERE E.USBID=U.USBID;");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado u = new Empleado();
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCedula(rs.getInt("cedula"));
                u.setCorreo(rs.getString("correo"));
                u.setDireccion(rs.getString("direccion"));
                u.setTelefono_casa(rs.getString("telefono_casa"));
                u.setTelefono_celular(rs.getString("telefono_celular"));
                u.setTipo(rs.getString("tipo"));
                u.setAntiguedad(rs.getString("antiguedad"));
                u.setCargo(rs.getString("cargo"));
                u.setTipoE(rs.getString("tipo_empleado")); 
                
                Empleados.add(u);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Empleados;
    }
    
    public Empleado obtenerEmpleado(Empleado e){
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT * FROM USUARIO AS U,EMPLEADO AS E WHERE E.USBID=U.USBID AND E.USBID=?;");
            ps.setString(1, e.getUsbid());
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()){
                               
                e.setUsbid(rs.getString("usbid"));
                e.setNombres(rs.getString("nombres"));
                e.setApellidos(rs.getString("apellidos"));
                e.setCedula(rs.getInt("cedula"));
                e.setCorreo(rs.getString("correo"));
                e.setDireccion(rs.getString("direccion"));
                e.setTelefono_casa(rs.getString("telefono_casa"));
                e.setTelefono_celular(rs.getString("telefono_celular"));
                e.setTipo(rs.getString("tipo"));
                e.setAntiguedad(rs.getString("antiguedad"));
                e.setCargo(rs.getString("cargo"));
                e.setTipoE(rs.getString("tipo_empleado")); 
                
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return e;
    }
    
    
    public Usuario obtenerUsuario(Usuario u){
        
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement("SELECT * FROM USUARIO WHERE usbid=?;");
            ps.setString(1, u.getUsbid());
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()){
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCedula(rs.getInt("cedula"));
                u.setCorreo(rs.getString("correo"));
                u.setDireccion(rs.getString("direccion"));
                u.setTelefono_casa(rs.getString("telefono_casa"));
                u.setTelefono_celular(rs.getString("telefono_celular"));
                u.setTipo(rs.getString("tipo"));
                
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        if(u.getNombres() == null) {
            return null;
        }
        
        return u;
    }

    public boolean agregarEmpleado(Empleado e) {
        
        PreparedStatement ps;
        Integer filas;
        
        try {

            ps = conexion.prepareStatement("INSERT INTO EMPLEADO VALUES (?,?,?,?);");

            ps.setString(1, e.getCargo());
            ps.setString(2, e.getAntiguedad());
            ps.setString(3, e.getTipoE());
            ps.setString(4, e.getUsbid());
            
            System.out.print(e.getCargo());
            System.out.print(e.getAntiguedad());            
            System.out.print(e.getTipoE());            
            System.out.print(e.getUsbid());            
                    
            filas = ps.executeUpdate();
            
            return filas > 0;
            
        }catch(SQLException ex){
            ex.printStackTrace();
            return false;
        }

    }
    
    public Empleado consultar(LoginForm user) {
    
        String usbid = user.getUsbid();
        String password = user.getPassword();
        
        Empleado emp = new Empleado();        
                
        PreparedStatement ps;
        ResultSet rs;
        
        try {
            
            ps = conexion.prepareStatement("SELECT * FROM USUARIO WHERE usbid=?;");            
//            ps = conexion.prepareStatement("SELECT * FROM EMPLEADO WHERE usbid=?;");
            ps.setString(1, usbid);
            rs = ps.executeQuery();
            
            if (!(rs.next() && (password.equals("1234")))) {
                System.out.println("Usuario inexistente.");
                return null;
            }
            
            emp.setUsbid(usbid);
            emp.setNombres(rs.getString("nombres"));
            emp.setApellidos(rs.getString("apellidos"));
            emp.setCedula(rs.getInt("cedula"));
            emp.setCorreo(rs.getString("correo"));
            emp.setDireccion(rs.getString("direccion"));
            emp.setTelefono_casa(rs.getString("telefono_casa"));
            emp.setTelefono_celular(rs.getString("telefono_celular"));
            emp.setTipo(rs.getString("tipo"));  
//            emp.setCargo(rs.getString("cargo"));
//            emp.setAntiguedad(rs.getString("antiguedad"));
//            emp.setTipoE(rs.getString("tipo_empleado"));  
                    
        } catch(SQLException ex) {
            ex.printStackTrace();
        }
        
        return emp;
        
    }
    
    // Main para pruebas sobre la base de datos.
    public static void main(String args[]) {
        
        Empleado emp = new Empleado();
        
        emp.setCargo("Jefe");
        emp.setAntiguedad("1991");
        emp.setTipoE("Jefe");
        emp.setUsbid("09-10278");
        
        try {
            
            DBMS db = DBMS.getInstance();
            boolean agrego = db.agregarEmpleado(emp);  
            
            System.out.println(agrego);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
                
//        LoginForm user = new LoginForm();
//        
//        user.setUsbid("10-00000");
//        user.setPassword("1234");
//                
//        try {
//            
//            DBMS db = DBMS.getInstance();
//            Empleado emp = db.consultar(user);
//                        
//            System.out.print(emp.getNombres());
//            System.out.println();
//            System.out.println(emp.getUsbid());
//            
//        } catch (Exception e) {
//            e.printStackTrace();
//        }

    }   

}
