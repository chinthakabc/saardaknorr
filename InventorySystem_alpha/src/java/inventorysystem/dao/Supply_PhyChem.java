
package inventorysystem.dao;

import java.util.StringTokenizer;
import org.apache.torque.om.Persistent;

/**
 * The skeleton for this class was autogenerated by Torque on:
 *
 * [Mon Mar 15 20:34:49 SGT 2010]
 *
 * You should add additional methods to this class to meet the
 * application requirements.  This class will only be generated as
 * long as it does not already exist in the output directory.
 */
public  class Supply_PhyChem
    extends inventorysystem.dao.BaseSupply_PhyChem
    implements Persistent
{
    public String returnSupplyName(){
        return(this.getName());
    }

    public int returnSupplyQuantity(){
        return(this.getQuantity());
    }

    public static String splitSupplyInfo(String supply){
        String[] st=supply.split("\r");
        StringTokenizer st2=new StringTokenizer(st[3]);
        String name="";
        st2.nextToken();
        st2.nextToken();
        while(st2.hasMoreTokens()){
            name += st2.nextToken()+" ";
        }
        return name;
    }


    public static boolean checkIfValidInput(String supplyName, String supplyType, String supplyQuantity, String supplyLocation){
        if(supplyName.isEmpty()||supplyType.equals("novalue")||supplyQuantity.isEmpty()||supplyLocation.equals("novalue")){
            return false;
        }
        return true;
    }
}
