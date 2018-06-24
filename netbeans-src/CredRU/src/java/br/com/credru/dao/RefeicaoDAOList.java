/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Horario;
import br.com.credru.model.LocalDate;
import br.com.credru.model.Refeicao;
import br.com.credru.model.Restaurante;
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
            if(temp.getRestaurante().getNome().equals(r.getRestaurante().getNome()) && 
                    temp.getData().toString().equals(r.getData().toString()) &&
                    temp.getHorario().getHoraFim().toString().equals(r.getHorario().getHoraFim().toString()) &&
                    temp.getHorario().getHoraInicio().toString().equals(r.getHorario().getHoraInicio().toString())){
                return false;
            }
        }
        RefeicaoDAOList.refeicoes.add(r);
        return true;
    }

    @Override
    public Refeicao getRefeicao(LocalDate data, Horario horario, Restaurante rest) {
        for(Refeicao temp : RefeicaoDAOList.refeicoes){
            if(temp.getRestaurante().getNome().equals(rest.getNome()) && 
                    temp.getData().toString().equals(data.toString()) &&
                    temp.getHorario().getHoraFim().toString().equals(horario.getHoraFim().toString()) &&
                    temp.getHorario().getHoraInicio().toString().equals(horario.getHoraInicio().toString())){
                
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
        if((r1.getRestaurante().getNome().equals(r2.getRestaurante().getNome()) && 
                    r1.getData().toString().equals(r2.getData().toString()) &&
                    r1.getHorario().getHoraFim().toString().equals(r2.getHorario().getHoraFim().toString()) &&
                    r1.getHorario().getHoraInicio().toString().equals(r2.getHorario().getHoraInicio().toString()))
                ||
                this.getRefeicao(r2.getData(), r2.getHorario(), r2.getRestaurante()) == null){
            
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
            
            if(temp.getRestaurante().getNome().equals(r.getRestaurante().getNome()) && 
                    temp.getData().toString().equals(r.getData().toString()) &&
                    temp.getHorario().getHoraFim().toString().equals(r.getHorario().getHoraFim().toString()) &&
                    temp.getHorario().getHoraInicio().toString().equals(r.getHorario().getHoraInicio().toString())){
                RefeicaoDAOList.refeicoes.remove(i);
                return true;
            }
        }
        return false;
    }

    @Override
    public List<Refeicao> getRefeicao(LocalDate data, Restaurante rest) {
        List<Refeicao> resultado = new ArrayList<>();
        
        for (Refeicao r : RefeicaoDAOList.refeicoes) {
            
            if (r.getRestaurante().getNome().equals(rest.getNome()) &&
                    r.getData().toString().equals(data.toString())) {
                resultado.add(r);
            }
        }
        
        return resultado;
    }

    @Override
    public List<Refeicao> getRefeicao(Restaurante rest) {
        List<Refeicao> resultado = new ArrayList<>();

        for(Refeicao r : RefeicaoDAOList.refeicoes){
            if(r.getRestaurante().getNome().equals(rest.getNome())){
                resultado.add(r);
            }
        }
        return resultado;
    }
    
    
}
