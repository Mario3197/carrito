package com.servlets;

import com.clases.Pedido;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/guardar-info")
public class GuardarInformacion extends HttpServlet {
    Pedido pedido;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset-UTF-8");
        PrintWriter out = response.getWriter();
        String nombre = request.getParameter("nombre");
        String hospital = request.getParameter("hospital");
        String[] materiales = request.getParameterValues("material");
        String adicionales = request.getParameter("adicionales");

        System.out.println(adicionales);
        if (nombre.isEmpty()) {
            out.println("<h1>Tu pedido no tiene nombre, por favor ingrésalo</h1>");
        } else {
            if (hospital.equals("Selecciona una sucursal")) {
                out.println("<h1>No seleccionaste un hospital, por favor ingrésalo</h1>");
            } else {
                if (materiales == null) {
                    out.println("<h1>Selecciona al menos un material</h1>");
                } else {
                    if (adicionales.isEmpty()) {
                        adicionales = "Sin adicionales";
                    }
                    pedido = new Pedido(nombre, hospital, materiales, adicionales);
                    out.println("<h1>¡Tu pedido se ha creado exitosamente! &#128076;</h1>");
                    out.println("<h2>Ya puedes descargar el excel en la página principal &#128521;</h2>");
                }
            }
        }

        out.println("<a href='/carrito'>Regresar a la página principal</a>");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();

        if (pedido == null) {
            out.println("<h1>¡Genera un pedido antes de descargar el excel! </h1>");
        } else {
            try {
                String materialesExcel = "";
                String[] materiales = pedido.getMateriales();
                response.setContentType("application/vnd.ms-excel");
                response.setHeader("Content-disposition", "filename=pedido.xls");

                for (int i = 0; i < materiales.length; i++) {
                    /*if () {

                    }
                    materiales.concat(material + ", ");*/
                }
                out.println("Nombre:\t" + pedido.getNombre());
                out.println("Sucursal:\t" + pedido.getSucursal());
                out.println("Nombre:\t" + pedido.getNombre());
                out.println("Nombre:\t" + pedido.getNombre());
                System.out.println(pedido.getNombre());
            } finally {
                out.close();
            }
        }
    }
}
