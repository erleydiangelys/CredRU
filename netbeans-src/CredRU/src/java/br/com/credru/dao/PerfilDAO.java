/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.credru.dao;

import br.com.credru.model.Perfil;
import br.com.credru.model.TipoPerfil;
import java.util.List;

/**
 *
 * @author Soriano
 */
public interface PerfilDAO {
    public boolean setPerfil(Perfil p);
    public Perfil getPerfil(TipoPerfil tipo);
    public List<Perfil> getPerfil();
    public boolean editPerfil(Perfil p1, Perfil p2);
    public boolean removerPerfil(Perfil p);
    
}
