// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract DanTokenV2 is Initializable, ERC721Upgradeable, OwnableUpgradeable {
    uint256 private _nextTokenId;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) initializer public {
        __ERC721_init("DanToken", "DTK");
        __Ownable_init(initialOwner);
    }

    function mint() public {
        uint256 tokenId = _nextTokenId++;
        _safeMint(msg.sender, tokenId);
    }
    
}
