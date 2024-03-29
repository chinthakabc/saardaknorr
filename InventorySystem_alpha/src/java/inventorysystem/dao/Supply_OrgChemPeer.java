package inventorysystem.dao;

import java.util.ArrayList;
import java.util.List;
import org.apache.torque.util.Criteria;

/**
 * The skeleton for this class was autogenerated by Torque on:
 *
 * [Sun Mar 21 10:48:53 SGT 2010]
 *
 *  You should add additional methods to this class to meet the
 *  application requirements.  This class will only be generated as
 *  long as it does not already exist in the output directory.
 */
public class Supply_OrgChemPeer
    extends inventorysystem.dao.BaseSupply_OrgChemPeer
{
    public static List<Supply_OrgChem> retrieveAllSupplies(){
        Criteria criteria = new Criteria();
        try{
            return (List<Supply_OrgChem>)Supply_OrgChemPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<Supply_OrgChem>();
        }
    }

    public static Supply_OrgChem retrieveSupply(String supplyname){
        Criteria criteria = new Criteria();
        criteria.add(Supply_OrgChemPeer.NAME, supplyname);
        try{
            return (Supply_OrgChem)Supply_OrgChemPeer.doSelect(criteria).get(0);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static List<Supply_OrgChem> retrieveSuppliesByType(String supplyType){
        Criteria criteria = new Criteria();
        criteria.add(Supply_OrgChemPeer.TYPE, supplyType);
        try{
            return (List<Supply_OrgChem>)Supply_OrgChemPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<Supply_OrgChem>();
        }
    }

    public static boolean editSupply(String supplyName, String supplyType, String supplyQuantity, String amount, String unit){

        Criteria selectCriteria = new Criteria();
        selectCriteria.add(Supply_OrgChemPeer.NAME, supplyName);

        Criteria criteria = new Criteria();
        criteria.add(Supply_OrgChemPeer.NAME, supplyName);
        criteria.add(Supply_OrgChemPeer.TYPE, supplyType);
        criteria.add(Supply_OrgChemPeer.QUANTITY, Integer.parseInt(supplyQuantity));


        if(amount.isEmpty()){
            criteria.add(Supply_OrgChemPeer.AMOUNT, null);
        }else{
            criteria.add(Supply_OrgChemPeer.AMOUNT, Integer.parseInt(amount));
        }
        if(unit.equals("novalue")){
            criteria.add(Supply_OrgChemPeer.UNIT, null);
        }else{
            criteria.add(Supply_OrgChemPeer.UNIT, unit);
        }

        try{
            Supply_OrgChemPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean addSupply(String supplyName, String supplyType, String supplyQuantity, String amount, String unit){

        Criteria criteria = new Criteria();
        criteria.add(Supply_OrgChemPeer.NAME, supplyName);
        criteria.add(Supply_OrgChemPeer.TYPE, supplyType);
        criteria.add(Supply_OrgChemPeer.QUANTITY, Integer.parseInt(supplyQuantity));


        if(amount.isEmpty()){
            criteria.add(Supply_OrgChemPeer.AMOUNT, null);
        }else{
            criteria.add(Supply_OrgChemPeer.AMOUNT, Integer.parseInt(amount));
        }
        if(unit.equals("novalue")){
            criteria.add(Supply_OrgChemPeer.UNIT, null);
        }else{
            criteria.add(Supply_OrgChemPeer.UNIT, unit);
        }

        try{
            Supply_OrgChemPeer.doInsert(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteSupply(String supplyName){
        Criteria criteria = new Criteria();
        criteria.add(Supply_OrgChemPeer.NAME, supplyName);
        try{
            Supply_OrgChemPeer.doDelete(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }

     }
}
