fun bubbleSort(arr: IntArray) {
    val n = arr.size

    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (arr[j] > arr[j + 1]) {
                val temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

fun main() {
    val numbers = intArrayOf(5, 2, 8, 1, 9)

    println("Before sorting: ${numbers.contentToString()}")

    bubbleSort(numbers)

    println("After sorting: ${numbers.contentToString()}")
}