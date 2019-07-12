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
class user_guard {
    private int animal_ID, feed_count,alive,injury_S;
    
    public user_guard(int animal_ID, int feed_count, int alive, int injury_S)
    {
        this.animal_ID = animal_ID;
        this.feed_count = feed_count;
        this.alive = alive;
        this.injury_S = injury_S;
        
    }
    
    public int getanimal_ID()
    {
        return animal_ID;
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
