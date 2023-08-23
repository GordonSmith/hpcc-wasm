export function sieve(n) {
    let result = "";

    const prime = new Array(n + 1).fill(true);
    for (let p = 2; p * p <= n; p++) {
        if (prime[p] == true) {
            for (let i = p * p; i <= n; i += p)
                prime[i] = false;
        }
    }

    for (let p = 2; p <= n; p++)
        if (prime[p])
            result += p + " ";

    return result;
}

export function run() {
    console.log(sieve(100));
}

run() 
