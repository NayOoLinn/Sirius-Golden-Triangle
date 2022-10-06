func canCreateGoldenTriangle(from sides: [Int]) -> Bool {
    guard sides.count >= 3 else { return false }
    
    let sorted = sides.sorted()
    
    for i in 0..<(sorted.count - 2) {
        let value1 = sorted[i]
        let value2 = sorted[i+1]
        let value3 = sorted[i+2]
        
        if value1 + value2 > value3,
           value1 + value3 > value2,
           value2 + value3 > value1 {
            print("Golden Triangle:", value1, value2, value3)
            return true
        }
    }
    return false
}

// Example 1
print(canCreateGoldenTriangle(from: [10,2,5,1,8,20]))

// Example 2
print(canCreateGoldenTriangle(from: [10,50,5,1]))
