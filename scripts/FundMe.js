const hre = require("hardhat");

async function main() {
  const FundMe = await hre.ethers.getContractFactory("FundMe");
  const fundMe = await FundMe.deploy();

  await fundMe.deployed();

  console.log("FundMe deployed to:", fundMe.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });