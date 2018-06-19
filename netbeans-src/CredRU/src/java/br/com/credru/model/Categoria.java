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
    PRINCIPAL(0, "Principal"),
    VEGETARIANO(1,"Vegetariano"),
    SALADA(2,"Salada"),
    GUARDINACAO(3, "Guadinação"),
    ACOMPANHAMENTO(4,"Acompanhamento"),
    SUCO(5,"Suco"),
    SOBREMESA(6, "Sobemesa"),
    BEBIDAS(7, "Bebidas"),
    PAES(8, "Pães"),
    FRUTAS(9, "Frutas"),
    ESPECIAL(10, "Especial");
    
    private final int codigo;
    private final String descricao;

    private Categoria(int codigo, String descricao) {
        this.codigo = codigo;
        this.descricao = descricao;
    }
    
    public static String getDescricao(Categoria c){
        return c.descricao;
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
