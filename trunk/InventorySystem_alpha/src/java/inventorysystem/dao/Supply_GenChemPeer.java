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
public class Supply_GenChemPeer
    extends inventorysystem.dao.BaseSupply_GenChemPeer
{
 public static List<Supply_GenChem> retrieveAllSupplies(){
        Criteria criteria = new Criteria();
        try{
            return (List<Supply_GenChem>)Supply_GenChemPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<Supply_GenChem>();
        }
    }

    public static Supply_GenChem retrieveSupply(String supplyname){
        Criteria criteria = new Criteria();
        criteria.add(Supply_GenChemPeer.NAME, supplyname);
        try{
            return (Supply_GenChem)Supply_GenChemPeer.doSelect(criteria).get(0);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static List<Supply_GenChem> retrieveSuppliesByType(String supplyType){
        Criteria criteria = new Criteria();
        criteria.add(Supply_GenChemPeer.TYPE, supplyType);
        try{
            return (List<Supply_GenChem>)Supply_GenChemPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<Supply_GenChem>();
        }
    }

    public static boolean editSupply(String supplyName, String supplyType, String supplyQuantity, String amount, String unit){

        Criteria selectCriteria = new Criteria();
        selectCriteria.add(Supply_GenChemPeer.NAME, supplyName);

        Criteria criteria = new Criteria();
        criteria.add(Supply_GenChemPeer.NAME, supplyName);
        criteria.add(Supply_GenChemPeer.TYPE, supplyType);
        criteria.add(Supply_GenChemPeer.QUANTITY, Integer.parseInt(supplyQuantity));
        

        if(amount.isEmpty()){
            criteria.add(Supply_GenChemPeer.AMOUNT, null);
        }else{
            criteria.add(Supply_GenChemPeer.AMOUNT, Integer.parseInt(amount));
        }
        if(unit.equals("novalue")){
            criteria.add(Supply_GenChemPeer.UNIT, null);
        }else{
            criteria.add(Supply_GenChemPeer.UNIT, unit);
        }

        try{
            Supply_GenChemPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean addSupply(String supplyName, String supplyType, String supplyQuantity, String amount, String unit){

        Criteria criteria = new Criteria();
        criteria.add(Supply_GenChemPeer.NAME, supplyName);
        criteria.add(Supply_GenChemPeer.TYPE, supplyType);
        criteria.add(Supply_GenChemPeer.QUANTITY, Integer.parseInt(supplyQuantity));
    

        if(amount.isEmpty()){
            criteria.add(Supply_GenChemPeer.AMOUNT, null);
        }else{
            criteria.add(Supply_GenChemPeer.AMOUNT, Integer.parseInt(amount));
        }
        if(unit.equals("novalue")){
            criteria.add(Supply_GenChemPeer.UNIT, null);
        }else{
            criteria.add(Supply_GenChemPeer.UNIT, unit);
        }

        try{
            Supply_GenChemPeer.doInsert(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteSupply(String supplyName){
        Criteria criteria = new Criteria();
        criteria.add(Supply_GenChemPeer.NAME, supplyName);
        try{
            Supply_GenChemPeer.doDelete(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }

     }
}
