package ch05.dao.map;

import ch05.domain.Employee;

public interface EmployeeMap {
	Employee selectEmployee(int employeeId);
}
