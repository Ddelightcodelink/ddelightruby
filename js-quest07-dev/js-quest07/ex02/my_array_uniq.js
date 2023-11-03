/**
 * 
 *#1 Qwasar.io -- my_array_uniq 
 * 
 * 
 * Input is an integer array as parameter
 * 
 * Output is an integer array without duplicate
 * 
 */

 function my_array_uniq(a) {
     b = [... new Set(a)];
     return b;
 }

 //console.log(my_array_uniq([1, 1, 2]));

 //console.log(my_array_uniq(param_1));