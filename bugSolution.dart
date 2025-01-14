```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? nullableSum = nullableNumbers.reduce((a, b) => a == null || b == null ? 0 : a + b); //Fixed: handles null values
print(nullableSum); // Output: 12

//Alternative Solution using fold:
int? nullableSum2 = nullableNumbers.fold<int?>(0, (previousValue, element) => previousValue! + (element ?? 0));
print(nullableSum2); //Output: 12
```