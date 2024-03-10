// SPDX-License—Identifier:MIT
pragma solidity ^0.8.0;

contract Encoding {
    function combineStrings() public pure returns (string memory) {
        return string(abi.encodePacked("Hello Everyone"));
    }

    // globally availible methods & units
    // When we send a transaction, it is "compiled" down to bytecode and sent in a "data" to the blockchain.
    // That data object now governs how future transactions will interact with it.

    function encodeNumber() public pure returns (bytes memory) {
        bytes memory number = abi.encode(1);
        return number;
    }

    function encodeString() public pure returns (bytes memory) {
        bytes memory someString = abi.encode("some string");
        return someString;
    }

    //Saved a lot of gas
    function encodeStringPacked() public pure returns (bytes memory) {
        bytes memory someString = abi.encodePacked("some string");
        return someString;
    }

    //Gives same output as encodePacked
    function encodeStringBytes() public pure returns (bytes memory) {
        bytes memory someString = bytes("some string");
        return someString;
    }

    //this function helps in decoding the bytes to string
    function decodeString() public pure returns (string memory) {
        // bytes memory encodedString = encodeString();
        string memory someString = abi.decode(
            /*from*/ encodeString(),
            /*to*/ (string)
        );
        return someString;
    }

    function multiEncode() public pure returns (bytes memory) {
        bytes memory someString = abi.encode(
            "some string is bigger",
            "it's bigger"
        );
        return someString;
    }

    //Even bigger bytes object because it includes two strings
    function multiDecode() public pure returns (string memory, string memory) {
        (string memory someString, string memory someOtherString) = abi.decode(
            multiEncode(),
            (string, string)
        );
        return (someString, someOtherString);
    }

    function multiEncodePacked() public pure returns (bytes memory) {
        bytes memory someString = abi.encodePacked(
            "some string",
            "is bigger",
            "it's bigger"
        );
        return someString;
    }

    // This doesn't work!
    function multiDecodePacked() public pure returns (string memory) {
        string memory someString = abi.decode(multiEncodePacked(), (string));
        return someString;
    }

    function multiStringCastPacked() public pure returns (string memory) {
        string memory someString = string(multiEncodePacked());
        return someString;
    }
}
