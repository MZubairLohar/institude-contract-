pragma solidity ^0.6.0;
contract institude{
    
    address payable institude = (0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);
    // save student data
    struct stu{
        string name;
        uint rollNo;
        uint age;
        //address add;
        
    }
    // successfull students wanted to copy one specific student data from first struct to this one 
    struct stuData{
        string name1;
        uint rollNo1;
        uint age1;
        
    }
    
    // application count 
     uint public applicationsCount;
    // create mapping 
    mapping (uint => stu[])students;


    // add Student function
    function addStudent(string memory _name, uint _rollNo, uint _age) public{
        stu memory newStudent = stu(_name, _rollNo, _age) ;
        students[_rollNo].push(newStudent);
        applicationsCount++;
    }
    /*
    // get student function 
    function getStudent(uint _rollNo) public view returns( uint, string memory, uint){
         stu[] memory studentGt;
        studentGt = students[_rollNo];
        for(uint idx = 0; idx < studentGt.length; idx++){
            if(studentGt[idx].rollNo == _rollNo){
                  return (studentGt[idx].rollNo,studentGt[idx].name,studentGt[idx].age);
                  
            }
        }
       
    }*/

            
    function pay(address _add , uint _rollNo) public payable{
        
        stu[] memory getStudent;
        getStudent = students[_rollNo];
        for(uint idy = 0; idy < getStudent.length; idy++){
         if(getStudent[idy].rollNo == _rollNo){
        require(msg.sender == (_add));
        require(msg.value == 2 ether);
         
        }
        }
             
        }
        function balanceInstitude() public view returns(uint){
            return(institude.balance);
        }
/*
        function addmission(uint _rollNo1) public{
            stu[] memory copyStu;
            for(uint id = 0; id<copyStu.length; id++){
                if(copyStu[id].roll == _rollNo1){
                    
                }
            }
        }
        */
        
    
}