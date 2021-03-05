import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let border:Int = brown + 4
    var horizontal:Int = border - 3
    var vertical:Int = 3
    var answer:[Int] = []
    for x in 1...horizontal{
        if x*x-((brown+4)/2)*x+brown+yellow == 0{
            answer.append(x)
            break
        }
    }
    for y in vertical...horizontal{
        if answer[0]*y == brown+yellow{
            answer.append(y)
            break
        }
    }
    answer = answer.sorted().reversed()
    return answer
}