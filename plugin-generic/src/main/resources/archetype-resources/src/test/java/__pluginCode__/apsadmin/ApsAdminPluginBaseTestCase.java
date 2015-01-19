package ${package}.${pluginCode}.apsadmin;

import com.agiletec.ConfigTestUtils;
import com.agiletec.apsadmin.ApsAdminBaseTestCase;
import ${package}.${pluginCode}.PluginConfigTestUtils;

public class ApsAdminPluginBaseTestCase extends ApsAdminBaseTestCase {
	
	@Override
	protected ConfigTestUtils getConfigUtils() {
		return new PluginConfigTestUtils();
	}
	
}
