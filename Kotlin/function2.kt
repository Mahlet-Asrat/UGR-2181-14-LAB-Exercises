fun factorial(n: Int): Long {
    return if (n == 0 || n == 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}

fun main() {
    println("Enter a number:")
    val number = readLine()?.toIntOrNull()

    if (number != null) {
        val result = factorial(number)
        println("The factorial of $number is: $result")
    } else {
        println("Invalid input. Please enter a valid number.")
    }
}