const { expect } = require("chai");
const hre = require("hardhat");

describe("gameResults", function () {
  it("Should test the game for input 1", async function () {
  
    const Game = await hre.ethers.getContractFactory("Game");
    const game = await Game.deploy();

    expect(await game.gameResults(1)).to.emit(true);
  });
});