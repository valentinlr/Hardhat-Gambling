const { expect } = require("chai");
const hre = require("hardhat");

describe("Engine", function () {
  it("Should output the result of OR operation on the two parameters", async function () {

    const Engine = await hre.ethers.getContractFactory("Engine");
    const engine = await Engine.deploy();

    expect(await engine.bitwiseOp(1, 1)).to.equal(1);
    expect(await engine.bitwiseOp(0, 2)).to.equal(2);
    expect(await engine.bitwiseOp(1, 2)).to.equal(3);
  });
});