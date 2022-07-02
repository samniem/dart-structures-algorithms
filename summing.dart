int sumFromOneTo(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
        sum += 1;
    }
    return sum;
}

int betterSumFromOneTo(int n) {
    return n * (n + 1) ~/2;
}

void main() {
    final start = DateTime.now();
    final res = sumFromOneTo(100000000);
    final end = DateTime.now();
    print("result ${res}");
    print("Runtime: ${end.difference(start)}");
    final startBetter = DateTime.now();
    final resBetter = betterSumFromOneTo(100000000);
    final endBetter = DateTime.now();
    print("result ${resBetter}");
    print("Runtime: ${endBetter.difference(startBetter)}");
}