import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var ans:[Int]=[]
    for i in 0..<commands.count {
        var temp:[Int] = Array(array[commands[i][0]-1...commands[i][1]-1])
        temp.sort()
        ans.append(temp[commands[i][2]-1])
    }
    return ans
}