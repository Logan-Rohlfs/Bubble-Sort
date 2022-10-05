#!/opt/swift-current/swift
var unsortedStrings = [String]()

while let word = readLine() {
    if word == "" {
        break
    } else {
        unsortedStrings.append(word.lowercased())
    }
}

var data = unsortedStrings
var last = data.count - 1
var swap = true
var pass = 0
var tswap = 0
var swaps = 0
//stats(pass: 0, swap: 0, array: data)

while swap == true {
    swap = false
    for i in 0..<last {
        if data[i] > data[i + 1] {
            swap(strings: &data, firstIndex: i, secondIndex: i + 1)
            swaps += 1
            swap = true
            
        }
                
    }
    
    pass += 1
    //stats(pass: pass, swap: swaps, array: data)
    swaps = 0
}



func swap(strings: inout [String], firstIndex: Int, secondIndex: Int) {
    strings.swapAt(firstIndex, secondIndex)
    tswap += 1
}

func stats(pass: Int, swap: Int, array: [String]) {
    print("Pass: \(pass), Swaps: \(swap)/\(tswap), Array: \(array)")
}


