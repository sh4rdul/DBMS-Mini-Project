/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;

import java.util.Date;

/**
 *
 * @author Shardul
 */
class user {
    private int animal_ID, weight, feed_count,endangered_S,preg_S,alive,injury_S;
    private String species, sex,genus;
    private Date doe;
    
    public user(int animal_ID, String species, String genus, int endangered_S, String sex, int preg_S, int weight, Date doe, int feed_count, int alive,int injury_S)
    {
        this.animal_ID = animal_ID;
        this.species = species;
        this.genus = genus;
        this.endangered_S = endangered_S;
        this.preg_S = preg_S;
        this.sex = sex;
        this.weight = weight;
        this.doe = doe;
        this.feed_count = feed_count;
        this.alive = alive;
        this.injury_S = injury_S;
        
    }
    
    public int getanimal_ID()
    {
        return animal_ID;
    }
    
    public String getspecies()
    {
        return species;
    }
    
    public String getgenus()
    {
        return genus;
    }
        
    public int getendangered_S()
    {
        return endangered_S;
    }
            
    public String getsex()
    {
        return sex;
    }

    public int getpreg_S()
    {
        return preg_S;
    }
                
    public int getweight()
    {
        return weight;
    }
                    
     public Date getdoe()
    {
        return doe;
    }
                        
    public int getfeed_count()
    {
        return feed_count;
    }
    
    public int getalive()
    {
        return alive;
    }
    
    public int getinjury_S()
    {
        return injury_S;
    }
}
