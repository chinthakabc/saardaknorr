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
  * [Wed Mar 03 16:45:55 CST 2010]
  *
  */
public class ManagesMapBuilder implements MapBuilder
{
    /**
     * The name of this class
     */
    public static final String CLASS_NAME =
        "inventorysystem.dao.map.ManagesMapBuilder";


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

        dbMap.addTable("manages");
        TableMap tMap = dbMap.getTable("manages");

        tMap.setPrimaryKeyMethod(TableMap.NATIVE);


              tMap.addForeignPrimaryKey(
                "manages.USER_ID", new Integer(0) , "user" ,
                "user_id");
                    tMap.addForeignPrimaryKey(
                "manages.SUPPLY_ID", new Integer(0) , "supply" ,
                "supply_id");
          }
}
