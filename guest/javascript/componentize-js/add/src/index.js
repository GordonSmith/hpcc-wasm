import print from "print";

export function echo(msg) {
    print(`echo ${msg}`);
    return msg;
}

export function add(a, b) {
    print(`add ${a} + ${b}`);
    return a + b;
}

export function sub(a, b) {
    print(`sub ${a} - ${b}`);
    return a - b;
}
