BubbleSort bubbleSort;
   void setup(String[] args) {  
    int arr[] ={ 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 };  
BubbleSort bubbleSort;
    System.out.println("Array Before Bubble Sort");  
    for (int i=0; i < arr.length; i++) {  
      System.out.print(arr[i] + " ");
    }  
    System.out.println();  

    bubbleSort(arr);//sorting array elements using bubble sort  

    System.out.println("Array After Bubble Sort");  
    for (int i=0; i < arr.length; i++) {  
      System.out.print(arr[i] + " ");
    }
  }
