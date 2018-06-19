/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.teste;

import br.com.credru.controller.Cadastrar;
import br.com.credru.dao.FabricaDAO;
import br.com.credru.dao.RestauranteDAO;
import br.com.credru.model.Alimento;
import br.com.credru.model.Categoria;
import br.com.credru.model.LocalDate;
import br.com.credru.model.Refeicao;
import br.com.credru.model.Restaurante;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Soriano
 */
public class CadastroRestaurante {
    public static void main(String[] args){
        Restaurante temp = new Restaurante();
            temp.setNome("Russas");
            
            Map<String, List<Refeicao>> mm = temp.getRefeicoes();
            
            List<Refeicao> refei = new ArrayList<>();
            List<Alimento> alim = new ArrayList<>();
            
            Alimento aa = new Alimento();
            aa.setNome("Laranja");
            aa.setCategoria(Categoria.SUCO);
            alim.add(aa);
            
            LocalDate dd = new LocalDate(16, 3, 6, 2018);
            Refeicao rr = new Refeicao();
            rr.setAlimentos(alim);
            rr.setData(dd);
            refei.add(rr);
            
            
            mm.put(dd.toString(), refei);
            temp.setRefeicoes(mm);
            Cadastrar.cadastrarRestaurante(temp);
    }
}
