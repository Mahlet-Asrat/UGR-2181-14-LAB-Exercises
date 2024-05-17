fun main() {
    println("Enter the month (1-12):")
    val month = readLine()?.toIntOrNull()

    println("Enter the day (1-31):")
    val day = readLine()?.toIntOrNull()

    if (month != null && day != null) {
        val season = when (month) {
            1, 2 -> "Winter"
            3 -> if (day < 20) "Winter" else "Spring"
            4, 5 -> "Spring"
            6 -> if (day < 21) "Spring" else "Summer"
            7, 8 -> "Summer"
            9 -> if (day < 22) "Summer" else "Autumn"
            10, 11 -> "Autumn"
            12 -> if (day < 21) "Autumn" else "Winter"
            else -> "Invalid month"
        }

        println("Season: $season")
    } else {
        println("Invalid input. Please enter valid month and day.")
    }
}