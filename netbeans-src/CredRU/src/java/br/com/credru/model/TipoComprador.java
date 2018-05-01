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
public enum TipoComprador {
    RESIDENTE(1, 0.0, false),
    NORMAL(2, 5.5, true),
    ALTORIZADO(3, 0.0, false),
    DESCONTO(4, 1.1, true);
    
    private final int id;
    private final double valor;
    private final boolean comprar;

    private TipoComprador(int id, double valor, boolean comprar) {
        this.id = id;
        this.valor = valor;
        this.comprar = comprar;
    }
    
    public static boolean podeCompar(TipoComprador comprador){
        return comprador.comprar;
    }
    
    public static double valorAPagar(TipoComprador comprador)
    {
        if(comprador.comprar){
            return comprador.valor;
        }
        
        throw new IllegalArgumentException("Esse usuário não pode comprar");
    }
    
    public static TipoComprador getTipoComprador(int id){
        for(TipoComprador tt : TipoComprador.values()){
            if(tt.id == id){
                return tt;
            }
        }
        throw new IllegalArgumentException("O id passado não corresponde a nenhum Tipo de Comprador");
    }
    
    public static int getId(TipoComprador tt){
        return tt.id;
    }
}
