fun isPalindrome(number: Int): Boolean {
    var reversedNumber = 0
    var originalNumber = number

    while (originalNumber > 0) {
        val digit = originalNumber % 10
        reversedNumber = reversedNumber * 10 + digit
        originalNumber /= 10
    }

    return number == reversedNumber
}

fun main() {
    println("Enter a number:")
    val number = readLine()?.toIntOrNull()

    if (number != null) {
        val isPalindrome = isPalindrome(number)
        if (isPalindrome) {
            println("$number is a palindrome.")
        } else {
            println("$number is not a palindrome.")
        }
    } else {
        println("Invalid input. Please enter a valid number.")
    }
}