
//Find the indexes of the two values that sum the target

let numArray = [2,7,8,23,4]

func getIndexesOnTargetSum(num : [Int], target : Int) -> [Int]{
    
    
    //O(n^2) Solution
    var arrayIndexes = [Int]()

    for i in 0...numArray.count - 2{
        for j in i+1...numArray.count - 1 {
            print("suma \(numArray[i]) + \(numArray[j])")

            if numArray[i] + numArray[j] == target{
                arrayIndexes.append(i)
                arrayIndexes.append(j)

                return arrayIndexes
            }
        }
    }

    
    //O(n) Runtime with O(n) Space Solution
    var myDict: [Int: Int] = [:]
    
    for i in 0...numArray.count - 1{
        myDict[numArray[i]] = i
    }
    
    for i in 0...numArray.count - 1{
        if (myDict[target - numArray[i]] != nil) {
            arrayIndexes.append(i)
            arrayIndexes.append(myDict[target - numArray[i]]!)
            return arrayIndexes
        }
    }
    
    return arrayIndexes
}


print(getIndexesOnTargetSum(num: numArray, target: 9))
