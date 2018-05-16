package com.pacifi.academico.entidad;

public class Estudiante extends Persona {

    private String codigo;

    public Estudiante(String codigo) {
        this.codigo = codigo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }
}
