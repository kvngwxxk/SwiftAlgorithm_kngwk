import Foundation

func solution(_ new_id:String) -> String {
    var id1 = Array(new_id)
    // 1단계
    for i in 0..<id1.count{
        if id1[i].isLetter{
            if id1[i].isUppercase{
                id1[i] = Character(id1[i].lowercased())
            }
        }
    }
    var id2:[Character] = []
    // 2단계
    for i in 0..<id1.count{
        if (id1[i].asciiValue! >= 48 && id1[i].asciiValue! <= 57) ||
            (id1[i].asciiValue! >= 97 && id1[i].asciiValue! <= 122) ||
            id1[i] == "." || id1[i] == "_" || id1[i] == "-" {
            id2.append(id1[i])
        }
    }
    id2.append(" ")
    var id3:[Character] = []
    // 3단계
    for i in 0..<id2.count{
        if id2[i] == "." && id2[i+1] == "."{
            id2.remove(at: i)
            id2.insert(" ", at: i)
        }
    }
    for i in 0..<id2.count{
        if id2[i] != " "{
            id3.append(id2[i])
        }
    }
    // 4단계
    if id3.first == "."{
        id3.removeFirst()
    }
    if id3.last == "."{
        id3.removeLast()
    }
    // 5단계
    if id3.isEmpty{
        id3.append("a")
    }
    var id4:[Character] = []
    // 6단계
    if id3.count >= 16{
        id4 = Array(id3[0...14])
    }else{
        id4 = id3
    }
    if id4.first == "."{
        id4.removeFirst()
    }
    if id4.last == "."{
        id4.removeLast()
    }
    var newId:[Character] = []
    // 7단계
    while id4.count <= 2{
        id4.append(id4[id4.count - 1])
    }
    newId = id4
    return String(newId)
}