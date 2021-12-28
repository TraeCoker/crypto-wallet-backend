


//Iterative example
function sum(array) {
    let sum = 0;
  
    for (let i = 0; i < array.length; i++) {
      sum += array[i];
    }
  
    return sum;
  }

//Recursive example
function sum(array) {
    if (array.length === 1) {
      return array[0];
    } else {
      return array.pop() + sum(array);
    }
  }




  function countDown(n) {
      if (n <= 0) {
        console.log("Happy New Year!");
        return;
      }
      console.log(n);
      countDown(n - 1);
  }



  function factorial(n) { 
    //Base case
    if (n === 0){
        return 1;
    }
    //Recursive case
    return n * factorial(n - 1);
}



factorial(5)                            
    5 * factorial(4)                    //n = 5, call recursive case
        4 * factorial(3)                //n = 4, call recursive case
            3 * factorial(2)            //n = 3, call recursive case
                2 * factorial(1)        //n = 2, call recursive case
                    1 * factorial(0)    //n = 1, call recursive case
                        return 1        //n = 0 which is base case, so return 1
end 





=> 120





console.log(factorial(5));


if (n === 0)
 {
    return 1;
 }
  return x * factorial(n-1);