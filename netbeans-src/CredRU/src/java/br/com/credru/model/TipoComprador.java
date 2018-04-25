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
    RESIDENTE(0.0, false),
    NORMAL(5.5, true),
    ALTORIZADO(0.0, false),
    DESCONTO(1.1, true);
    
    private final double valor;
    private final boolean comprar;

    private TipoComprador(double valor, boolean comprar) {
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
}
