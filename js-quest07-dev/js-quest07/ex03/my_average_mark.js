// Implementing hashing to calculate average of class scores.
function my_average_mark(avg){
    let total = 0;
    let finalResult = 0;
    if(!avg.length)
    return 0;

    for(const obj of avg) {
        total += obj.integer;
        finalResult = total/avg.length;
    }
    return finalResult.toFixed(1);
}
const input = [
        {"string": "John", "integer": 7},
        {"string": "Margot", "integer": 8},
        {"string": "Jules", "integer": 4},
        {"integer": "Marco", "integer": 19}
    ]
const result = my_average_mark(input);
 
//console.log(result);
