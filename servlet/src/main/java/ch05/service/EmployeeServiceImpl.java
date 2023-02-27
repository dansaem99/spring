package ch05.service;

import ch05.dao.EmployeeDao;
import ch05.dao.EmployeeDaoImpl;
import ch05.domain.Employee;

public class EmployeeServiceImpl implements EmployeeService {
private EmployeeDao employeeDao;
	
	public EmployeeServiceImpl() {
		this.employeeDao = new EmployeeDaoImpl();
	}
	
	@Override
	public Employee getEmployee(int employeeId) {
		return employeeDao.selectEmployee(employeeId);
	}
}
