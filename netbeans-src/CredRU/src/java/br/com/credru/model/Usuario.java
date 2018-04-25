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
public class Usuario {
    private String nome;
    private String user;
    private String senha;
    private String cpf;
    private int creditos;
    private TipoComprador tipoComprador;
    private final TipoUsuario tipoUsuario;
    
    public Usuario(TipoComprador tipoComprador, TipoUsuario tipoUsuario) {
        this.tipoComprador = tipoComprador;
        this.tipoUsuario = tipoUsuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getCreditos() {
        return creditos;
    }

    public void setCreditos(int creditos) {
        this.creditos = creditos;
    }

    public void setUser(String user){
        this.user = user;
    }
    
    public String getUser() {
        return user;
    }

    public void setTipoComprador(TipoComprador tipoComprador) {
        this.tipoComprador = tipoComprador;
    }

    public TipoComprador getTipoComprador() {
        return tipoComprador;
    }

    public TipoUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
}
