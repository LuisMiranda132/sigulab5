/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBMS;

import Clases.Laboratorio;
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
                    "INSERT INTO USUARIO VALUES (?,?,?,?);");
            
            psAgregar.setString(1, u.getUsbid());
            psAgregar.setString(2, u.getNombres());
            psAgregar.setString(3, u.getApellidos());
            psAgregar.setString(4, u.getCedula());
                                
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }

    }

    public boolean modificarEmpleado(Empleado e){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE EMPLEADO SET correo=? , direccion=? , telefono=? , area_laboral=? , extension=? , laboratorio=? WHERE usbid=?;"
            );
            
            
            psAgregar.setString(1, e.getCorreo());
            psAgregar.setString(2, e.getDireccion());
            psAgregar.setString(3, e.getTelefono());
            psAgregar.setString(4, e.getArea_laboral());
            psAgregar.setString(5, e.getExtension());
            psAgregar.setString(6, e.getLaboratorio());
            psAgregar.setString(7, e.getUsbid());
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
        
    }
    
    public boolean desactivarVisibilidad(Empleado e){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE EMPLEADO SET visibilidad=? WHERE usbid=?;"
            );
            
            
            psAgregar.setInt(1, 0);
            psAgregar.setString(2, e.getUsbid());
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
    }
    
    public boolean activarVisibilidad(Empleado e){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE EMPLEADO SET visibilidad=? WHERE usbid=?;"
            );
            
            
            psAgregar.setInt(1, 1);
            psAgregar.setString(2, e.getUsbid());
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
    }
       
    public ArrayList<Empleado> listarEmpleadosVisibles(){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT U.usbid, U.nombres, U.apellidos, E.correo, E.cargo FROM USUARIO AS U,EMPLEADO AS E WHERE E.USBID=U.USBID AND E.VISIBILIDAD=1;");

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado u = new Empleado();
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCorreo(rs.getString("correo"));
                u.setCargo(rs.getString("cargo")); 
                
                Empleados.add(u);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Empleados;
    }
    
        public ArrayList<Empleado> listarEmpleadosNoVisibles(){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT U.usbid, U.nombres, U.apellidos, E.correo, E.cargo FROM USUARIO AS U,EMPLEADO AS E WHERE E.USBID=U.USBID AND E.VISIBILIDAD=0;");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado u = new Empleado();
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCorreo(rs.getString("correo"));
                u.setCargo(rs.getString("cargo"));
                
                Empleados.add(u);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Empleados;
    } 
    
    public ArrayList<Empleado> listarAllEmpleados(){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT U.usbid, U.nombres, U.apellidos, E.correo, E.cargo FROM USUARIO AS U,EMPLEADO AS E WHERE E.USBID=U.USBID;");

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado u = new Empleado();
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCorreo(rs.getString("correo"));
                u.setCargo(rs.getString("cargo"));
                
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
            
            // Si el Query es vacio, retorna null.
            if (!rs.isBeforeFirst()) {
                return null;
            }             
            
            while (rs.next()) {
                               
                e.setUsbid(rs.getString("usbid"));
                e.setNombres(rs.getString("nombres"));
                e.setApellidos(rs.getString("apellidos"));
                e.setCedula(rs.getString("cedula"));
                e.setCorreo(rs.getString("correo"));
                e.setDireccion(rs.getString("direccion"));
                e.setTelefono(rs.getString("telefono"));
                e.setTipo_usuario(rs.getString("tipo_usuario"));
                e.setAno_ingreso(rs.getString("ano_ingreso"));
                e.setCargo(rs.getString("cargo"));
                e.setTipo_empleado(rs.getString("tipo_empleado"));
                e.setStatus(rs.getString("status"));
                e.setExtension(rs.getString("extension"));
                e.setArea_laboral(rs.getString("area_laboral"));
                e.setLaboratorio(rs.getString("laboratorio"));
                e.setVisibilidad(rs.getInt("visibilidad"));
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
                
        return e;
    }
        
    public Laboratorio obtenerLaboratorio(Laboratorio l){
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT * FROM LABORATORIO AS L WHERE L.codigo=?;");
            ps.setString(1, l.getCodigo());
            ResultSet rs = ps.executeQuery();
            
            // Si el Query es vacio, retorna null.
            if (!rs.isBeforeFirst()) {
                return null;
            }             
            
            while (rs.next()) {
                               
                l.setCodigo(rs.getString("codigo"));
                l.setNombre(rs.getString("nombre"));
                l.setSede(rs.getString("sede"));
                l.setUbicacion(rs.getString("ubicacion"));
                l.setCorreo(rs.getString("correo"));
                l.setPagweb(rs.getString("pagweb"));
                l.setTelefono(rs.getString("telefono"));
                l.setFax(rs.getString("fax"));
                l.setCaracteristicas(rs.getString("caracteristicas"));
                l.setJefe(rs.getString("jefe"));                
                
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
                
        return l;
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
                u.setCedula(rs.getString("cedula"));
                
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

            ps = conexion.prepareStatement("INSERT INTO EMPLEADO VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);");

            ps.setString(1, e.getUsbid());
            ps.setString(2, e.getCorreo());
            ps.setString(3, e.getDireccion());
            ps.setString(4, e.getCargo());
            ps.setString(5, e.getAno_ingreso());
            ps.setString(6, e.getTipo_empleado());
            ps.setString(7, e.getStatus());
            ps.setString(8, e.getTelefono());
            ps.setString(9, e.getTipo_usuario());
            ps.setString(10, e.getArea_laboral());
            ps.setString(11, e.getExtension());
            ps.setString(12, e.getLaboratorio());
            ps.setInt(13, e.getVisibilidad());
            
            
            System.out.print(e.getUsbid());
            System.out.print(e.getCorreo());            
            System.out.print(e.getDireccion());            
            System.out.print(e.getCargo());
            System.out.print(e.getAno_ingreso());
            System.out.print(e.getTipo_empleado());            
            System.out.print(e.getStatus());            
            System.out.print(e.getTelefono());
            System.out.print(e.getTipo_usuario());
            System.out.print(e.getArea_laboral());            
            System.out.print(e.getExtension());            
            System.out.print(e.getLaboratorio());
            System.out.print(e.getVisibilidad());
                    
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
            emp.setCedula(rs.getString("cedula"));
            emp.setCorreo(rs.getString("correo"));
            emp.setDireccion(rs.getString("direccion"));
            emp.setTelefono(rs.getString("telefono"));
            emp.setTipo_usuario(rs.getString("tipo_usuario"));  
//            emp.setCargo(rs.getString("cargo"));
//            emp.setAno_ingreso(rs.getString("ano_ingreso"));
//            emp.setTipo_empleado(rs.getString("tipo_empleado"));  
                    
        } catch(SQLException ex) {
            ex.printStackTrace();
        }
        
        return emp;
        
    }

    public boolean agregarLaboratorio(Laboratorio l) {
        
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "INSERT INTO laboratorio VALUES (?,?,?,?,?,?,?,?,?,?,?);");
            
            psAgregar.setString(1, l.getCodigo());
            psAgregar.setString(2, l.getNombre());
            psAgregar.setString(3, l.getSede());
            psAgregar.setString(4, l.getUbicacion());
            psAgregar.setString(5, l.getCorreo());
            psAgregar.setString(6, l.getPagweb());
            psAgregar.setString(7, l.getTelefono());
            psAgregar.setString(8, l.getFax());
            psAgregar.setString(9, l.getCaracateristicas());
            psAgregar.setString(10, l.getJefe());
            psAgregar.setInt(11, 1);
            
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }

    }

    public boolean modificarLaboratorio(Laboratorio l){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE LABORATORIO SET nombre=? , sede=? , ubicacion=? , correo=? , pagweb=? , telefono=?, fax=?, jefe=? where codigo=?;"
            );
            
            psAgregar.setString(1, l.getNombre());
            psAgregar.setString(2, l.getSede());
            psAgregar.setString(3, l.getUbicacion());
            psAgregar.setString(4, l.getCorreo());
            psAgregar.setString(5, l.getPagweb());            
            psAgregar.setString(6, l.getTelefono());
            psAgregar.setString(7, l.getFax());
            //psAgregar.setString(8, l.getCaracateristicas());
            psAgregar.setString(8, l.getJefe());
            psAgregar.setString(9, l.getCodigo());

            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
        
    }
    
    public boolean eliminarLaboratorio(Laboratorio l){
        
        PreparedStatement psEliminar = null;
        try {

            psEliminar = conexion.prepareStatement(
                    "DELETE FROM laboratorio WHERE codigo=(?);");
            
            psEliminar.setString(1, l.getCodigo());

            Integer i = psEliminar.executeUpdate();

            return i > 0;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    
    public boolean desactivarVisibilidadLab(Laboratorio l){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE LABORATORIO SET visibilidad=? WHERE codigo=?;"
            );
            
            
            psAgregar.setInt(1, 0);
            psAgregar.setString(2, l.getCodigo());
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
    }
    
    public boolean activarVisibilidadLab(Laboratorio l){
        PreparedStatement psAgregar = null;
        try {
            psAgregar = conexion.prepareStatement(
                    "UPDATE LABORATORIO SET visibilidad=? WHERE codigo=?;"
            );
            
            
            psAgregar.setInt(1, 1);
            psAgregar.setString(2, l.getCodigo());
            Integer i = psAgregar.executeUpdate();
            
            return i>0;
            
        }catch(SQLException ex){
            ex.printStackTrace();;
            return false;
        }
    }
             
    public ArrayList<Laboratorio> listarLaboratoriosVisibles(){
        
        ArrayList<Laboratorio> Laboratorios = new ArrayList<Laboratorio>();
        PreparedStatement ps = null;
        try{

            ps = conexion.prepareStatement("SELECT codigo, nombre, correo, pagweb FROM laboratorio WHERE visibilidad=1 ORDER BY codigo;");

            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                Laboratorio l = new Laboratorio();

                l.setCodigo(rs.getString("codigo"));
                l.setNombre(rs.getString("nombre"));
                l.setCorreo(rs.getString("correo"));
                l.setPagweb(rs.getString("pagweb"));
                
                Laboratorios.add(l);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Laboratorios;
    }
    
        public ArrayList<Laboratorio> listarLaboratoriosNoVisibles(){
        
        ArrayList<Laboratorio> Laboratorios = new ArrayList<Laboratorio>();
        PreparedStatement ps = null;
        try{

            ps = conexion.prepareStatement("SELECT codigo, nombre, correo, pagweb FROM laboratorio WHERE visibilidad=0 ORDER BY codigo;");

            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                Laboratorio l = new Laboratorio();

                l.setCodigo(rs.getString("codigo"));
                l.setNombre(rs.getString("nombre"));
                l.setCorreo(rs.getString("correo"));
                l.setPagweb(rs.getString("pagweb"));
                
                Laboratorios.add(l);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Laboratorios;
    }
    
    
    // Main para pruebas sobre la base de datos.
    public static void main(String args[]) {
        
        Empleado emp = new Empleado();
        
        emp.setCargo("Jefe");
        emp.setAno_ingreso("1991");
        emp.setTipo_empleado("Jefe");
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
    
    public ArrayList<Empleado> listarEmpleadosJefe(){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
            ps = conexion.prepareStatement(
                    "SELECT * FROM USUARIO AS U,EMPLEADO AS E WHERE E.USBID=U.USBID AND E.tipo_empleado='jefe';");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado e = new Empleado();
               
                e.setUsbid(rs.getString("usbid"));
                e.setNombres(rs.getString("nombres"));
                e.setApellidos(rs.getString("apellidos"));
                e.setCedula(rs.getString("cedula"));
                e.setCorreo(rs.getString("correo"));
                e.setDireccion(rs.getString("direccion"));
                e.setTelefono(rs.getString("telefono"));
                e.setTipo_usuario(rs.getString("tipo_usuario"));
                e.setAno_ingreso(rs.getString("ano_ingreso"));
                e.setCargo(rs.getString("cargo"));
                e.setTipo_empleado(rs.getString("tipo_empleado"));
                e.setStatus(rs.getString("status"));
                e.setExtension(rs.getString("extension"));
                e.setArea_laboral(rs.getString("area_laboral"));
                e.setLaboratorio(rs.getString("laboratorio")); 
                
                Empleados.add(e);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Empleados;
    }
    


    public ArrayList<Empleado> listarEmpleadosVisiblesLetra(String letra){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
            String consulta = "SELECT U.usbid, U.nombres, U.apellidos, E.correo, E.cargo FROM USUARIO AS U,EMPLEADO AS E " 
                                + "WHERE E.USBID=U.USBID AND E.VISIBILIDAD=1 AND U.apellidos LIKE '" + letra + "%';";
            ps = conexion.prepareStatement(consulta);

            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado u = new Empleado();
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCorreo(rs.getString("correo"));
                u.setCargo(rs.getString("cargo")); 
                
                Empleados.add(u);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Empleados;
    }
    
    public ArrayList<Empleado> listarEmpleadosNoVisiblesLetra(String letra){
        
        ArrayList<Empleado> Empleados = new ArrayList<Empleado>();
        PreparedStatement ps = null;
        try{
             String consulta = "SELECT U.usbid, U.nombres, U.apellidos, E.correo, E.cargo FROM USUARIO AS U,EMPLEADO AS E " 
                                + "WHERE E.USBID = U.USBID AND E.VISIBILIDAD = 0 AND U.apellidos LIKE '" + letra + "%';";
            ps = conexion.prepareStatement(consulta);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Empleado u = new Empleado();
               
                u.setUsbid(rs.getString("usbid"));
                u.setNombres(rs.getString("nombres"));
                u.setApellidos(rs.getString("apellidos"));
                u.setCorreo(rs.getString("correo"));
                u.setCargo(rs.getString("cargo"));
                
                Empleados.add(u);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return Empleados;
    }

    
}
