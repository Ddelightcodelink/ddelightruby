/**
 *#1 Function to return length of each string 
 * 
 *#2 Input is a string array
 * 
 *#3 Output is length of each string
 * 
 */
function my_count_on_it(param_1) {
    let results = [];
    for(i = 0; i < param_1.length; i++){
        results[i] = param_1[i].length;
    }
    return results;
}

//console.log(my_count_on_it(["Good", "Feeding"]));