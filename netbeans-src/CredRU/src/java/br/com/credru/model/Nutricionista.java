/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

/**
 *
 * @author Soriano
 */
public class Nutricionista {
    private Usuario usuario;
    private long crn;

    public Nutricionista() {
        
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public long getCrn() {
        return crn;
    }

    public void setCrn(long crn) {
        this.crn = crn;
    }
    
    public void cadastrarAlimento(){
        
    }
    
    public void cadastrarRefeicao(){
        
    }
    
    public void cadastrarIgrediente(){
        
    }
}
