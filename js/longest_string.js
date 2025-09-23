function findLongestWord(sentence) {
    let words = sentence.split(" ");
    let longestWord = "";

    for (let word of words) {
        if (word.length > longestWord.length) {
            longestWord = word;
        }
    }

    return longestWord;
}

let sentence = "JavaScript is a powerful programming language";
console.log(findLongestWord(sentence));