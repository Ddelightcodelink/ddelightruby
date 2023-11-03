/**
 * 
 * #1 Program input : An integer array.
 * 
 * #2 Program output : Modified array(arr[] * 2).
 * 
 * Program iterate over array and multiply element by 2. 
 * 
 */

 function my_map_mult_two(param_1) {
     for(i = 0; i < param_1.length; i++){
        param_1[i] = param_1[i] * 2;
     }
        return param_1;
}


 //console.log(my_map_mult_two([1, 2, 3, 4, 5]));