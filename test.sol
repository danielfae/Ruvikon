bipragma solidity >=0.4.22 <0.6.0;

contract Bank {
    
    /*   
    Variabler 
     */
     
    // Definere en variable
    bool isActive;
    // Definere navn
    string name;
    
    // address har 1000 kroner
    mapping(address => uint256) balance;
    
    /*
    constructor - denne kjøres når man depoyer kontrakten
    */
    constructor() public {
        isActive = true;
        // sette nanvet for denne kontraktken
        name = "Steins Bank";
    }
    
    /*   
    Funksjoner 
     */
    // hete ut balanse fra en adresser
    function getBalance() public view returns(uint256) {
        return balance[msg.sender];
    }
    
    function isContractActive() public view returns(bool){
        return isActive;
    }
    
    
    // Lage en funksjon som henter ut navn
    function getName() public view returns(string memory){
        return name;
    }
    
    function setBalanceOfAddress(address addresstoChangeBalance) public payable notStopped {
        // Dette skal ikke være mulig om kontrakten er stoppet
        balance[addresstoChangeBalance] += msg.value;
    }
    
    // Lage en funksjon som stopper kontrakten.
    function stop() public {
        isActive = false;
    }
    
    /*
    Modifiers
    */
    // Lage denne modifier som sjekker om kontrakten er stoppet
    modifier notStopped(){
        require(isActive, "Contract is not active.");
        _;
    }
}