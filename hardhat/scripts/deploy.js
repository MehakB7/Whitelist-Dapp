const { ethers } = require("hardhat");

async function main() {
  const whitlist = await ethers.getContractFactory();
  const deployedContract = await whitlist.deploy(10);
  await deployedContract.deployed();
  console.log("Whitelist Contract Address:", deployedWhitelistContract.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
