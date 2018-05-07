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
public class Admin {
    private Usuario usuario;
    private FabricaUsuario fabrica;
    
    public Admin(){
        
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public FabricaUsuario getFabrica() {
        return fabrica;
    }

    public void setFabrica(FabricaUsuario fabrica) {
        this.fabrica = fabrica;
    }
    
    /**
     * Não sei como será o cadastro, poís dependendo de quem
     * ele queira cadastrar ele irá receber um tipo de objeto diferente,
     * podendo ser Admin, Aluno, Professor, Nutricionista, Servidor.
     */
    public void cadastrarUsuario(){
        
    }
    
    public void venderCredito(Usuario comprador){
        
    }
}
