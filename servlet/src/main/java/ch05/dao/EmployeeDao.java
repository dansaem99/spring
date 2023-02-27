package ch05.dao;

import ch05.domain.Employee;

public interface EmployeeDao {
	Employee selectEmployee(int employeeId);
}