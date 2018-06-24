/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.LocalDate;
import br.com.credru.model.LocalTime;
import br.com.credru.model.Transacao;
import br.com.credru.model.Usuario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class TransacaoDAOList implements TransacaoDAO{
    private static List<Transacao> transacoes = new ArrayList<Transacao>();

    @Override
    public boolean setTransacao(Transacao t) {
        for(Transacao temp : TransacaoDAOList.transacoes){
            if(temp.getUser().getUserName().equals(t.getUser().getUserName()) && //username
                    temp.getData().toString().equals(t.getData().toString()) &&  //data
                    temp.getHora().toString().equals(t.getHora().toString())){   //horario
                
                return false;
            }
        }
        TransacaoDAOList.transacoes.add(t);
        
        return true;
    }

    @Override
    public Transacao getTransacao(LocalDate data, LocalTime tempo) {
        for(Transacao temp : TransacaoDAOList.transacoes){
            if(temp.getData().toString().equals(data.toString()) &&  //data
                    temp.getHora().toString().equals(tempo.toString())){   //horario
                
                return temp;
            }
        }
        
        return null;
    }

    @Override
    public List<Transacao> getTransacao() {
        return new ArrayList<>(TransacaoDAOList.transacoes);
    }

    @Override
    public boolean editTransacao(Transacao t1, Transacao t2) {
        if((t1.getData().toString().equals(t1.getData().toString()) &&  //data
                t1.getHora().toString().equals(t2.getHora().toString())) || //hora
                this.getTransacao(t2.getData(), t2.getHora()) != null){
            
            for(int i = 0 ; i < TransacaoDAOList.transacoes.size(); i++){
                
                Transacao temp = TransacaoDAOList.transacoes.get(i);
                
                if(temp.getData().toString().equals(t1.getData().toString()) && 
                        temp.getHora().toString().equals(t1.getHora().toString())){
                    
                    TransacaoDAOList.transacoes.set(i, t2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean removeTransacao(Transacao t) {
        for(int i = 0; i < TransacaoDAOList.transacoes.size(); i++){
            Transacao temp = TransacaoDAOList.transacoes.get(i);
            
            if(temp.getData().toString().equals(t.getData().toString()) && 
                    temp.getHora().toString().equals(t.getHora().toString())){
                TransacaoDAOList.transacoes.remove(i);
                return true;
            }
        }
        return false;
    }

    @Override
    public List<Transacao> getTransacao(Usuario u) {
        List<Transacao> transacoesTemp = new ArrayList<>();
        
        for(Transacao t : TransacaoDAOList.transacoes){
            if(t.getUser().getUserName().equals(u.getUserName())){
                transacoesTemp.add(t);
            }
        }
        return transacoesTemp;
    }
    
}
