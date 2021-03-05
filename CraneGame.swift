import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var temp:[[Int]] = board
    var basket:[Int] = []
    var count = 0
    for moving in 0..<moves.count{
        let command = moves[moving]-1
        for i in 0..<temp.count{
            if temp[i][command]>0{
                basket.append(temp[i][command])
                if basket.count>=2{
                    if basket.last==basket[basket.count-2]{
                        basket.removeLast()
                        basket.removeLast()
                        count+=2
                    }
                }

                temp[i][command]=0
                break
            }
        }
    }
    return count
}