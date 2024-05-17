fun main() {
    println("Enter the number of hours worked:")
    val hoursWorked = readLine()?.toDoubleOrNull()

    println("Enter the hourly rate:")
    val hourlyRate = readLine()?.toDoubleOrNull()

    if (hoursWorked != null && hourlyRate != null) {
        val regularHours = 40
        val overtimeRate = 1.5

        val regularPay = if (hoursWorked <= regularHours) {
            hoursWorked * hourlyRate
        } else {
            regularHours * hourlyRate
        }

        val overtimeHours = if (hoursWorked > regularHours) {
            hoursWorked - regularHours
        } else {
            0.0
        }

        val overtimePay = overtimeHours * hourlyRate * overtimeRate

        val totalPay = regularPay + overtimePay

        println("Regular Pay: $regularPay")
        println("Overtime Pay: $overtimePay")
        println("Total Pay: $totalPay")
    } else {
        println("Invalid input. Please enter valid hours worked and hourly rate.")
    }
}