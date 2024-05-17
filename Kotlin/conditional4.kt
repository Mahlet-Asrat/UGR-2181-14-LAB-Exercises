fun main() {
    println("Enter three different numbers:")
    print("Number 1: ")
    val number1 = readLine()?.toDoubleOrNull()
    print("Number 2: ")
    val number2 = readLine()?.toDoubleOrNull()
    print("Number 3: ")
    val number3 = readLine()?.toDoubleOrNull()

    if (number1 != null && number2 != null && number3 != null) {
        val largestNumber = if (number1 > number2) {
            if (number1 > number3) {
                number1
            } else {
                number3
            }
        } else {
            if (number2 > number3) {
                number2
            } else {
                number3
            }
        }

        println("The largest number is: $largestNumber")
    } else {
        println("Invalid input. Please enter valid numbers.")
    }
}