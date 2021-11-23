// How to compile a contract?
// to deploy, first compile with `npx hardhat compile`

// How to deploy a contract?
// then deploy it with `npx hardhat run scripts/deployContract.js --network rinkeby`
// video explanation: https://www.youtube.com/watch?v=Uvphp4aVeDg

// How to verify a contract on etherscan?
// npx hardhat verify --network rinkeby 0xAFf1d42b82e412732e5c1b3a7149fA2910125c50
// link: https://forum.openzeppelin.com/t/how-to-verify-with-hardhat-or-truffle-a-smart-contract-using-openzeppelin-contracts/4119

const hre = require("hardhat");

async function main() {
  const SimpleStorage = await hre.ethers.getContractFactory("SimpleStorage");
  const simpleStorage = await SimpleStorage.deploy();

  await simpleStorage.deployed();

  console.log("SimpleStorage deployed to:", simpleStorage.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
