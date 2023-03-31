import { ethers } from "hardhat";

async function main() {

  const MarketPlace = await ethers.getContractFactory("MarketPlace");
  const marketPlace = await MarketPlace.deploy();

  await marketPlace.deployed();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
