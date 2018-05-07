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
public interface FabricaUsuario {
    
    public Admin criarAdmin();
    
    public Nutricionista criarNutricionista();
    
    public Aluno criarAluno();
    
    public Aluno criarAluno(int id);
    
    public Professor criarProfessor();
    
    public Servidor criarServidor();
    
    public Scaniador criarScaniador();
    
}
