import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.torque.Torque;
import org.apache.torque.TorqueException;

public class InitTorque extends HttpServlet {
    @Override
  public void init(ServletConfig config) throws ServletException {
    super.init(config);
    try {
      InputStream configStream = 
        getServletContext().getResourceAsStream(config.getInitParameter("config"));
      PropertiesConfiguration c = 
        new PropertiesConfiguration();
      c.load( configStream );
      Torque.init( c );
    }
      catch ( IOException e ) {
      throw new ServletException( e.toString() );
    }
      catch ( TorqueException e ) {
      throw new ServletException( e.toString() );
    }
  }
}
