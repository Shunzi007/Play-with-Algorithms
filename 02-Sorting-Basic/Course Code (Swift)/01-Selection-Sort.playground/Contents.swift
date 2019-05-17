import Foundation

func selectionSort(array: [Int]) -> [Int] {
    var arr = array
    let count = arr.count
    for i in 0..<count {
        var minIndex = i
        // 寻找[i, n)区间里的最小值
        for j in i + 1..<count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        arr.swapAt(i, minIndex)
    }
    return arr
}

let a = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
print(selectionSort(array: a))
