package inventorysystem.dao.map;

import java.util.Date;
import java.math.BigDecimal;

import org.apache.torque.Torque;
import org.apache.torque.TorqueException;
import org.apache.torque.map.MapBuilder;
import org.apache.torque.map.DatabaseMap;
import org.apache.torque.map.TableMap;

/**
  *  This class was autogenerated by Torque on:
  *
  * [Fri Feb 19 18:34:51 SGT 2010]
  *
  */
public class User_Contact_NoMapBuilder implements MapBuilder
{
    /**
     * The name of this class
     */
    public static final String CLASS_NAME =
        "inventorysystem.dao.map.User_Contact_NoMapBuilder";


    /**
     * The database map.
     */
    private DatabaseMap dbMap = null;

    /**
     * Tells us if this DatabaseMapBuilder is built so that we
     * don't have to re-build it every time.
     *
     * @return true if this DatabaseMapBuilder is built
     */
    public boolean isBuilt()
    {
        return (dbMap != null);
    }

    /**
     * Gets the databasemap this map builder built.
     *
     * @return the databasemap
     */
    public DatabaseMap getDatabaseMap()
    {
        return this.dbMap;
    }

    /**
     * The doBuild() method builds the DatabaseMap
     *
     * @throws TorqueException
     */
    public void doBuild() throws TorqueException
    {
        dbMap = Torque.getDatabaseMap("inventorysystemdb");

        dbMap.addTable("user_contact_no");
        TableMap tMap = dbMap.getTable("user_contact_no");

        tMap.setPrimaryKeyMethod(TableMap.NATIVE);


              tMap.addPrimaryKey("user_contact_no.CONTACT_NO", new String());
                    tMap.addForeignPrimaryKey(
                "user_contact_no.USER_ID", new Integer(0) , "user" ,
                "user_id");
          }
}
