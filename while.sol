  // SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Loop {
    function loop(int256 _x) public pure returns (int256){

  // while loop
        uint256 j=0;
        while (j < 10) {
            //skiping 1 count by continue and break
            if(j == _x){
              continue;
            }
            if(j == 5){
              break;
            }

            j++;
        }
        return j;


        }
        }