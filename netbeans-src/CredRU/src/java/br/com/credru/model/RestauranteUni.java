/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.model;

import java.util.ArrayList;
import java.util.Map;

/**
 *
 * @author Soriano
 */
public class RestauranteUni {
    private String nome;
    private ArrayList<Horario> horarios;
    private Map<String, ArrayList<Refeicao>> refeicoes;
}
