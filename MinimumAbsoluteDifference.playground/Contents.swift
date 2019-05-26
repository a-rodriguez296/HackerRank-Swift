//: Playground - noun: a place where people can play

func minimumAbsoluteDifference(arr: [Int]) -> Int {
    
    let sortedArray = arr.sorted()
    
    var index = 0
    var difference = Int.max
    
    while index < sortedArray.count - 1 {
        
        let nextIndex = index + 1
        let localDifference = abs(sortedArray[index] - sortedArray[nextIndex])
        if localDifference <= difference {
            difference = localDifference
        }
        index += 1
    }
    return difference
}


