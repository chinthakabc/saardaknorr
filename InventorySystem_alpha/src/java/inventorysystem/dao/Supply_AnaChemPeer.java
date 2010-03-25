package inventorysystem.dao;

import java.util.ArrayList;
import java.util.List;
import org.apache.torque.util.Criteria;


/**
 * The skeleton for this class was autogenerated by Torque on:
 *
 * [Mon Mar 15 20:34:49 SGT 2010]
 *
 *  You should add additional methods to this class to meet the
 *  application requirements.  This class will only be generated as
 *  long as it does not already exist in the output directory.
 */
public class Supply_AnaChemPeer
    extends inventorysystem.dao.BaseSupply_AnaChemPeer
{
    public static List<Supply_AnaChem> retrieveAllSupplies(){
        Criteria criteria = new Criteria();
        try{
            return (List<Supply_AnaChem>)Supply_AnaChemPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<Supply_AnaChem>();
        }
    }

    public static Supply_AnaChem retrieveSupply(String supplyname){
        Criteria criteria = new Criteria();
        criteria.add(Supply_AnaChemPeer.NAME, supplyname);
        try{
            return (Supply_AnaChem)Supply_AnaChemPeer.doSelect(criteria).get(0);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static List<Supply_AnaChem> retrieveSuppliesByType(String supplyType){
        Criteria criteria = new Criteria();
        criteria.add(Supply_AnaChemPeer.TYPE, supplyType);
        try{
            return (List<Supply_AnaChem>)Supply_AnaChemPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<Supply_AnaChem>();
        }
    }

    public static boolean editSupply(String supplyName, String supplyType, String supplyQuantity, String amount, String unit){

        Criteria selectCriteria = new Criteria();
        selectCriteria.add(Supply_AnaChemPeer.NAME, supplyName);

        Criteria criteria = new Criteria();
        criteria.add(Supply_AnaChemPeer.NAME, supplyName);
        criteria.add(Supply_AnaChemPeer.TYPE, supplyType);
        criteria.add(Supply_AnaChemPeer.QUANTITY, Integer.parseInt(supplyQuantity));


        if(amount.isEmpty()){
            criteria.add(Supply_AnaChemPeer.AMOUNT, null);
        }else{
            criteria.add(Supply_AnaChemPeer.AMOUNT, Integer.parseInt(amount));
        }
        if(unit.equals("novalue")){
            criteria.add(Supply_AnaChemPeer.UNIT, null);
        }else{
            criteria.add(Supply_AnaChemPeer.UNIT, unit);
        }

        try{
            Supply_AnaChemPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean addSupply(String supplyName, String supplyType, String supplyQuantity, String amount, String unit){

        Criteria criteria = new Criteria();
        criteria.add(Supply_AnaChemPeer.NAME, supplyName);
        criteria.add(Supply_AnaChemPeer.TYPE, supplyType);
        criteria.add(Supply_AnaChemPeer.QUANTITY, Integer.parseInt(supplyQuantity));


        if(amount.isEmpty()){
            criteria.add(Supply_AnaChemPeer.AMOUNT, null);
        }else{
            criteria.add(Supply_AnaChemPeer.AMOUNT, Integer.parseInt(amount));
        }
        if(unit.equals("novalue")){
            criteria.add(Supply_AnaChemPeer.UNIT, null);
        }else{
            criteria.add(Supply_AnaChemPeer.UNIT, unit);
        }

        try{
            Supply_AnaChemPeer.doInsert(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteSupply(String supplyName){
        Criteria criteria = new Criteria();
        criteria.add(Supply_AnaChemPeer.NAME, supplyName);
        try{
            Supply_AnaChemPeer.doDelete(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }

     }
}