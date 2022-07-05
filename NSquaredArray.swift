import Foundation

func solution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    var ans = [Int]()
    for i in Int(left)...Int(right) {
        ans.append(max((i/n), (i%n))+1)
    }
    return ans
}
