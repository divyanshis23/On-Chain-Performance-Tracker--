// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PerformanceRecord {

    // Mapping to store performance data for each user (identified by address)
    mapping(address => uint256) public performanceData;

    // Event to log the updating of performance data
    event PerformanceUpdated(address indexed user, uint256 performanceData);

    // Function to set the performance data for the sender (msg.sender)
    function setPerformanceData() public {
        // A basic performance data value, for example, could be set to a fixed number (e.g., 100)
        performanceData[msg.sender] = 100; // Example of a fixed value for simplicity

        // Emit an event to record the performance update
        emit PerformanceUpdated(msg.sender, 100);
    }

    // Function to retrieve the performance data for a specific user
    function getPerformanceData(address user) public view returns (uint256) {
        return performanceData[user];
    }
}
