fun hasUniqueCharacters(input: String): Boolean {
    val charSet = HashSet<Char>()

    for (char in input) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }

    return true
}

fun main() {
    println("Enter a string:")
    val input = readLine()

    if (input != null) {
        val isUnique = hasUniqueCharacters(input)
        if (isUnique) {
            println("The string contains only unique characters.")
        } else {
            println("The string contains duplicate characters.")
        }
    } else {
        println("Invalid input. Please enter a valid string.")
    }
}