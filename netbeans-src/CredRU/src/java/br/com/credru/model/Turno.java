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
public enum Turno {
    ALMOCO(1),
    JANTAR(2);
    
    private final int id;
    
    private Turno(int id){
        this.id = id;
    }
    
    public static int getId(Turno turno){
        return turno.id;
    }
    
    public static Turno getTurno(int id){
        if (id < 1 || id > 2) {
            throw new IllegalArgumentException("O id passado não corresponde a nenhum Tipo de Turno");
        }
        if(id == 1){
            return Turno.ALMOCO;
        }
        
        return Turno.JANTAR;
    }
}
