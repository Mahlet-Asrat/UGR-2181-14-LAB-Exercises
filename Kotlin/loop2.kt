fun isPrime(number: Int): Boolean {
    if (number < 2) {
        return false
    }

    var divisor = 2

    while (divisor * divisor <= number) {
        if (number % divisor == 0) {
            return false
        }
        divisor++
    }

    return true
}

fun main() {
    println("Enter the range start:")
    val start = readLine()?.toIntOrNull()

    println("Enter the range end:")
    val end = readLine()?.toIntOrNull()

    if (start != null && end != null && start <= end) {
        println("Prime numbers within the range $start to $end are:")

        var currentNumber = start

        while (currentNumber <= end) {
            if (isPrime(currentNumber)) {
                println(currentNumber)
            }
            currentNumber++
        }
    } else {
        println("Invalid input. Please enter valid range values.")
    }
}