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
 * [Sun Mar 21 15:11:40 CST 2010]
 *
 * You should not use this class directly.  It should not even be
 * extended all references should be to System_Log
 */
public abstract class BaseSystem_Log extends BaseObject
{
    /** The Peer class */
    private static final System_LogPeer peer =
        new System_LogPeer();

        
    /** The value for the log_ID field */
    private int log_ID;
      
    /** The value for the user_ID field */
    private int user_ID;
      
    /** The value for the action field */
    private String action;
      
    /** The value for the location field */
    private String location;
      
    /** The value for the previous_Value field */
    private int previous_Value;
      
    /** The value for the current_Value field */
    private int current_Value;
      
    /** The value for the notes field */
    private String notes;
      
    /** The value for the date field */
    private String date;
  
    
    /**
     * Get the Log_ID
     *
     * @return int
     */
    public int getLog_ID()
    {
        return log_ID;
    }

                        
    /**
     * Set the value of Log_ID
     *
     * @param v new value
     */
    public void setLog_ID(int v) 
    {
    
                  if (this.log_ID != v)
              {
            this.log_ID = v;
            setModified(true);
        }
    
          
              }
  
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
     * Get the Action
     *
     * @return String
     */
    public String getAction()
    {
        return action;
    }

                        
    /**
     * Set the value of Action
     *
     * @param v new value
     */
    public void setAction(String v) 
    {
    
                  if (!ObjectUtils.equals(this.action, v))
              {
            this.action = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Location
     *
     * @return String
     */
    public String getLocation()
    {
        return location;
    }

                        
    /**
     * Set the value of Location
     *
     * @param v new value
     */
    public void setLocation(String v) 
    {
    
                  if (!ObjectUtils.equals(this.location, v))
              {
            this.location = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Previous_Value
     *
     * @return int
     */
    public int getPrevious_Value()
    {
        return previous_Value;
    }

                        
    /**
     * Set the value of Previous_Value
     *
     * @param v new value
     */
    public void setPrevious_Value(int v) 
    {
    
                  if (this.previous_Value != v)
              {
            this.previous_Value = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Current_Value
     *
     * @return int
     */
    public int getCurrent_Value()
    {
        return current_Value;
    }

                        
    /**
     * Set the value of Current_Value
     *
     * @param v new value
     */
    public void setCurrent_Value(int v) 
    {
    
                  if (this.current_Value != v)
              {
            this.current_Value = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Notes
     *
     * @return String
     */
    public String getNotes()
    {
        return notes;
    }

                        
    /**
     * Set the value of Notes
     *
     * @param v new value
     */
    public void setNotes(String v) 
    {
    
                  if (!ObjectUtils.equals(this.notes, v))
              {
            this.notes = v;
            setModified(true);
        }
    
          
              }
  
    /**
     * Get the Date
     *
     * @return String
     */
    public String getDate()
    {
        return date;
    }

                        
    /**
     * Set the value of Date
     *
     * @param v new value
     */
    public void setDate(String v) 
    {
    
                  if (!ObjectUtils.equals(this.date, v))
              {
            this.date = v;
            setModified(true);
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
               obj.addSystem_Logs(this);
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
              fieldNames.add("Log_ID");
              fieldNames.add("User_ID");
              fieldNames.add("Action");
              fieldNames.add("Location");
              fieldNames.add("Previous_Value");
              fieldNames.add("Current_Value");
              fieldNames.add("Notes");
              fieldNames.add("Date");
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
          if (name.equals("Log_ID"))
        {
                return new Integer(getLog_ID());
            }
          if (name.equals("User_ID"))
        {
                return new Integer(getUser_ID());
            }
          if (name.equals("Action"))
        {
                return getAction();
            }
          if (name.equals("Location"))
        {
                return getLocation();
            }
          if (name.equals("Previous_Value"))
        {
                return new Integer(getPrevious_Value());
            }
          if (name.equals("Current_Value"))
        {
                return new Integer(getCurrent_Value());
            }
          if (name.equals("Notes"))
        {
                return getNotes();
            }
          if (name.equals("Date"))
        {
                return getDate();
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
          if (name.equals(System_LogPeer.LOG_ID))
        {
                return new Integer(getLog_ID());
            }
          if (name.equals(System_LogPeer.USER_ID))
        {
                return new Integer(getUser_ID());
            }
          if (name.equals(System_LogPeer.ACTION))
        {
                return getAction();
            }
          if (name.equals(System_LogPeer.LOCATION))
        {
                return getLocation();
            }
          if (name.equals(System_LogPeer.PREVIOUS_VALUE))
        {
                return new Integer(getPrevious_Value());
            }
          if (name.equals(System_LogPeer.CURRENT_VALUE))
        {
                return new Integer(getCurrent_Value());
            }
          if (name.equals(System_LogPeer.NOTES))
        {
                return getNotes();
            }
          if (name.equals(System_LogPeer.DATE))
        {
                return getDate();
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
                return new Integer(getLog_ID());
            }
              if (pos == 1)
        {
                return new Integer(getUser_ID());
            }
              if (pos == 2)
        {
                return getAction();
            }
              if (pos == 3)
        {
                return getLocation();
            }
              if (pos == 4)
        {
                return new Integer(getPrevious_Value());
            }
              if (pos == 5)
        {
                return new Integer(getCurrent_Value());
            }
              if (pos == 6)
        {
                return getNotes();
            }
              if (pos == 7)
        {
                return getDate();
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
          save(System_LogPeer.getMapBuilder()
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
                    System_LogPeer.doInsert((System_Log) this, con);
                    setNew(false);
                }
                else
                {
                    System_LogPeer.doUpdate((System_Log) this, con);
                }
            }

                      alreadyInSave = false;
        }
      }


                    
      /**
     * Set the PrimaryKey using ObjectKey.
     *
     * @param  log_ID ObjectKey
     */
    public void setPrimaryKey(ObjectKey key)
        
    {
            setLog_ID(((NumberKey) key).intValue());
        }

    /**
     * Set the PrimaryKey using a String.
     *
     * @param key
     */
    public void setPrimaryKey(String key) 
    {
            setLog_ID(Integer.parseInt(key));
        }

  
    /**
     * returns an id that differentiates this object from others
     * of its class.
     */
    public ObjectKey getPrimaryKey()
    {
          return SimpleKey.keyFor(getLog_ID());
      }

 

    /**
     * Makes a copy of this object.
     * It creates a new object filling in the simple attributes.
       * It then fills all the association collections and sets the
     * related objects to isNew=true.
       */
      public System_Log copy() throws TorqueException
    {
        return copyInto(new System_Log());
    }
  
    protected System_Log copyInto(System_Log copyObj) throws TorqueException
    {
          copyObj.setLog_ID(log_ID);
          copyObj.setUser_ID(user_ID);
          copyObj.setAction(action);
          copyObj.setLocation(location);
          copyObj.setPrevious_Value(previous_Value);
          copyObj.setCurrent_Value(current_Value);
          copyObj.setNotes(notes);
          copyObj.setDate(date);
  
                    copyObj.setLog_ID(0);
                                                      
        
        return copyObj;
    }

    /**
     * returns a peer instance associated with this om.  Since Peer classes
     * are not to have any instance attributes, this method returns the
     * same instance for all member of this class. The method could therefore
     * be static, but this would prevent one from overriding the behavior.
     */
    public System_LogPeer getPeer()
    {
        return peer;
    }

    public String toString()
    {
        StringBuffer str = new StringBuffer();
        str.append("System_Log:\n");
        str.append("Log_ID = ")
           .append(getLog_ID())
           .append("\n");
        str.append("User_ID = ")
           .append(getUser_ID())
           .append("\n");
        str.append("Action = ")
           .append(getAction())
           .append("\n");
        str.append("Location = ")
           .append(getLocation())
           .append("\n");
        str.append("Previous_Value = ")
           .append(getPrevious_Value())
           .append("\n");
        str.append("Current_Value = ")
           .append(getCurrent_Value())
           .append("\n");
        str.append("Notes = ")
           .append(getNotes())
           .append("\n");
        str.append("Date = ")
           .append(getDate())
           .append("\n");
        return(str.toString());
    }
}