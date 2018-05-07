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
public enum TipoUsuario {
    ADMIN(1),
    COMPRADOR(2),
    NUTRICIONISTA(3),
    SCANIADOR(4);
    
    private final int id;
    
    private TipoUsuario(int id){
        this.id = id;
    }
    
    public static TipoUsuario getTipoUsuario(int id){
        for(TipoUsuario u : TipoUsuario.values()){
            if(u.id == id){
                return u;
            }
        }
        throw new IllegalArgumentException("O id passado não corresponde a nenhum Tipo de Usuário");
    }
    
    public static int getId(TipoUsuario user){
        return user.id;
    }
}
