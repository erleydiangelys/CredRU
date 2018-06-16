/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.dao.RefeicaoDAO;
import br.com.credru.model.Horario;
import br.com.credru.model.LocalDate;
import br.com.credru.model.Refeicao;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Soriano
 */
public class RefeicaoDAOList implements RefeicaoDAO{
    private static List<Refeicao> refeicoes = new ArrayList<>();

    @Override
    public boolean setRefeicao(Refeicao r) {
        for(Refeicao temp : RefeicaoDAOList.refeicoes){
            if(temp.getData().toString().equals(r.getData().toString()) && temp.getHorario().equals(r.getHorario().toString())){
                return false;
            }
        }
        RefeicaoDAOList.refeicoes.add(r);
        return true;
    }

    @Override
    public Refeicao getRefeicao(LocalDate data, Horario horario) {
        for(Refeicao temp : RefeicaoDAOList.refeicoes){
            if(temp.getData().toString().equals(data.toString()) && temp.getHorario().equals(horario.toString())){
                return temp;
            }
        }
        return null;
    }

    @Override
    public List<Refeicao> getRefeicao() {
        return new ArrayList<>(RefeicaoDAOList.refeicoes);
    }

    @Override
    public boolean editRefeicao(Refeicao r1, Refeicao r2) {
        if((r1.getData().toString().equals(r2.getData().toString()) &&
                r1.getHorario().toString().equals(r2.getHorario().toString())) ||
                this.getRefeicao(r2.getData(), r2.getHorario()) == null){
            
            for(int i = 0; i < RefeicaoDAOList.refeicoes.size(); i++){
                Refeicao temp = RefeicaoDAOList.refeicoes.get(i);
                
                if(temp.getData().toString().equals(r1.getData().toString()) && temp.getHorario().toString().equals(r1.getHorario().toString())){
                    RefeicaoDAOList.refeicoes.set(i, r2);
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean removeRefeicao(Refeicao r) {
        for(int i = 0; i < RefeicaoDAOList.refeicoes.size(); i++){
            Refeicao temp = RefeicaoDAOList.refeicoes.get(i);
            
            if(temp.getData().toString().equals(r.getData().toString()) && temp.getHorario().toString().equals(r.getHorario().toString())){
                RefeicaoDAOList.refeicoes.remove(i);
                return true;
            }
        }
        return false;
    }

    @Override
    public List<Refeicao> getRefeicao(LocalDate data) {
        List<Refeicao> resultado = new ArrayList<>();
        
        for (Refeicao r : RefeicaoDAOList.refeicoes) {
            if (r.getData().getAno() == data.getAno()
                    && r.getData().getMes() == data.getMes()
                    && r.getData().getSemana() == data.getSemana()) {

                resultado.add(r);
            }
        }
        
        return resultado;
    }
    
    
}
