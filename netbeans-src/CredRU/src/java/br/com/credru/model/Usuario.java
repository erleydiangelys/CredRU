/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.ArrayList;

/**
 *
 * @author Soriano
 */
public class Usuario {
    private String nome;
    private String userName;
    private String senha;
    private int credito;
    private Perfil perfil;
    private boolean ativo;
    private ArrayList<Transacao> transacoes;
    private NivelAcesso nivelAcesso;
}
