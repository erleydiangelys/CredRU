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
public enum TipoTransacao {
    COMPRA(1),
    DEBITO(2);
    
    private final int codigo;

    private TipoTransacao(int codigo) {
        this.codigo = codigo;
    }
    
    public static int getCodigo(TipoTransacao t){
        return t.codigo;
    }
    
    public static TipoTransacao getTipoTransacao(int codigo) throws IllegalArgumentException{
        if(codigo == 1){
            return TipoTransacao.COMPRA;
        }
        
        if(codigo == 2){
            return TipoTransacao.DEBITO;
        }
        
        throw new IllegalArgumentException();
    }
    
}
