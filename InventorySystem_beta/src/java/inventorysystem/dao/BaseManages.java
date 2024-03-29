package inventorysystem.dao;


import java.math.BigDecimal;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Date;
import java.util.Collections;
import java.util.List;

import org.apache.commons.lang.ObjectUtils;
import org.apache.torque.TorqueException;
import org.apache.torque.om.BaseObject;
import org.apache.torque.om.ComboKey;
import org.apache.torque.om.DateKey;
import org.apache.torque.om.NumberKey;
import org.apache.torque.om.ObjectKey;
import org.apache.torque.om.SimpleKey;
import org.apache.torque.om.StringKey;
import org.apache.torque.om.Persistent;
import org.apache.torque.util.Criteria;
import org.apache.torque.util.Transaction;

  
    
  
/**
 * This class was autogenerated by Torque on:
 *
 * [Wed Mar 03 16:45:55 CST 2010]
 *
 * You should not use this class directly.  It should not even be
 * extended all references should be to Manages
 */
public abstract class BaseManages extends BaseObject
{
    /** The Peer class */
    private static final ManagesPeer peer =
        new ManagesPeer();

        
    /** The value for the user_ID field */
    private int user_ID;
      
    /** The value for the supply_ID field */
    private int supply_ID;
  
    
    /**
     * Get the User_ID
     *
     * @return int
     */
    public int getUser_ID()
    {
        return user_ID;
    }

                              
    /**
     * Set the value of User_ID
     *
     * @param v new value
     */
    public void setUser_ID(int v) throws TorqueException
    {
    
                  if (this.user_ID != v)
              {
            this.user_ID = v;
            setModified(true);
        }
    
                          
                if (aUser != null && !(aUser.getUser_ID() == v))
                {
            aUser = null;
        }
      
              }
  
    /**
     * Get the Supply_ID
     *
     * @return int
     */
    public int getSupply_ID()
    {
        return supply_ID;
    }

                              
    /**
     * Set the value of Supply_ID
     *
     * @param v new value
     */
    public void setSupply_ID(int v) throws TorqueException
    {
    
                  if (this.supply_ID != v)
              {
            this.supply_ID = v;
            setModified(true);
        }
    
                          
                if (aSupply != null && !(aSupply.getSupply_ID() == v))
                {
            aSupply = null;
        }
      
              }
  
      
    
                  
    
        private User aUser;

    /**
     * Declares an association between this object and a User object
     *
     * @param v User
     * @throws TorqueException
     */
    public void setUser(User v) throws TorqueException
    {
            if (v == null)
        {
                    setUser_ID(0);
                  }
        else
        {
            setUser_ID(v.getUser_ID());
        }
                aUser = v;
    }

                                            
    /**
     * Get the associated User object
     *
     * @return the associated User object
     * @throws TorqueException
     */
    public User getUser() throws TorqueException
    {
        if (aUser == null && (this.user_ID > 0))
        {
                          aUser = UserPeer.retrieveByPK(SimpleKey.keyFor(this.user_ID));
              
            /* The following can be used instead of the line above to
               guarantee the related object contains a reference
               to this object, but this level of coupling
               may be undesirable in many circumstances.
               As it can lead to a db query with many results that may
               never be used.
               User obj = UserPeer.retrieveByPK(this.user_ID);
               obj.addManagess(this);
            */
        }
        return aUser;
    }

    /**
     * Provides convenient way to set a relationship based on a
     * ObjectKey.  e.g.
     * <code>bar.setFooKey(foo.getPrimaryKey())</code>
     *
           */
    public void setUserKey(ObjectKey key) throws TorqueException
    {
      
                        setUser_ID(((NumberKey) key).intValue());
                  }
    
    
                  
    
        private Supply aSupply;

    /**
     * Declares an association between this object and a Supply object
     *
     * @param v Supply
     * @throws TorqueException
     */
    public void setSupply(Supply v) throws TorqueException
    {
            if (v == null)
        {
                    setSupply_ID(0);
                  }
        else
        {
            setSupply_ID(v.getSupply_ID());
        }
                aSupply = v;
    }

                                            
    /**
     * Get the associated Supply object
     *
     * @return the associated Supply object
     * @throws TorqueException
     */
    public Supply getSupply() throws TorqueException
    {
        if (aSupply == null && (this.supply_ID > 0))
        {
                          aSupply = SupplyPeer.retrieveByPK(SimpleKey.keyFor(this.supply_ID));
              
            /* The following can be used instead of the line above to
               guarantee the related object contains a reference
               to this object, but this level of coupling
               may be undesirable in many circumstances.
               As it can lead to a db query with many results that may
               never be used.
               Supply obj = SupplyPeer.retrieveByPK(this.supply_ID);
               obj.addManagess(this);
            */
        }
        return aSupply;
    }

    /**
     * Provides convenient way to set a relationship based on a
     * ObjectKey.  e.g.
     * <code>bar.setFooKey(foo.getPrimaryKey())</code>
     *
           */
    public void setSupplyKey(ObjectKey key) throws TorqueException
    {
      
                        setSupply_ID(((NumberKey) key).intValue());
                  }
       
                
    private static List fieldNames = null;

    /**
     * Generate a list of field names.
     *
     * @return a list of field names
     */
    public static synchronized List getFieldNames()
    {
        if (fieldNames == null)
        {
            fieldNames = new ArrayList();
              fieldNames.add("User_ID");
              fieldNames.add("Supply_ID");
              fieldNames = Collections.unmodifiableList(fieldNames);
        }
        return fieldNames;
    }

    /**
     * Retrieves a field from the object by name passed in as a String.
     *
     * @param name field name
     * @return value
     */
    public Object getByName(String name)
    {
          if (name.equals("User_ID"))
        {
                return new Integer(getUser_ID());
            }
          if (name.equals("Supply_ID"))
        {
                return new Integer(getSupply_ID());
            }
          return null;
    }
    
    /**
     * Retrieves a field from the object by name passed in
     * as a String.  The String must be one of the static
     * Strings defined in this Class' Peer.
     *
     * @param name peer name
     * @return value
     */
    public Object getByPeerName(String name)
    {
          if (name.equals(ManagesPeer.USER_ID))
        {
                return new Integer(getUser_ID());
            }
          if (name.equals(ManagesPeer.SUPPLY_ID))
        {
                return new Integer(getSupply_ID());
            }
          return null;
    }

    /**
     * Retrieves a field from the object by Position as specified
     * in the xml schema.  Zero-based.
     *
     * @param pos position in xml schema
     * @return value
     */
    public Object getByPosition(int pos)
    {
            if (pos == 0)
        {
                return new Integer(getUser_ID());
            }
              if (pos == 1)
        {
                return new Integer(getSupply_ID());
            }
              return null;
    }
     
    /**
     * Stores the object in the database.  If the object is new,
     * it inserts it; otherwise an update is performed.
     *
     * @throws Exception
     */
    public void save() throws Exception
    {
          save(ManagesPeer.getMapBuilder()
                .getDatabaseMap().getName());
      }

    /**
     * Stores the object in the database.  If the object is new,
     * it inserts it; otherwise an update is performed.
       * Note: this code is here because the method body is
     * auto-generated conditionally and therefore needs to be
     * in this file instead of in the super class, BaseObject.
       *
     * @param dbName
     * @throws TorqueException
     */
    public void save(String dbName) throws TorqueException
    {
        Connection con = null;
          try
        {
            con = Transaction.begin(dbName);
            save(con);
            Transaction.commit(con);
        }
        catch(TorqueException e)
        {
            Transaction.safeRollback(con);
            throw e;
        }
      }

      /** flag to prevent endless save loop, if this object is referenced
        by another object which falls in this transaction. */
    private boolean alreadyInSave = false;
      /**
     * Stores the object in the database.  If the object is new,
     * it inserts it; otherwise an update is performed.  This method
     * is meant to be used as part of a transaction, otherwise use
     * the save() method and the connection details will be handled
     * internally
     *
     * @param con
     * @throws TorqueException
     */
    public void save(Connection con) throws TorqueException
    {
          if (!alreadyInSave)
        {
            alreadyInSave = true;


  
            // If this object has been modified, then save it to the database.
            if (isModified())
            {
                if (isNew())
                {
                    ManagesPeer.doInsert((Manages) this, con);
                    setNew(false);
                }
                else
                {
                    ManagesPeer.doUpdate((Manages) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


                                                
  
    private final SimpleKey[] pks = new SimpleKey[2];
    private final ComboKey comboPK = new ComboKey(pks);
    
    /**
     * Set the PrimaryKey with an ObjectKey
     *
     * @param key
     */
    public void setPrimaryKey(ObjectKey key) throws TorqueException
    {
        SimpleKey[] keys = (SimpleKey[]) key.getValue();
        SimpleKey tmpKey = null;
                      setUser_ID(((NumberKey)keys[0]).intValue());
                        setSupply_ID(((NumberKey)keys[1]).intValue());
              }

    /**
     * Set the PrimaryKey using SimpleKeys.
     *
         * @param int user_ID
         * @param int supply_ID
         */
    public void setPrimaryKey( int user_ID, int supply_ID)
        throws TorqueException
    {
            setUser_ID(user_ID);
            setSupply_ID(supply_ID);
        }

    /**
     * Set the PrimaryKey using a String.
     */
    public void setPrimaryKey(String key) throws TorqueException
    {
        setPrimaryKey(new ComboKey(key));
    }
  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
              pks[0] = SimpleKey.keyFor(getUser_ID());
                  pks[1] = SimpleKey.keyFor(getSupply_ID());
                  return comboPK;
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public Manages copy() throws TorqueException
    {
        return copyInto(new Manages());
    }
  
    protected Manages copyInto(Manages copyObj) throws TorqueException
    {
          copyObj.setUser_ID(user_ID);
          copyObj.setSupply_ID(supply_ID);
  
                    copyObj.setUser_ID(0);
                              copyObj.setSupply_ID(0);
            
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public ManagesPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("Manages:\n");
        str.append("User_ID = ")
           .append(getUser_ID())
           .append("\n");
        str.append("Supply_ID = ")
           .append(getSupply_ID())
           .append("\n");
        return(str.toString());
    }
}
