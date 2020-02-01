pragma solidity ^0.5.0;

contract ProofOfExistence {

  struct Blobs {
    uint idGenerator;
    bytes32[] proofs;
  }

  address public owner;

  mapping (address => Blobs) proofs;

  mapping (address => bool) registered;

  event LogRegistered(address user);

  event LogAddProof(address user, bytes32 proof, uint proofsCount);

  modifier isRegistered () { require (registered[msg.sender] == true); _;}

  constructor() public {
    owner = msg.sender
  }

  function register() public {
    registered[msg.sender] = true;
    emit LogRegistered(msg.sender);
  }

  function addProof(bytes32 memory hash) 
    public 
    isRegistered {
      proofs[msg.sender].proofs[idGenerator] = hash;
      proofs[msg.sender].idGenerator = proofs[msg.sender].idGenerator + 1;

      emit LogRegistered(msg.sender, hash, idGenerator);
  }

  function getFiles public view returns(bytes32[]) 
    public 
    isRegistered {
      return proofs[msg.sender].proofs;
  }

}
