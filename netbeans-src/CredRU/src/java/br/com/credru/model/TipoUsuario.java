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
    ADMIN(1, "Permissão realizada somente pelo Administrador"),
    USER(2, "Permissão realizada somente pelo Usuário");
    
    private final int id;
    private final String msgErro;
    
    private TipoUsuario(int id, String msgErro){
        this.id = id;
        this.msgErro = msgErro;
    }
    
    public static String getMsgErro(TipoUsuario tipoUsuario){
        return tipoUsuario.msgErro;
    }
    
    public static String getMsgErro(int id){
        for(TipoUsuario user : TipoUsuario.values()){
            if( id == user.id){
                return user.msgErro;
            }
        }
        throw new IllegalArgumentException("Id não encontrado");
    }
}
