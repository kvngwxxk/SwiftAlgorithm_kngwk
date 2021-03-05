import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var skillArr = Array(skill)
    var ans:[Bool] = []
    var count = 0
    for list in 0..<skill_trees.count{
        let skillTreesArray = Array(skill_trees[list])
        print(skillArr, skillTreesArray)
        for i in 1..<skillArr.count{
            if skillTreesArray[0] == skillArr[i] {
                ans.append(false)
                break
            }
            for j in 1..<skillTreesArray.count{
                if skillArr[i] == skillTreesArray[j] {
                    var newArr = skillTreesArray[0..<j]
                    if newArr.contains(skillArr[i-1]){
                        ans.append(true)
                    }else{
                        ans.append(false)
                    }
                }
            }
        }
        if ans.contains(false){
            print("false : \(ans)")
            ans.removeAll()
            continue
        }
        else{
            print("true : \(ans)")
            ans.removeAll()
            count+=1
        }
    }
    return count
}