func fibonacci(n: Int) -> [Int] {

    assert(n > 1)

    var array = [0, 1]

    while array.count < n {
        array.append(array[array.count - 1] + array[array.count - 2])
    }
    return array
}

fibonacci(n: 10)