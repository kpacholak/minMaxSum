
// Mini-Max Sum algorithm problem
// https://www.hackerrank.com/challenges/mini-max-sum/problem
// Swift solution
// Krzysztof Pacholak


let arr = [3, 2, 1, 4, 5]

func znajdzMinMaxSume(_ arr: [Int]) {
    
    var tymczasowyMax = arr[0]
    var tymczasowyMin = arr[0]
    var minimalnaSuma = 0
    var maksymalnaSuma = 0
    
    for i in arr {
        if i < tymczasowyMin {
            tymczasowyMin = i
        } else if i > tymczasowyMax {
            tymczasowyMax = i
        }
    }
    
    var suma = 0
    
    for j in 0..<arr.count {
        suma += arr[j]
    }
    
    minimalnaSuma = suma-tymczasowyMax
    maksymalnaSuma = suma-tymczasowyMin
    
    print(minimalnaSuma, maksymalnaSuma)
}


znajdzMinMaxSume(arr)

