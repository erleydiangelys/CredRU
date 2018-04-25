/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import jdk.nashorn.internal.codegen.CompilerConstants;

/**
 *
 * @author Soriano
 */
public class Aluno {
    private Usuario user;
    private long matricula;
    private String curso;
    private boolean inativo;
    //O usuário saiu por um tempo da universidade, porem ele pode voltar
    //Mas se ele estiver inativo ele não pode comprar

    public Aluno() {
        this.inativo = false;
    }
    
    public Aluno(Usuario user) {
        this();
        this.user = user;
    }

    public Usuario getUser() {
        return user;
    }

    public void setUser(Usuario user) {
        this.user = user;
    }

    public long getMatricula() {
        return matricula;
    }

    public void setMatricula(long matricula) {
        this.matricula = matricula;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public boolean isInativo() {
        return inativo;
    }

    public void setInativo(boolean inativo) {
        this.inativo = inativo;
    }
    
    
}
