//: # Sorting

import UIKit
import Foundation

/*: 
## Bubble Sort

Rank items from the lowest to highest by swapping
groups of two items from left to right. The highest item in the set will bubble up to the
right side of the set after the first iteration.

![Bubble Sort Animation Image](http://upload.wikimedia.org/wikipedia/commons/3/37/Bubble_sort_animation.gif "Bubble Sort Animation Image")
 [Image Via Wikipedia](http://www.wikiwand.com/en/Bubble_sort)

Code via [Swift Algorithms & Data Structures](http://shop.waynewbishop.com)

*/


func bubbleSort(var numberList: Array<Int>) ->Array<Int> {
    
    var z, passes, key : Int
    
//: First loop through every value of n
    for n in 0..<numberList.count {          
        
        passes = (numberList.count - 1) - n;
        
/*: 
    This will loop for n-1, n-2, n-3 ... n-n = (n+1)/2
    As n gets larger and large we can say (n+1)/2 = n
    Therefore Bubble Sort is O(n^2)
*/
        for y in 0..<passes {                
            key = numberList[y]
            
//: If the key is greater than the current value then swap them.
            if (key > numberList[y + 1]) {
                z = numberList[y + 1]
                numberList[y + 1] = key
                numberList[y] = z
            }
        }
    }
    
    return numberList
}

let numbers = [170,750,373,461,910,535,930,85,690,393,426,675,75,156,153,739,718,449,25,179,315,42,257,233,102,381,956,395,96,265,789,45,427,628,89,46,406,126,765,130,661,86,895,787,326,459,603,766,906,508,918,204,411,566,561,654,506,785,605,436,210,705,803,73,71,247,219,739,464,685,419,144,285,710,225,807,553,337,804,583,868,511,53,75,495,878,588,49,781,704,22,330,95,79,658,376,561,258,191,928]

bubbleSort(numbers)
