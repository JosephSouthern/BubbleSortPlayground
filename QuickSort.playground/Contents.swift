//: # Sorting

import UIKit
import Foundation

/*: 
## Quick Sort

An efficient sorting algorithm, serving as a systematic method for placing the elements of an array in order.

![Bubble Sort Animation Image](http://upload.wikimedia.org/wikipedia/commons/6/6a/Sorting_quicksort_anim.gif "Quick Sort Animation Image")
 [Image Via Wikipedia]("http://www.wikiwand.com/en/Quicksort")

Code via [Swift Algorithms & Data Structures](http://shop.waynewbishop.com)

*/

func quicksort(inout a:[Int], lo: Int, hi: Int) {
    
    if lo < hi {
        let p = partition(&a, lo: lo, hi: hi)
        quicksort(&a, lo: lo, hi: p)
        quicksort(&a, lo: p+1, hi: hi)
    }
}

func partition(inout a:[Int], lo: Int, hi: Int) -> Int {
    let pivot = a[lo]
    var i = lo - 1
    var j = hi + 1
    
    repeat {
    
        repeat {
            j--
        } while a[j] > pivot
        
        repeat {
            i++
        } while a[i] < pivot
        
        if i < j {
            let temp = a[i]
            a[i] = a[j]
            a[j] = temp
        } else {
            return j
        }
    } while true
}


var numbers = [170,750,373,461,910,535,930,85,690,393,426,675,75,156,153,739,718,449,25,179,315,42,257,233,102,381,956,395,96,265,789,45,427,628,89,46,406,126,765,130,661,86,895,787,326,459,603,766,906,508,918,204,411,566,561,654,506,785,605,436,210,705,803,73,71,247,219,739,464,685,419,144,285,710,225,807,553,337,804,583,868,511,53,75,495,878,588,49,781,704,22,330,95,79,658,376,561,258,191,928]

quicksort( &numbers, lo: 0, hi: numbers.count - 1)
