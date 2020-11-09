// Mini-Max Sum algorithm problem
// https://www.hackerrank.com/challenges/mini-max-sum/problem
// Swift solution
// Krzysztof Pacholak


let arr = [3, 2, 1, 4, 5]

func findMinMaxSum(_ arr: [Int]) {
    
    var currentMax = arr[0]
    var currentMin = arr[0]
    var minSum = 0
    var maxSum = 0
    var sum = 0
    var index = 0
    
    for i in arr {
        sum += i
        if i < currentMin {
            currentMin = i
        } else if i > currentMax {
            currentMax = i
        }
        index += 1
    }
    

    
    minSum = sum-currentMax
    maxSum = sum-currentMin
    
    print(minSum, maxSum)
}


findMinMaxSum(arr)

