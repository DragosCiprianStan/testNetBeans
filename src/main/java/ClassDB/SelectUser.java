/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ClassDB;


import Entity.Player;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
/**
 *
 * @author Retro
 */
public class SelectUser {
   private static final Logger LOG = Logger.getLogger(PlayerDetaly.class.getName());

     @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;
    
    public PlayerDetaly findById(Integer userId) {
        Player user = em.find(Player.class, userId);
        return new PlayerDetaly(user.getId(),user.getFirstname(),user.getLastname(),user.getJerseynumber(),user.getLastspokenwords());
    }
    public List<PlayerDetaly> getAllUsers() {
        LOG.info("getAllUsers");
        try {
            Query query = em.createQuery("SELECT * FROM PLAYER");
            List<Player> users = (List<Player>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) {
           throw new EJBException(ex);
        }
    }
    private List<PlayerDetaly> copyUsersToDetails(List<Player> users) {
        List<PlayerDetaly> detailsList = new ArrayList<>();
        for (Player user : users) {
            PlayerDetaly userDetails = new PlayerDetaly(user.getId(),
                    user.getFirstname(),
                    user.getLastname(),
                    user.getJerseynumber(),
                    user.getLastspokenwords());
            detailsList.add(userDetails);
        }
        return detailsList;
    }
}
