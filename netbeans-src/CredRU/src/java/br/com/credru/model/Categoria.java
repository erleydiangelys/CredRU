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
public enum Categoria {
    PRINCIPAL(0),
    VEGETARIANO(1),
    SALADA(2),
    GUARDINACAO(3),
    ACOMPANHAMENTO(4),
    SUCO(5),
    SOBREMESA(6),
    BEBIDAS(7),
    PAES(8),
    FRUTAS(9),
    ESPECIAL(10);
    
    private final int codigo;

    private Categoria(int codigo) {
        this.codigo = codigo;
    }
    
    public static int getCodigo(Categoria cat){
        return cat.codigo;
    }
    
    public static Categoria getCategoria(int codigo) throws IllegalArgumentException{
        if(codigo == 0){
            return Categoria.PRINCIPAL;
        }
        if(codigo == 1){
            return Categoria.VEGETARIANO;
        }
        if(codigo == 2){
            return Categoria.SALADA;
        }
        if(codigo == 3){
            return Categoria.GUARDINACAO;
        }
        if(codigo == 4){
            return Categoria.ACOMPANHAMENTO;
        }
        if(codigo == 5){
            return Categoria.SUCO;
        }
        if(codigo == 6){
            return Categoria.SOBREMESA;
        }
        if(codigo == 7){
            return Categoria.BEBIDAS;
        }
        if(codigo == 8){
            return Categoria.PAES;
        }
        if(codigo == 9){
            return Categoria.FRUTAS;
        }
        if(codigo == 10){
            return Categoria.ESPECIAL;
        }
        
        throw new IllegalArgumentException();
    }
}
