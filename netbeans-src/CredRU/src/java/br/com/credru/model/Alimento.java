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
    
    private String nome;
    private String observacao;
    private Categoria categoria;
    private float gramas;
    private float valorCalorico;
    private float carboidratos;
    private float proteinas;
    private float lipidios;

    public Alimento() {
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public float getGramas() {
        return gramas;
    }

    public void setGramas(float gramas) {
        this.gramas = gramas;
    }

    public float getValorCalorico() {
        return valorCalorico;
    }

    public void setValorCalorico(float valorCalorico) {
        this.valorCalorico = valorCalorico;
    }

    public float getCarboidratos() {
        return carboidratos;
    }

    public void setCarboidratos(float carboidratos) {
        this.carboidratos = carboidratos;
    }

    public float getProteinas() {
        return proteinas;
    }

    public void setProteinas(float proteinas) {
        this.proteinas = proteinas;
    }

    public float getLipidios() {
        return lipidios;
    }

    public void setLipidios(float lipidios) {
        this.lipidios = lipidios;
    }
    
    
}
