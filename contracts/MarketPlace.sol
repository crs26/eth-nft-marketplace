// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "hardhat/console.sol";

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MarketPlace is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;
    Counters.Counter private _itemsSold;
    Counters.Counter private _collectionIds;

    address payable owner;

    struct MarketItem {
        uint256 tokenId;
        uint256 collectionId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }

    mapping(uint256 => MarketItem) private idMarketItem;

    event newMarketItem(
        uint256 indexed tokenId,
        uint256 indexed collectionId,
        address seller,
        address owner,
        uint256 price,
        bool sold
    );

    constructor() ERC721("NFT Metaverse Token", "MYN"){
        owner == payable(msg.sender); // set the deployer as owner
    }
}
