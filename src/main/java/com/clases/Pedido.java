package com.clases;

public class Pedido {
    private String nombre;
    private String sucursal;
    private String[] materiales;
    private String adicionales;

    public Pedido(String nombre, String sucursal, String[] materiales, String adicionales){
        this.nombre = nombre;
        this.sucursal = sucursal;
        this.materiales = materiales;
        this.adicionales = adicionales;
    }

    public String getNombre() {
        return nombre;
    }

    public String getSucursal() {
        return sucursal;
    }

    public String[] getMateriales() {
        return materiales;
    }

    public String getAdicionales() {
        return adicionales;
    }
}
