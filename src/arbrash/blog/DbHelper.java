package arbrash.blog;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;

public class DbHelper {
	public static QueryRunner getQueryRunner() {
		DataSource ds = null;
		try {
			Context context = new InitialContext();
			ds = (DataSource) context.lookup("java:/comp/env/jdbc/mysqlds");
		} catch (Exception e) {
			System.out.println("Failed to load datasource");
		}

		QueryRunner qr = new QueryRunner(ds);
		return qr;
	}
}
