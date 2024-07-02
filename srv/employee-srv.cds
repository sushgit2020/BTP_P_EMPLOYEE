using btp.hr as bh from '../db/employee-dm' ;

service  EmployeeService {

   entity Employees as select from bh.EMPLOYEE; 

   entity DEPARTMENT as select from bh.DEPARTMENT;

}