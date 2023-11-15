
package com.emergentes.controler;

import com.emergentes.bean.BeanContacto;
import com.emergentes.entidades.Contacto;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MainControler", urlPatterns = {"/MainControler"})
public class MainControler extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             try{
        //AvisoController? action=add
        BeanContacto dao = new BeanContacto();
        int id;
        Contacto avi = new Contacto();
        String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
        
        switch(action){
            case "add":
                request.setAttribute("contacto", avi);
                request.getRequestDispatcher("frmaviso.jsp").forward(request, response);
                break;
            case "edit":
                id = Integer.parseInt(request.getParameter("id"));
                avi = dao.buscar(id);
                request.setAttribute("contacto",avi);
                request.getRequestDispatcher("frmaviso.jsp").forward(request, response);
                break;

            case"delete":
                id = Integer.parseInt(request.getParameter("id"));
                dao.eliminar(id);
                response.sendRedirect(request.getContextPath() + "/MainControler");
                break;

            case "view":
                List<Contacto> lista = dao.listarTodos();
                request.setAttribute("contacto", lista);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            default:
                break;
        }
    }catch(Exception ex){
        System.out.println("Error: "+ ex.getMessage());
    }
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Contacto avi  = new Contacto();
         
        avi.setId(Integer.parseInt(request.getParameter("id")));
        avi.setNombre(request.getParameter("nombre"));
        avi.setCorreo(request.getParameter("correo"));
        avi.setTelefono(request.getParameter("telefono"));
         
               
        if (avi.getId() == 0) {
            try {
                BeanContacto dao = new BeanContacto();
                dao.insertar(avi);
                response.sendRedirect(request.getContextPath()+"/MainControler");
            } catch (Exception ex) {
                System.out.println("Error " + ex.getMessage());
            }
        } else {
            try {
                BeanContacto dao = new BeanContacto();
                dao.editar(avi);
                response.sendRedirect(request.getContextPath() + "/MainControler");
            } catch (Exception ex) {
                System.out.println("Error " + ex.getMessage());
            }
        }
    }
}
    