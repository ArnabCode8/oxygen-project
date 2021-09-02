package com.oxygen.OxygenProject.Controllers;

import java.util.Comparator;

import com.oxygen.OxygenProject.Entity.Org;

public class DateComparator implements Comparator<Org> 
{
    public int compare(Org or1,Org or2)
    {
    	DateDemo dd = new DateDemo();
    	return dd.subtractNormalFormatDateString(or1.getDate(), or2.getDate());
    }

}
