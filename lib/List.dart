void main() {
  List<int> arr = [1, 3, 4, 5, 67];
  displayArr(arr);        // Display the array
  evenOrOdd(arr);         // Display count of even and odd numbers
  searchElement(arr, 4);  // Search for the element 4
}

// Function to search for an element in the list
void searchElement(List<int> arr, int searchValue) {
  bool found = false;  // Flag to check if element is found

  for (int i in arr) {
    if (i == searchValue) {
      found = true;
      break;  // Exit the loop once the element is found
    }
  }

  if (found) {
    print('$searchValue is found in the list.');
  } else {
    print('$searchValue is not found in the list.');
  }
}

// Function to display elements of the list
void displayArr(List<int> arr) {
  print("Displaying array elements:");
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
  }

  print("Using for-in loop to display elements:");
  for (int i in arr) {
    print(i);
  }
}

// Function to count even and odd numbers in the list
void evenOrOdd(List<int> arr) {
  int countEven = 0;
  int countOdd = 0;

  for (int i in arr) {
    if (i % 2 == 0) {
      countEven++;
    } else {
      countOdd++;
    }
  }

  print('Even numbers count: $countEven');
  print('Odd numbers count: $countOdd');
}
