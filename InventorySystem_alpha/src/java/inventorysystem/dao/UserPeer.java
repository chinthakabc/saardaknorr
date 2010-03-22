package inventorysystem.dao;

import java.util.ArrayList;
import java.util.List;
import org.apache.torque.util.Criteria;

public class UserPeer extends inventorysystem.dao.BaseUserPeer {

    public static boolean addUser(String username, String password, String firstname, String middlename,String lastname, String employeenumber, String division,String contactnumber){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.USERNAME, username);
        criteria.add(UserPeer.PASSWORD, password);
        criteria.add(UserPeer.FIRSTNAME, firstname);
        criteria.add(UserPeer.MIDDLENAME, middlename);
        criteria.add(UserPeer.LASTNAME, lastname);
        criteria.add(UserPeer.EMPLOYEENUMBER, employeenumber);
        criteria.add(UserPeer.CONTACTNUMBER, contactnumber);
        criteria.add(UserPeer.DIVISION, division);
        criteria.add(UserPeer.TYPE, "user");
        criteria.add(UserPeer.STATUS, false);
        criteria.add(UserPeer.STATE, 0);

        try{
            UserPeer.doInsert(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static List<User> retrieveInactiveUsers(){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.STATUS, false);
        try{
            return (List<User>)UserPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<User>();
        }
    }

    public static List<User> retrieveActiveUsers(){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.STATUS, true);
        criteria.add(UserPeer.STATE, true);
        try{
            return (List<User>)UserPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<User>();
        }
    }

    public static List<User> retrieveAllUsers(){
        Criteria criteria = new Criteria();
        try{
            return (List<User>)UserPeer.doSelect(criteria);
        }catch(Exception e){
            e.printStackTrace();
            return new ArrayList<User>();
        }
    }

    public static User retrieveUser(String username){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.USERNAME, username);
        try{
            return (User)UserPeer.doSelect(criteria).get(0);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static User retrieveActiveUser(String username){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.USERNAME, username);
        criteria.add(UserPeer.STATUS, true);
        try{
            return (User)UserPeer.doSelect(criteria).get(0);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    public static boolean updatePassword(String username, String password){
        Criteria selectCriteria = new Criteria();
        selectCriteria.add(UserPeer.USERNAME, username);

        Criteria criteria = new Criteria();
        criteria.add(UserPeer.PASSWORD, password);

        try{
            UserPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean activateUser(String username){
        Criteria selectCriteria = new Criteria();
        selectCriteria.add(UserPeer.USERNAME, username);

        Criteria criteria = new Criteria();
        criteria.add(UserPeer.STATUS, true);

        try{
            UserPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deactivateUser(String username){
        Criteria selectCriteria = new Criteria();
        selectCriteria.add(UserPeer.USERNAME, username);

        Criteria criteria = new Criteria();
        criteria.add(UserPeer.STATUS, false);

        try{
            UserPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

	public static boolean stateUser(String username){
        Criteria selectCriteria = new Criteria();
        selectCriteria.add(UserPeer.USERNAME, username);

        Criteria criteria = new Criteria();
        criteria.add(UserPeer.STATE, true);

        try{
            UserPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deStateUser(String username) throws Exception{
        Criteria selectCriteria = new Criteria();
        selectCriteria.add(UserPeer.USERNAME, username);
        User n = (User)UserPeer.doSelect(selectCriteria).get(0);

        Criteria criteria = new Criteria();
        criteria.add(UserPeer.STATE, false);

        try{
            UserPeer.doUpdate(selectCriteria, criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }


    public static boolean deleteUser(String username){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.USERNAME, username);
        try{
            UserPeer.doDelete(criteria);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
	
	
    public static String retrieveUserByID(int user){
        Criteria criteria = new Criteria();
        criteria.add(UserPeer.USER_ID, user);
        try{
            User x = (User)UserPeer.doSelect(criteria).get(0);
            return x.getUserName();
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isExistingAccount(String employeeNumber){
        for(int i = 0;i < retrieveActiveUsers().size(); i++)
        {
            inventorysystem.dao.User userL1= (inventorysystem.dao.User)retrieveActiveUsers().get(i);
            inventorysystem.dao.User userL2= (inventorysystem.dao.User)retrieveUser(userL1.getUserName());
                if(userL2.getEmployeeNumber().equals(employeeNumber))
                    return true;
                else
                    break;
                
        }
        return false;
    }

}
