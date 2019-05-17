import Foundation

func selectionSort<T: Comparable>(array: Array<T>) -> Array<T> {
    var arr = array
    let count = arr.count
    for i in 0..<count {
        var minIndex = i
        // 寻找[i, n)区间里的最小值
        for j in i + 1..<count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
            arr.swapAt(j, minIndex)
        }
    }
    return arr
}

let a = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
print(selectionSort(array: a))

let b = [4.4, 3.3, 2.2, 1.1]
print(selectionSort(array: b))

let c = ["D", "C", "B", "A"]
print(selectionSort(array: c))

struct Student: Comparable, CustomStringConvertible {
    var name: String
    var score: Int
    
    // 使用Comparable协议，定义Student之间的比较方式
    // 如果分数不等，则分数高的靠前
    // 如果分数相等，则按照名字的字母序排序
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.score != rhs.score ? lhs.score > rhs.score : lhs.name < rhs.name
    }
    
    //定义Student实例的打印输出方式
    var description: String {
        return "Student: \(name) \(score)"
    }
}
let d = [Student(name: "D", score: 90), Student(name: "C", score: 100), Student(name: "B", score: 95), Student(name: "A", score: 95)]
print(selectionSort(array: d))
