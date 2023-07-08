// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.18;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

contract BoxV2 is UUPSUpgradeable {
    uint internal number;

    function setNumber(uint _number) external {
        number = _number;
    }

    function getNumber() external view returns (uint) {
        return number;
    }

    function version() external pure returns (uint) {
        return 2;
    }

    function _authorizeUpgrade(address newImplementation) internal override {}
}
