package ch05.dao;

import ch05.config.Configuration;
import ch05.dao.map.EmployeeMap;
import ch05.domain.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
	private EmployeeMap employeeMap;
	
	public EmployeeDaoImpl() {
		this.employeeMap = Configuration.getMapper(EmployeeMap.class);
	}
	
	@Override
	public Employee selectEmployee(int employeeId) {
		return employeeMap.selectEmployee(employeeId);
	}
}