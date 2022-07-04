import 'dart:collection';

//Dart by default uses LinkedHashMap which maintains insertion order
void runLinkedHashMap(Map calories) {
    //The calorie values do not reflect reality
    calories['Burger'] = 241;
    print(calories['Burger']);
}

//Hashmap does not maintain isertion order
void runHashMap(calories) {
    final hashCalories = HashMap.of(calories);
    print(hashCalories);
}

void main() {
    final calories = { 'Banana': 23, 'Watermelon': 5, 'Pizza': 242};
    //We mutate the calories map inside the main function
    runLinkedHashMap(calories);
    print(calories);
    runHashMap(calories);
}