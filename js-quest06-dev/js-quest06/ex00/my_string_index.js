/*

#1 What are the inputs?

#2 What are the output?

#3 What is the function doing?

*/
function my_string_index(haystack, needle) {
    var index = 0;

    while(index < haystack.length) {
        if(haystack[index] == needle) {
            return index;
        }
        index += 1;
    }

    return -1;

}
