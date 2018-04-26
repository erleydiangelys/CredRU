/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Aluno;
import java.util.ArrayList;

/**
 *
 * @author Soriano
 */
public class AlunoDAO {
    private static ArrayList<Aluno> alunos = new ArrayList<>();
    
    public AlunoDAO(){
        
    }
    
    public static Aluno getAluno(long matricula){
        for(Aluno a : alunos){
            if(a.getMatricula() == matricula){
                return a;
            }
        }
        return null;
    }
    
    public static ArrayList<Aluno> getAluno(){
        return (ArrayList<Aluno>) alunos.clone();
    }
    
    public static void setAluno(Aluno aluno){
        alunos.add(aluno);
    }
}
