import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var complete:[Int] = []
    var ans:[Int] = []
    var count:Int = 1
    for i in 0..<progresses.count{
        if (100-progresses[i]) % speeds[i] == 0{
            complete.append((100-progresses[i])/speeds[i])
        }else if 100-progresses[i] == 0{
        complete.append(1)
        }else{
            complete.append((100-progresses[i])/speeds[i]+1)
        }
    }
    var i = 0
    while i < complete.count{
        var j = i+1
        while j<complete.count{
            if complete[i]>=complete[j]{
                count+=1
            }
            else{
                ans.append(count)
                i = i + count
                count=1
            }
            j+=1
        }
        if j == complete.count{
            ans.append(count)
            break
        }
        i+=1
    }
    return ans
}