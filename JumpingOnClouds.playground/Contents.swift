//: Playground - noun: a place where people can play

func jumpingOnClouds(c: [Int]) -> Int {
    var index = 0
    var steps = 0
    
    while index < c.count - 1 {
        
        let auxVar2 = index + 2
        
        if auxVar2 <= c.count - 1  {
            if c[auxVar2] == 0 {
                index += 2
                steps += 1
            } else {
                index += 1
                steps += 1
            }
        } else {
            index += 1
            steps += 1
        }
    }
    return steps
}



