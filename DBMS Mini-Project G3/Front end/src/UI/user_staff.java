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
class user_staff {
    private int employee_id, salary;
    private String name, gender, job, address, phono;
    private Date dob;
    
    public user_staff(int employee_id, String name, String gender, String job, String address, String phono, Date dob, int salary)
    {
        this.employee_id = employee_id;
        this.name = name;
        this.gender = gender;
        this.job = job;
        this.address = address;
        this.phono = phono;
        this.dob = dob;
        this.salary = salary;
    }
    
    public int getemployee_id()
    {
        return employee_id;
    }
    
    public String getname()
    {
        return name;
    }
        
    public String getgender()
    {
        return gender;
    }
        
    public String getjob()
    {
        return job;
    }
            
    public String getaddress()
    {
        return address;
    }
    
    public String getphono()
    {
        return phono;
    }
                    
     public Date getdob()
    {
        return dob;
    }
                        
    public int getsalary()
    {
        return salary;
    }
    
}
