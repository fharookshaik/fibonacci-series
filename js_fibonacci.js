const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question("Enter the number of Terms: ", (num) => {
    let num1 = 0, num2 = 1, tmp;

    for(var i=0;i<num;i++){
        process.stdout.write(`${num2} `);
        tmp = num2;
        num2 += num1;
        num1 = tmp;
    }
    process.stdout.write('\n');
    readline.close();
});

