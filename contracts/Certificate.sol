pragma solidity 0.4.25;

contract Certificate{
	
	struct Student{

		uint id;
		string first_name;
		string last_name;
		string class;
		string rank;
		string field;
		//bool hod_verified;
		//bool principal_verified;

	}

	mapping(uint => Student) public students;
	uint public studentsCount;


	constructor () public {
        addStudent("Sanjay","Janyani","D10","First","Academics");
        addStudent("Latika","Gurnani","D10","First","Academics");
        
        //addStudent("Candidate 2");
    }

    function addStudent (string first_name,string last_name,string class,string rank,string field) public {

        studentsCount ++;
        students[studentsCount] = Student(studentsCount,first_name,last_name,class,rank,field);
    }
	
}