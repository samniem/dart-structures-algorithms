void listInsertTime(int pos, String val, List<String> useList) {
    final start = DateTime.now();
    useList.insert(pos, val);
    final end = DateTime.now();
    print("Time taken ${end.difference(start)}");
}

void main() {
    final list = ['Banana', 'Apple', 'Orange'];
    //Access first element
    print(list[0]);
    //Add is constant time, placing a variable at the end of the list
    //Add is amortized as Dart lists have a buffer that needs to be grown sometimes
    list.add('Watermelon');
    print(list[3]);
    //Insert seems to be linear time where double the elements leads to double the time required to move the other elements
    list.insert(0,'Pear');
    print(list[0]);
    print(list[1]);
    listInsertTime(1, 'Cucumber', ['Banana', 'Apple', 'Orange']);
    listInsertTime(1, 'Cucumber', ['Banana', 'Apple', 'Orange','Banana', 'Apple', 'Orange','Banana', 'Apple', 'Orange','Banana', 'Apple', 'Orange','Banana', 'Apple', 'Orange','Banana', 'Apple', 'Orange']);
}