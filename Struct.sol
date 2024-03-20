// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structs {
    struct Car {
        string model;
        uint256 year;
        address owner;
    }
    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        //3 ways to initialize a struct
        //1)
        Car memory mercedes = Car("Mercedes", 1992, msg.sender);
        //2)
        Car memory audi = Car({model: "AudiR8", year: 1980, owner: msg.sender});
        //3)
        Car memory tesla;
        tesla.model = "Plaid";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        //To put the struct values in a state variable so that they don't disappear after execution
        //So we push them into the cars array
        cars.push(mercedes);
        cars.push(audi);
        cars.push(tesla);

        //Direct push with struct
        cars.push(Car("Ferrari", 2020, msg.sender));

        Car memory _car = cars[0];
        //to modify any of the parameters such as model,year,owner change from "memory" to "storage"
        _car.model;
        _car.year;
        _car.owner;

        // Car storage car = cars[0];
        // car.year = 1999;
        // delete car.owner;//reset the car's owner
        // delete cars[1];//Data of Audi is deleted
    }
}
