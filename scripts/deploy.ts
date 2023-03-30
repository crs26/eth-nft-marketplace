import { ethers } from "hardhat";

async function main() {

  const Main = await ethers.getContractFactory("Main");
  const lock = await Main.deploy();

  await lock.deployed();
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
