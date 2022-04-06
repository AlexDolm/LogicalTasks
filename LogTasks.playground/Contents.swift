import UIKit

/*A bug was found in the code of a third-party library. Instead of a sorted array of strings, the library returns an array of randomly ordered strings. Fortunately, the library writes an ordinal index to each line in a random position - the position where the string should be in the output array, for example, "st2ring".
    Your task is to handle the library bug and write an algorithm that:
-extracts the index from the string
-uses the index to position the string in the desired position
 !! Indexes always start from zero and the sequence of indexes is unbroken
 */


var inputString = "c1at\n3dog\ncar1"
var inputMassive = inputString.components(separatedBy: "\n") //splitting the string by separator
///the array in which the sorted array will be stored
var newMassiveForAnswer = [String]()

for i in 1...inputMassive.count { //i takes values from 0 to the size of the array
    for word in inputMassive { //go through the elements of the array
        if word.contains(String(i)){
            let wordWithoutNumber = word.components(separatedBy: CharacterSet.decimalDigits).joined() //deleting a number from the string
            newMassiveForAnswer.append(wordWithoutNumber) //add to new mass
        }
    }
}
print(newMassiveForAnswer)

