let nums = 1234;
let sum = 0;

while (nums > 0) {
    let lastDigit = nums % 10;
    sum += lastDigit;
    nums = Math.floor(nums / 10);
}

console.log(sum);