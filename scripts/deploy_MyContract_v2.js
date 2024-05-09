const { ethers, upgrades } = require("hardhat");

// proxy address
const myContractProxyAddr = "0x1f4eae44D0f0e3C578f349dF225caE431e113C94"

async function main() {
    const MyContractV2 = await ethers.getContractFactory("MyContractV2");
    // update
    const myContractV2 = await upgrades.upgradeProxy(myContractProxyAddr, MyContractV2);

    console.log("myContractV2 upgraded");
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });
