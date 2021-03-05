import Foundation
func changeAlphabet(_ letter:Character) -> Int{
    let asc = letter.asciiValue!
    let count1 = asc - 65
    let count2 = 91 - asc
    let minValue = min(count1, count2)
    return Int(minValue)
}
func solution(_ name:String) -> Int {
    var startString:String = ""
    for _ in 0..<name.count{
        startString += "A"
    }
    let initArr:[Character] = Array(startString)
    var nameArr:[Character] = Array(name)
    
    var count = 0
    var idx = 0
    while nameArr != Array(startString){
        var right = idx
        var rightCount = 0
        while nameArr[right] == initArr[right]{
            right += 1
            if right >= name.count{
                right = 0
            }
            rightCount += 1
        }
        var left = idx
        var leftCount = 0
        while nameArr[left] == initArr[left]{
            left -= 1
            if left < 0{
                left = name.count-1
            }
            leftCount += 1
        }
        if rightCount <= leftCount{
            count += changeAlphabet(nameArr[right])
            count += rightCount
            idx = right
        }
        else{
            count += changeAlphabet(nameArr[left])
            count += leftCount
            idx = left
        }
        nameArr[idx] = initArr[idx]
    }
    return count
}