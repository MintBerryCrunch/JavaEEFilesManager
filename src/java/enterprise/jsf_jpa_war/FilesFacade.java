/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package enterprise.jsf_jpa_war;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Элвин
 */
@Stateless
public class FilesFacade extends AbstractFacade<Files> {
    @PersistenceContext(unitName = "jsf-jpa-war")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FilesFacade() {
        super(Files.class);
    }
    
}
