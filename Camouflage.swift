import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var dic:[String:[String]] = [:]
    for c in clothes{
        if dic[c[1]] != nil{
            dic[c[1]]!.append(c[0])
        }
        else{
            dic[c[1]]=[c[0]]
        }
    }
    let count = dic.mapValues{$0.count}.values
    return count.reduce(1){$0*($1+1)} - 1
}