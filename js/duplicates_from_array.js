const removeDuplicates = (arr) => {
    let newArr = [];

    for (let i = 0; i < arr.length; i++) {
        if (!newArr.includes(arr[i])) {
            newArr.push(arr[i]);
        }
    }

    console.log(newArr);
};

let nums = [1, 2, 3, 4, 1];
removeDuplicates(nums); 