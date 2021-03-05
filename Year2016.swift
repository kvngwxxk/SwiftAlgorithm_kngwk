let days:[String] = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
let Month:[Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
let leapDays:[Int] = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
func solution(_ a:Int, _ b:Int) -> String {
    let ans:String = getDay(a, b)
    return ans
}

func getDay(_ month:Int, _ date:Int) -> String{
    var totalDay:Int = 0
    for i in 1...12{
        if month == Month[i]{
            totalDay += date
            break
        }
        totalDay += leapDays[i]
    }
    
    return days[totalDay % 7]
}