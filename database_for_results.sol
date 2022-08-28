pragma solidity ^0.8.0;
contract database{
    struct details{
        string alldata;
        string time;
        address _add;
    }
    mapping(address => details) Det;
    function Register(address _address, string memory _alldata, string memory _time) public{
        details memory detail;
        detail.alldata = _alldata;
        detail.time=_time;
        detail._add=_address;
        Det[_address]=detail;
    }
    
    function DBdetails(address _address) view public returns(string memory alldata_, string memory time_){
        details memory detail=Det[_address];
        alldata_=detail.alldata;
        time_=detail.time;
        return(alldata_,time_);
        
    }
}
