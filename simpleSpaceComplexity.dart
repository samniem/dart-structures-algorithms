
//Constant space complexity behavior
//reserves space for a, b and return value
//Constant space complexity behavior O(1)
int multiplyNumbers(int a, int b) {
    return a * b;
}

//Fills each list item with exactly one char value
//Linear space complexity behavior O(n)
List<String> linearFill(int length) {
    return List.filled(length, 'a');
}

//Quadratic space complexity behavior O(n^2)
//Reserves space for a string of lists where each list value is a string with length of length
List<String> quadraticFill(int length) {
    return List.filled(length, 'a' * length);
}

void main() {
    print(multiplyNumbers(1,2));
    print(linearFill(4));
    print(quadraticFill(4));
}