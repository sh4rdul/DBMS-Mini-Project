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
class user_vet {
    private int animal_ID, weight, feed_count,endangered_S,preg_S,alive,injury_S;
    private String sex;
    
    public user_vet(int animal_ID, int endangered_S, String sex, int preg_S, int weight, int feed_count, int alive,int injury_S)
    {
        this.animal_ID = animal_ID;
        this.endangered_S = endangered_S;
        this.sex = sex;
        this.preg_S = preg_S;
        this.weight = weight;
        this.feed_count = feed_count;
        this.alive = alive;
        this.injury_S = injury_S;
        
    }
    
    public int getanimal_ID()
    {
        return animal_ID;
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
