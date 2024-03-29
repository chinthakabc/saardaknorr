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
public class UserMapBuilder implements MapBuilder
{
    /**
     * The name of this class
     */
    public static final String CLASS_NAME =
        "inventorysystem.dao.map.UserMapBuilder";


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

        dbMap.addTable("user");
        TableMap tMap = dbMap.getTable("user");

        tMap.setPrimaryKeyMethod(TableMap.NATIVE);


              tMap.addPrimaryKey("user.USER_ID", new Integer(0));
                    tMap.addColumn("user.EMPLOYEENUMBER", new String());
                    tMap.addColumn("user.FIRSTNAME", new String());
                    tMap.addColumn("user.MIDDLENAME", new String());
                    tMap.addColumn("user.LASTNAME", new String());
                    tMap.addColumn("user.USERNAME", new String());
                    tMap.addColumn("user.PASSWORD", new String());
                    tMap.addPrimaryKey("user.CONTACTNUMBER", new String());
                    tMap.addColumn("user.DIVISION", new String());
                    tMap.addColumn("user.TYPE", new String());
                    tMap.addColumn("user.STATUS", new Integer(0));
          }
}
