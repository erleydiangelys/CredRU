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
public class Alimento {
    private long id;
    private String nome;
    private float pesoG;
    private float valorCalorico;
    private double preco;
    private String marca;
    
    public Alimento(){
        
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getPesoG() {
        return pesoG;
    }

    public void setPesoG(float pesoG) {
        this.pesoG = pesoG;
    }

    public float getValorCalorico() {
        return valorCalorico;
    }

    public void setValorCalorico(float valorCalorico) {
        this.valorCalorico = valorCalorico;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
    
    
}
