let name = "sankets"
let fre = {}

for(char of name){
    if(fre[char]){
        fre[char]++
    }else{
        fre[char] = 1
    }
}

console.log(fre)