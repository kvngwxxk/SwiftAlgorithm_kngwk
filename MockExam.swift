import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var pattern1:[Int] = [1, 2, 3, 4, 5]
    var pattern2:[Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    var pattern3:[Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var count1:Int = 0, count2:Int = 0, count3:Int = 0
    if answers.count>pattern1.count{
        for i in pattern1.count..<answers.count{
            pattern1.append(pattern1[i%5])
        }
    }
    if answers.count>pattern2.count{
        for i in pattern2.count..<answers.count{
            pattern2.append(pattern2[i%8])
        }
    }
    if answers.count>pattern3.count{
        for i in pattern3.count..<answers.count{
            pattern3.append(pattern3[i%10])
        }
    }
    for i in 0..<answers.count{
        if answers[i]==pattern1[i]{
            count1+=1
        }
        if answers[i]==pattern2[i]{
            count2+=1
        }
        if answers[i]==pattern3[i]{
            count3+=1
        }
    }
    var maxValue:Int = max(count1, count2, count3)
    var arr:[Int] = []
    if maxValue==count1{
        arr.append(1)
    }
    if maxValue==count2{
        arr.append(2)
    }
    if maxValue==count3{
        arr.append(3)
    }
    return arr
}