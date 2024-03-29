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
  * [Sun Mar 21 15:11:40 CST 2010]
  *
  */
public class Supply_OrgChemMapBuilder implements MapBuilder
{
    /**
     * The name of this class
     */
    public static final String CLASS_NAME =
        "inventorysystem.dao.map.Supply_OrgChemMapBuilder";


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

        dbMap.addTable("supply_orgchem");
        TableMap tMap = dbMap.getTable("supply_orgchem");

        tMap.setPrimaryKeyMethod(TableMap.NATIVE);


              tMap.addPrimaryKey("supply_orgchem.SUPPLY_ID", new Integer(0));
                    tMap.addColumn("supply_orgchem.TYPE", new String());
                    tMap.addColumn("supply_orgchem.NAME", new String());
                    tMap.addColumn("supply_orgchem.QUANTITY", new Integer(0));
                    tMap.addColumn("supply_orgchem.AMOUNT", new String());
                    tMap.addColumn("supply_orgchem.UNIT", new String());
          }
}
