
package inventorysystem.dao;


import org.apache.torque.om.Persistent;

/**
 * The skeleton for this class was autogenerated by Torque on:
 *
 * [Wed Feb 10 13:22:22 SGT 2010]
 *
 * You should add additional methods to this class to meet the
 * application requirements.  This class will only be generated as
 * long as it does not already exist in the output directory.
 */
public  class User extends inventorysystem.dao.BaseUser implements Persistent
{
    public User(){
    }
    
    public String returnUserInfo(){
        String name = this.getFirstName()+" "+this.getLastName();
        String div = this.getDivision();
        String user = this.getUserName()+":"+name+":"+div;
        return(user);

    }

    /***LOGIN/LOGOUT****/
    public static boolean checkIfValidInput(String username, String password){
    if(username.isEmpty()||password.isEmpty()){
            return false;
        }
        return true;
    }

    public static boolean contains(String username, String password){
        for(int i=0;i<inventorysystem.dao.UserPeer.retrieveActiveUsers().size();i++)
        {
            inventorysystem.dao.User userL1= (inventorysystem.dao.User)inventorysystem.dao.UserPeer.retrieveActiveUsers().get(i);
            inventorysystem.dao.User userL2= (inventorysystem.dao.User)inventorysystem.dao.UserPeer.retrieveUser(userL1.getUserName());
            if(userL2.getUserName()==null){
                continue;
            }else{
                if(userL2.getPassword().equals(password)){
                    return true;
                }else{
                    break;
                }
            }
        }
        return false;
    }

    public String returnState()
    {
        Boolean v = this.getState();
        return v.toString();
    }

    public String returnStatus()
    {
        Boolean v = this.getStatus();
        return v.toString();
    }

    /***LOGIN/LOGOUT****/
}
