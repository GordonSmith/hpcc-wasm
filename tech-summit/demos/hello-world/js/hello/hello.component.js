import { environment, exit as exit$1, preopens, stderr, stdin, stdout } from '@bytecodealliance/preview2-shim/cli-base';
import { monotonicClock, wallClock } from '@bytecodealliance/preview2-shim/clocks';
import { filesystem } from '@bytecodealliance/preview2-shim/filesystem';
import { streams } from '@bytecodealliance/preview2-shim/io';
import { random } from '@bytecodealliance/preview2-shim/random';
const { getEnvironment } = environment;
const { exit } = exit$1;
const { getDirectories } = preopens;
const { getStderr } = stderr;
const { getStdin } = stdin;
const { getStdout } = stdout;
const { now,
  resolution } = monotonicClock;
const { now: now$1,
  resolution: resolution$1 } = wallClock;
const { appendViaStream,
  dropDescriptor,
  dropDirectoryEntryStream,
  getFlags,
  getType,
  openAt,
  readViaStream,
  removeDirectoryAt,
  stat,
  unlinkFileAt,
  writeViaStream } = filesystem;
const { blockingRead,
  blockingWrite,
  dropInputStream,
  dropOutputStream,
  read,
  write } = streams;
const { getRandomBytes } = random;

const base64Compile = str => WebAssembly.compile(typeof Buffer !== 'undefined' ? Buffer.from(str, 'base64') : Uint8Array.from(atob(str), b => b.charCodeAt(0)));

let dv = new DataView(new ArrayBuffer());
const dataView = mem => dv.buffer === mem.buffer ? dv : dv = new DataView(mem.buffer);

const isNode = typeof process !== 'undefined' && process.versions && process.versions.node;
let _fs;
async function fetchCompile (url) {
  if (isNode) {
    _fs = _fs || await import('fs/promises');
    return WebAssembly.compile(await _fs.readFile(url));
  }
  return fetch(url).then(WebAssembly.compileStreaming);
}

function getErrorPayload(e) {
  if (e && hasOwnProperty.call(e, 'payload')) return e.payload;
  return e;
}

const hasOwnProperty = Object.prototype.hasOwnProperty;

const instantiateCore = WebAssembly.instantiate;

const toUint64 = val => BigInt.asUintN(64, val);

function toUint32(val) {
  return val >>> 0;
}

const utf8Decoder = new TextDecoder();

const utf8Encoder = new TextEncoder();

let utf8EncodedLen = 0;
function utf8Encode(s, realloc, memory) {
  if (typeof s !== 'string') throw new TypeError('expected a string');
  if (s.length === 0) {
    utf8EncodedLen = 0;
    return 1;
  }
  let allocLen = 0;
  let ptr = 0;
  let writtenTotal = 0;
  while (s.length > 0) {
    ptr = realloc(ptr, allocLen, 1, allocLen + s.length);
    allocLen += s.length;
    const { read, written } = utf8Encoder.encodeInto(
    s,
    new Uint8Array(memory.buffer, ptr + writtenTotal, allocLen - writtenTotal),
    );
    writtenTotal += written;
    s = s.slice(read);
  }
  if (allocLen > writtenTotal)
  ptr = realloc(ptr, allocLen, 1, writtenTotal);
  utf8EncodedLen = writtenTotal;
  return ptr;
}

let exports0;
let exports1;

function lowering0() {
  const ret = resolution();
  return toUint64(ret);
}

function lowering1() {
  const ret = now();
  return toUint64(ret);
}

function lowering2(arg0) {
  dropDirectoryEntryStream(arg0 >>> 0);
}

function lowering3(arg0) {
  dropDescriptor(arg0 >>> 0);
}

function lowering4(arg0) {
  let variant0;
  switch (arg0) {
    case 0: {
      variant0= {
        tag: 'ok',
        val: undefined
      };
      break;
    }
    case 1: {
      variant0= {
        tag: 'err',
        val: undefined
      };
      break;
    }
    default: {
      throw new TypeError('invalid variant discriminant for expected');
    }
  }
  exit(variant0);
}

function lowering5() {
  const ret = getStderr();
  return toUint32(ret);
}

function lowering6() {
  const ret = getStdin();
  return toUint32(ret);
}

function lowering7() {
  const ret = getStdout();
  return toUint32(ret);
}

function lowering8(arg0) {
  dropInputStream(arg0 >>> 0);
}

function lowering9(arg0) {
  dropOutputStream(arg0 >>> 0);
}
let exports2;
let memory0;
let realloc0;

function lowering10(arg0) {
  const ret = getDirectories();
  const vec2 = ret;
  const len2 = vec2.length;
  const result2 = realloc0(0, 0, 4, len2 * 12);
  for (let i = 0; i < vec2.length; i++) {
    const e = vec2[i];
    const base = result2 + i * 12;const [tuple0_0, tuple0_1] = e;
    dataView(memory0).setInt32(base + 0, toUint32(tuple0_0), true);
    const ptr1 = utf8Encode(tuple0_1, realloc0, memory0);
    const len1 = utf8EncodedLen;
    dataView(memory0).setInt32(base + 8, len1, true);
    dataView(memory0).setInt32(base + 4, ptr1, true);
  }
  dataView(memory0).setInt32(arg0 + 4, len2, true);
  dataView(memory0).setInt32(arg0 + 0, result2, true);
}

function lowering11(arg0) {
  const ret = now$1();
  const {seconds: v0_0, nanoseconds: v0_1 } = ret;
  dataView(memory0).setBigInt64(arg0 + 0, toUint64(v0_0), true);
  dataView(memory0).setInt32(arg0 + 8, toUint32(v0_1), true);
}

function lowering12(arg0) {
  const ret = resolution$1();
  const {seconds: v0_0, nanoseconds: v0_1 } = ret;
  dataView(memory0).setBigInt64(arg0 + 0, toUint64(v0_0), true);
  dataView(memory0).setInt32(arg0 + 8, toUint32(v0_1), true);
}

function lowering13(arg0, arg1, arg2) {
  let ret;
  try {
    ret = { tag: 'ok', val: readViaStream(arg0 >>> 0, BigInt.asUintN(64, arg1)) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant1 = ret;
  switch (variant1.tag) {
    case 'ok': {
      const e = variant1.val;
      dataView(memory0).setInt8(arg2 + 0, 0, true);
      dataView(memory0).setInt32(arg2 + 4, toUint32(e), true);
      break;
    }
    case 'err': {
      const e = variant1.val;
      dataView(memory0).setInt8(arg2 + 0, 1, true);
      const val0 = e;
      let enum0;
      switch (val0) {
        case 'access': {
          enum0 = 0;
          break;
        }
        case 'would-block': {
          enum0 = 1;
          break;
        }
        case 'already': {
          enum0 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum0 = 3;
          break;
        }
        case 'busy': {
          enum0 = 4;
          break;
        }
        case 'deadlock': {
          enum0 = 5;
          break;
        }
        case 'quota': {
          enum0 = 6;
          break;
        }
        case 'exist': {
          enum0 = 7;
          break;
        }
        case 'file-too-large': {
          enum0 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum0 = 9;
          break;
        }
        case 'in-progress': {
          enum0 = 10;
          break;
        }
        case 'interrupted': {
          enum0 = 11;
          break;
        }
        case 'invalid': {
          enum0 = 12;
          break;
        }
        case 'io': {
          enum0 = 13;
          break;
        }
        case 'is-directory': {
          enum0 = 14;
          break;
        }
        case 'loop': {
          enum0 = 15;
          break;
        }
        case 'too-many-links': {
          enum0 = 16;
          break;
        }
        case 'message-size': {
          enum0 = 17;
          break;
        }
        case 'name-too-long': {
          enum0 = 18;
          break;
        }
        case 'no-device': {
          enum0 = 19;
          break;
        }
        case 'no-entry': {
          enum0 = 20;
          break;
        }
        case 'no-lock': {
          enum0 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum0 = 22;
          break;
        }
        case 'insufficient-space': {
          enum0 = 23;
          break;
        }
        case 'not-directory': {
          enum0 = 24;
          break;
        }
        case 'not-empty': {
          enum0 = 25;
          break;
        }
        case 'not-recoverable': {
          enum0 = 26;
          break;
        }
        case 'unsupported': {
          enum0 = 27;
          break;
        }
        case 'no-tty': {
          enum0 = 28;
          break;
        }
        case 'no-such-device': {
          enum0 = 29;
          break;
        }
        case 'overflow': {
          enum0 = 30;
          break;
        }
        case 'not-permitted': {
          enum0 = 31;
          break;
        }
        case 'pipe': {
          enum0 = 32;
          break;
        }
        case 'read-only': {
          enum0 = 33;
          break;
        }
        case 'invalid-seek': {
          enum0 = 34;
          break;
        }
        case 'text-file-busy': {
          enum0 = 35;
          break;
        }
        case 'cross-device': {
          enum0 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val0}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg2 + 4, enum0, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering14(arg0, arg1, arg2) {
  let ret;
  try {
    ret = { tag: 'ok', val: writeViaStream(arg0 >>> 0, BigInt.asUintN(64, arg1)) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant1 = ret;
  switch (variant1.tag) {
    case 'ok': {
      const e = variant1.val;
      dataView(memory0).setInt8(arg2 + 0, 0, true);
      dataView(memory0).setInt32(arg2 + 4, toUint32(e), true);
      break;
    }
    case 'err': {
      const e = variant1.val;
      dataView(memory0).setInt8(arg2 + 0, 1, true);
      const val0 = e;
      let enum0;
      switch (val0) {
        case 'access': {
          enum0 = 0;
          break;
        }
        case 'would-block': {
          enum0 = 1;
          break;
        }
        case 'already': {
          enum0 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum0 = 3;
          break;
        }
        case 'busy': {
          enum0 = 4;
          break;
        }
        case 'deadlock': {
          enum0 = 5;
          break;
        }
        case 'quota': {
          enum0 = 6;
          break;
        }
        case 'exist': {
          enum0 = 7;
          break;
        }
        case 'file-too-large': {
          enum0 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum0 = 9;
          break;
        }
        case 'in-progress': {
          enum0 = 10;
          break;
        }
        case 'interrupted': {
          enum0 = 11;
          break;
        }
        case 'invalid': {
          enum0 = 12;
          break;
        }
        case 'io': {
          enum0 = 13;
          break;
        }
        case 'is-directory': {
          enum0 = 14;
          break;
        }
        case 'loop': {
          enum0 = 15;
          break;
        }
        case 'too-many-links': {
          enum0 = 16;
          break;
        }
        case 'message-size': {
          enum0 = 17;
          break;
        }
        case 'name-too-long': {
          enum0 = 18;
          break;
        }
        case 'no-device': {
          enum0 = 19;
          break;
        }
        case 'no-entry': {
          enum0 = 20;
          break;
        }
        case 'no-lock': {
          enum0 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum0 = 22;
          break;
        }
        case 'insufficient-space': {
          enum0 = 23;
          break;
        }
        case 'not-directory': {
          enum0 = 24;
          break;
        }
        case 'not-empty': {
          enum0 = 25;
          break;
        }
        case 'not-recoverable': {
          enum0 = 26;
          break;
        }
        case 'unsupported': {
          enum0 = 27;
          break;
        }
        case 'no-tty': {
          enum0 = 28;
          break;
        }
        case 'no-such-device': {
          enum0 = 29;
          break;
        }
        case 'overflow': {
          enum0 = 30;
          break;
        }
        case 'not-permitted': {
          enum0 = 31;
          break;
        }
        case 'pipe': {
          enum0 = 32;
          break;
        }
        case 'read-only': {
          enum0 = 33;
          break;
        }
        case 'invalid-seek': {
          enum0 = 34;
          break;
        }
        case 'text-file-busy': {
          enum0 = 35;
          break;
        }
        case 'cross-device': {
          enum0 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val0}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg2 + 4, enum0, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering15(arg0, arg1) {
  let ret;
  try {
    ret = { tag: 'ok', val: appendViaStream(arg0 >>> 0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant1 = ret;
  switch (variant1.tag) {
    case 'ok': {
      const e = variant1.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      dataView(memory0).setInt32(arg1 + 4, toUint32(e), true);
      break;
    }
    case 'err': {
      const e = variant1.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      const val0 = e;
      let enum0;
      switch (val0) {
        case 'access': {
          enum0 = 0;
          break;
        }
        case 'would-block': {
          enum0 = 1;
          break;
        }
        case 'already': {
          enum0 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum0 = 3;
          break;
        }
        case 'busy': {
          enum0 = 4;
          break;
        }
        case 'deadlock': {
          enum0 = 5;
          break;
        }
        case 'quota': {
          enum0 = 6;
          break;
        }
        case 'exist': {
          enum0 = 7;
          break;
        }
        case 'file-too-large': {
          enum0 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum0 = 9;
          break;
        }
        case 'in-progress': {
          enum0 = 10;
          break;
        }
        case 'interrupted': {
          enum0 = 11;
          break;
        }
        case 'invalid': {
          enum0 = 12;
          break;
        }
        case 'io': {
          enum0 = 13;
          break;
        }
        case 'is-directory': {
          enum0 = 14;
          break;
        }
        case 'loop': {
          enum0 = 15;
          break;
        }
        case 'too-many-links': {
          enum0 = 16;
          break;
        }
        case 'message-size': {
          enum0 = 17;
          break;
        }
        case 'name-too-long': {
          enum0 = 18;
          break;
        }
        case 'no-device': {
          enum0 = 19;
          break;
        }
        case 'no-entry': {
          enum0 = 20;
          break;
        }
        case 'no-lock': {
          enum0 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum0 = 22;
          break;
        }
        case 'insufficient-space': {
          enum0 = 23;
          break;
        }
        case 'not-directory': {
          enum0 = 24;
          break;
        }
        case 'not-empty': {
          enum0 = 25;
          break;
        }
        case 'not-recoverable': {
          enum0 = 26;
          break;
        }
        case 'unsupported': {
          enum0 = 27;
          break;
        }
        case 'no-tty': {
          enum0 = 28;
          break;
        }
        case 'no-such-device': {
          enum0 = 29;
          break;
        }
        case 'overflow': {
          enum0 = 30;
          break;
        }
        case 'not-permitted': {
          enum0 = 31;
          break;
        }
        case 'pipe': {
          enum0 = 32;
          break;
        }
        case 'read-only': {
          enum0 = 33;
          break;
        }
        case 'invalid-seek': {
          enum0 = 34;
          break;
        }
        case 'text-file-busy': {
          enum0 = 35;
          break;
        }
        case 'cross-device': {
          enum0 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val0}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 4, enum0, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering16(arg0, arg1) {
  let ret;
  try {
    ret = { tag: 'ok', val: getFlags(arg0 >>> 0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant2 = ret;
  switch (variant2.tag) {
    case 'ok': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      let flags0 = 0;
      if (typeof e === 'object' && e !== null) {
        flags0 = Boolean(e.read) << 0 | Boolean(e.write) << 1 | Boolean(e.fileIntegritySync) << 2 | Boolean(e.dataIntegritySync) << 3 | Boolean(e.requestedWriteSync) << 4 | Boolean(e.mutateDirectory) << 5;
      } else if (e !== null && e!== undefined) {
        throw new TypeError('only an object, undefined or null can be converted to flags');
      }
      dataView(memory0).setInt8(arg1 + 1, flags0, true);
      break;
    }
    case 'err': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      const val1 = e;
      let enum1;
      switch (val1) {
        case 'access': {
          enum1 = 0;
          break;
        }
        case 'would-block': {
          enum1 = 1;
          break;
        }
        case 'already': {
          enum1 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum1 = 3;
          break;
        }
        case 'busy': {
          enum1 = 4;
          break;
        }
        case 'deadlock': {
          enum1 = 5;
          break;
        }
        case 'quota': {
          enum1 = 6;
          break;
        }
        case 'exist': {
          enum1 = 7;
          break;
        }
        case 'file-too-large': {
          enum1 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum1 = 9;
          break;
        }
        case 'in-progress': {
          enum1 = 10;
          break;
        }
        case 'interrupted': {
          enum1 = 11;
          break;
        }
        case 'invalid': {
          enum1 = 12;
          break;
        }
        case 'io': {
          enum1 = 13;
          break;
        }
        case 'is-directory': {
          enum1 = 14;
          break;
        }
        case 'loop': {
          enum1 = 15;
          break;
        }
        case 'too-many-links': {
          enum1 = 16;
          break;
        }
        case 'message-size': {
          enum1 = 17;
          break;
        }
        case 'name-too-long': {
          enum1 = 18;
          break;
        }
        case 'no-device': {
          enum1 = 19;
          break;
        }
        case 'no-entry': {
          enum1 = 20;
          break;
        }
        case 'no-lock': {
          enum1 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum1 = 22;
          break;
        }
        case 'insufficient-space': {
          enum1 = 23;
          break;
        }
        case 'not-directory': {
          enum1 = 24;
          break;
        }
        case 'not-empty': {
          enum1 = 25;
          break;
        }
        case 'not-recoverable': {
          enum1 = 26;
          break;
        }
        case 'unsupported': {
          enum1 = 27;
          break;
        }
        case 'no-tty': {
          enum1 = 28;
          break;
        }
        case 'no-such-device': {
          enum1 = 29;
          break;
        }
        case 'overflow': {
          enum1 = 30;
          break;
        }
        case 'not-permitted': {
          enum1 = 31;
          break;
        }
        case 'pipe': {
          enum1 = 32;
          break;
        }
        case 'read-only': {
          enum1 = 33;
          break;
        }
        case 'invalid-seek': {
          enum1 = 34;
          break;
        }
        case 'text-file-busy': {
          enum1 = 35;
          break;
        }
        case 'cross-device': {
          enum1 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val1}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 1, enum1, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering17(arg0, arg1) {
  let ret;
  try {
    ret = { tag: 'ok', val: getType(arg0 >>> 0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant2 = ret;
  switch (variant2.tag) {
    case 'ok': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      const val0 = e;
      let enum0;
      switch (val0) {
        case 'unknown': {
          enum0 = 0;
          break;
        }
        case 'block-device': {
          enum0 = 1;
          break;
        }
        case 'character-device': {
          enum0 = 2;
          break;
        }
        case 'directory': {
          enum0 = 3;
          break;
        }
        case 'fifo': {
          enum0 = 4;
          break;
        }
        case 'symbolic-link': {
          enum0 = 5;
          break;
        }
        case 'regular-file': {
          enum0 = 6;
          break;
        }
        case 'socket': {
          enum0 = 7;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val0}" is not one of the cases of descriptor-type`);
        }
      }
      dataView(memory0).setInt8(arg1 + 1, enum0, true);
      break;
    }
    case 'err': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      const val1 = e;
      let enum1;
      switch (val1) {
        case 'access': {
          enum1 = 0;
          break;
        }
        case 'would-block': {
          enum1 = 1;
          break;
        }
        case 'already': {
          enum1 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum1 = 3;
          break;
        }
        case 'busy': {
          enum1 = 4;
          break;
        }
        case 'deadlock': {
          enum1 = 5;
          break;
        }
        case 'quota': {
          enum1 = 6;
          break;
        }
        case 'exist': {
          enum1 = 7;
          break;
        }
        case 'file-too-large': {
          enum1 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum1 = 9;
          break;
        }
        case 'in-progress': {
          enum1 = 10;
          break;
        }
        case 'interrupted': {
          enum1 = 11;
          break;
        }
        case 'invalid': {
          enum1 = 12;
          break;
        }
        case 'io': {
          enum1 = 13;
          break;
        }
        case 'is-directory': {
          enum1 = 14;
          break;
        }
        case 'loop': {
          enum1 = 15;
          break;
        }
        case 'too-many-links': {
          enum1 = 16;
          break;
        }
        case 'message-size': {
          enum1 = 17;
          break;
        }
        case 'name-too-long': {
          enum1 = 18;
          break;
        }
        case 'no-device': {
          enum1 = 19;
          break;
        }
        case 'no-entry': {
          enum1 = 20;
          break;
        }
        case 'no-lock': {
          enum1 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum1 = 22;
          break;
        }
        case 'insufficient-space': {
          enum1 = 23;
          break;
        }
        case 'not-directory': {
          enum1 = 24;
          break;
        }
        case 'not-empty': {
          enum1 = 25;
          break;
        }
        case 'not-recoverable': {
          enum1 = 26;
          break;
        }
        case 'unsupported': {
          enum1 = 27;
          break;
        }
        case 'no-tty': {
          enum1 = 28;
          break;
        }
        case 'no-such-device': {
          enum1 = 29;
          break;
        }
        case 'overflow': {
          enum1 = 30;
          break;
        }
        case 'not-permitted': {
          enum1 = 31;
          break;
        }
        case 'pipe': {
          enum1 = 32;
          break;
        }
        case 'read-only': {
          enum1 = 33;
          break;
        }
        case 'invalid-seek': {
          enum1 = 34;
          break;
        }
        case 'text-file-busy': {
          enum1 = 35;
          break;
        }
        case 'cross-device': {
          enum1 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val1}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 1, enum1, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering18(arg0, arg1) {
  let ret;
  try {
    ret = { tag: 'ok', val: stat(arg0 >>> 0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant6 = ret;
  switch (variant6.tag) {
    case 'ok': {
      const e = variant6.val;
      dataView(memory0).setInt8(arg1 + 0, 0, true);
      const {device: v0_0, inode: v0_1, type: v0_2, linkCount: v0_3, size: v0_4, dataAccessTimestamp: v0_5, dataModificationTimestamp: v0_6, statusChangeTimestamp: v0_7 } = e;
      dataView(memory0).setBigInt64(arg1 + 8, toUint64(v0_0), true);
      dataView(memory0).setBigInt64(arg1 + 16, toUint64(v0_1), true);
      const val1 = v0_2;
      let enum1;
      switch (val1) {
        case 'unknown': {
          enum1 = 0;
          break;
        }
        case 'block-device': {
          enum1 = 1;
          break;
        }
        case 'character-device': {
          enum1 = 2;
          break;
        }
        case 'directory': {
          enum1 = 3;
          break;
        }
        case 'fifo': {
          enum1 = 4;
          break;
        }
        case 'symbolic-link': {
          enum1 = 5;
          break;
        }
        case 'regular-file': {
          enum1 = 6;
          break;
        }
        case 'socket': {
          enum1 = 7;
          break;
        }
        default: {
          if ((v0_2) instanceof Error) {
            console.error(v0_2);
          }
          
          throw new TypeError(`"${val1}" is not one of the cases of descriptor-type`);
        }
      }
      dataView(memory0).setInt8(arg1 + 24, enum1, true);
      dataView(memory0).setBigInt64(arg1 + 32, toUint64(v0_3), true);
      dataView(memory0).setBigInt64(arg1 + 40, toUint64(v0_4), true);
      const {seconds: v2_0, nanoseconds: v2_1 } = v0_5;
      dataView(memory0).setBigInt64(arg1 + 48, toUint64(v2_0), true);
      dataView(memory0).setInt32(arg1 + 56, toUint32(v2_1), true);
      const {seconds: v3_0, nanoseconds: v3_1 } = v0_6;
      dataView(memory0).setBigInt64(arg1 + 64, toUint64(v3_0), true);
      dataView(memory0).setInt32(arg1 + 72, toUint32(v3_1), true);
      const {seconds: v4_0, nanoseconds: v4_1 } = v0_7;
      dataView(memory0).setBigInt64(arg1 + 80, toUint64(v4_0), true);
      dataView(memory0).setInt32(arg1 + 88, toUint32(v4_1), true);
      break;
    }
    case 'err': {
      const e = variant6.val;
      dataView(memory0).setInt8(arg1 + 0, 1, true);
      const val5 = e;
      let enum5;
      switch (val5) {
        case 'access': {
          enum5 = 0;
          break;
        }
        case 'would-block': {
          enum5 = 1;
          break;
        }
        case 'already': {
          enum5 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum5 = 3;
          break;
        }
        case 'busy': {
          enum5 = 4;
          break;
        }
        case 'deadlock': {
          enum5 = 5;
          break;
        }
        case 'quota': {
          enum5 = 6;
          break;
        }
        case 'exist': {
          enum5 = 7;
          break;
        }
        case 'file-too-large': {
          enum5 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum5 = 9;
          break;
        }
        case 'in-progress': {
          enum5 = 10;
          break;
        }
        case 'interrupted': {
          enum5 = 11;
          break;
        }
        case 'invalid': {
          enum5 = 12;
          break;
        }
        case 'io': {
          enum5 = 13;
          break;
        }
        case 'is-directory': {
          enum5 = 14;
          break;
        }
        case 'loop': {
          enum5 = 15;
          break;
        }
        case 'too-many-links': {
          enum5 = 16;
          break;
        }
        case 'message-size': {
          enum5 = 17;
          break;
        }
        case 'name-too-long': {
          enum5 = 18;
          break;
        }
        case 'no-device': {
          enum5 = 19;
          break;
        }
        case 'no-entry': {
          enum5 = 20;
          break;
        }
        case 'no-lock': {
          enum5 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum5 = 22;
          break;
        }
        case 'insufficient-space': {
          enum5 = 23;
          break;
        }
        case 'not-directory': {
          enum5 = 24;
          break;
        }
        case 'not-empty': {
          enum5 = 25;
          break;
        }
        case 'not-recoverable': {
          enum5 = 26;
          break;
        }
        case 'unsupported': {
          enum5 = 27;
          break;
        }
        case 'no-tty': {
          enum5 = 28;
          break;
        }
        case 'no-such-device': {
          enum5 = 29;
          break;
        }
        case 'overflow': {
          enum5 = 30;
          break;
        }
        case 'not-permitted': {
          enum5 = 31;
          break;
        }
        case 'pipe': {
          enum5 = 32;
          break;
        }
        case 'read-only': {
          enum5 = 33;
          break;
        }
        case 'invalid-seek': {
          enum5 = 34;
          break;
        }
        case 'text-file-busy': {
          enum5 = 35;
          break;
        }
        case 'cross-device': {
          enum5 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val5}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg1 + 8, enum5, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering19(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7) {
  if ((arg1 & 4294967294) !== 0) {
    throw new TypeError('flags have extraneous bits set');
  }
  const flags0 = {
    symlinkFollow: Boolean(arg1 & 1),
  };
  const ptr1 = arg2;
  const len1 = arg3;
  const result1 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr1, len1));
  if ((arg4 & 4294967280) !== 0) {
    throw new TypeError('flags have extraneous bits set');
  }
  const flags2 = {
    create: Boolean(arg4 & 1),
    directory: Boolean(arg4 & 2),
    exclusive: Boolean(arg4 & 4),
    truncate: Boolean(arg4 & 8),
  };
  if ((arg5 & 4294967232) !== 0) {
    throw new TypeError('flags have extraneous bits set');
  }
  const flags3 = {
    read: Boolean(arg5 & 1),
    write: Boolean(arg5 & 2),
    fileIntegritySync: Boolean(arg5 & 4),
    dataIntegritySync: Boolean(arg5 & 8),
    requestedWriteSync: Boolean(arg5 & 16),
    mutateDirectory: Boolean(arg5 & 32),
  };
  if ((arg6 & 4294967288) !== 0) {
    throw new TypeError('flags have extraneous bits set');
  }
  const flags4 = {
    readable: Boolean(arg6 & 1),
    writable: Boolean(arg6 & 2),
    executable: Boolean(arg6 & 4),
  };
  let ret;
  try {
    ret = { tag: 'ok', val: openAt(arg0 >>> 0, flags0, result1, flags2, flags3, flags4) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant6 = ret;
  switch (variant6.tag) {
    case 'ok': {
      const e = variant6.val;
      dataView(memory0).setInt8(arg7 + 0, 0, true);
      dataView(memory0).setInt32(arg7 + 4, toUint32(e), true);
      break;
    }
    case 'err': {
      const e = variant6.val;
      dataView(memory0).setInt8(arg7 + 0, 1, true);
      const val5 = e;
      let enum5;
      switch (val5) {
        case 'access': {
          enum5 = 0;
          break;
        }
        case 'would-block': {
          enum5 = 1;
          break;
        }
        case 'already': {
          enum5 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum5 = 3;
          break;
        }
        case 'busy': {
          enum5 = 4;
          break;
        }
        case 'deadlock': {
          enum5 = 5;
          break;
        }
        case 'quota': {
          enum5 = 6;
          break;
        }
        case 'exist': {
          enum5 = 7;
          break;
        }
        case 'file-too-large': {
          enum5 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum5 = 9;
          break;
        }
        case 'in-progress': {
          enum5 = 10;
          break;
        }
        case 'interrupted': {
          enum5 = 11;
          break;
        }
        case 'invalid': {
          enum5 = 12;
          break;
        }
        case 'io': {
          enum5 = 13;
          break;
        }
        case 'is-directory': {
          enum5 = 14;
          break;
        }
        case 'loop': {
          enum5 = 15;
          break;
        }
        case 'too-many-links': {
          enum5 = 16;
          break;
        }
        case 'message-size': {
          enum5 = 17;
          break;
        }
        case 'name-too-long': {
          enum5 = 18;
          break;
        }
        case 'no-device': {
          enum5 = 19;
          break;
        }
        case 'no-entry': {
          enum5 = 20;
          break;
        }
        case 'no-lock': {
          enum5 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum5 = 22;
          break;
        }
        case 'insufficient-space': {
          enum5 = 23;
          break;
        }
        case 'not-directory': {
          enum5 = 24;
          break;
        }
        case 'not-empty': {
          enum5 = 25;
          break;
        }
        case 'not-recoverable': {
          enum5 = 26;
          break;
        }
        case 'unsupported': {
          enum5 = 27;
          break;
        }
        case 'no-tty': {
          enum5 = 28;
          break;
        }
        case 'no-such-device': {
          enum5 = 29;
          break;
        }
        case 'overflow': {
          enum5 = 30;
          break;
        }
        case 'not-permitted': {
          enum5 = 31;
          break;
        }
        case 'pipe': {
          enum5 = 32;
          break;
        }
        case 'read-only': {
          enum5 = 33;
          break;
        }
        case 'invalid-seek': {
          enum5 = 34;
          break;
        }
        case 'text-file-busy': {
          enum5 = 35;
          break;
        }
        case 'cross-device': {
          enum5 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val5}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg7 + 4, enum5, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering20(arg0, arg1, arg2, arg3) {
  const ptr0 = arg1;
  const len0 = arg2;
  const result0 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr0, len0));
  let ret;
  try {
    ret = { tag: 'ok', val: removeDirectoryAt(arg0 >>> 0, result0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant2 = ret;
  switch (variant2.tag) {
    case 'ok': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 1, true);
      const val1 = e;
      let enum1;
      switch (val1) {
        case 'access': {
          enum1 = 0;
          break;
        }
        case 'would-block': {
          enum1 = 1;
          break;
        }
        case 'already': {
          enum1 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum1 = 3;
          break;
        }
        case 'busy': {
          enum1 = 4;
          break;
        }
        case 'deadlock': {
          enum1 = 5;
          break;
        }
        case 'quota': {
          enum1 = 6;
          break;
        }
        case 'exist': {
          enum1 = 7;
          break;
        }
        case 'file-too-large': {
          enum1 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum1 = 9;
          break;
        }
        case 'in-progress': {
          enum1 = 10;
          break;
        }
        case 'interrupted': {
          enum1 = 11;
          break;
        }
        case 'invalid': {
          enum1 = 12;
          break;
        }
        case 'io': {
          enum1 = 13;
          break;
        }
        case 'is-directory': {
          enum1 = 14;
          break;
        }
        case 'loop': {
          enum1 = 15;
          break;
        }
        case 'too-many-links': {
          enum1 = 16;
          break;
        }
        case 'message-size': {
          enum1 = 17;
          break;
        }
        case 'name-too-long': {
          enum1 = 18;
          break;
        }
        case 'no-device': {
          enum1 = 19;
          break;
        }
        case 'no-entry': {
          enum1 = 20;
          break;
        }
        case 'no-lock': {
          enum1 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum1 = 22;
          break;
        }
        case 'insufficient-space': {
          enum1 = 23;
          break;
        }
        case 'not-directory': {
          enum1 = 24;
          break;
        }
        case 'not-empty': {
          enum1 = 25;
          break;
        }
        case 'not-recoverable': {
          enum1 = 26;
          break;
        }
        case 'unsupported': {
          enum1 = 27;
          break;
        }
        case 'no-tty': {
          enum1 = 28;
          break;
        }
        case 'no-such-device': {
          enum1 = 29;
          break;
        }
        case 'overflow': {
          enum1 = 30;
          break;
        }
        case 'not-permitted': {
          enum1 = 31;
          break;
        }
        case 'pipe': {
          enum1 = 32;
          break;
        }
        case 'read-only': {
          enum1 = 33;
          break;
        }
        case 'invalid-seek': {
          enum1 = 34;
          break;
        }
        case 'text-file-busy': {
          enum1 = 35;
          break;
        }
        case 'cross-device': {
          enum1 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val1}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg3 + 1, enum1, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering21(arg0, arg1, arg2, arg3) {
  const ptr0 = arg1;
  const len0 = arg2;
  const result0 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr0, len0));
  let ret;
  try {
    ret = { tag: 'ok', val: unlinkFileAt(arg0 >>> 0, result0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant2 = ret;
  switch (variant2.tag) {
    case 'ok': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 0, true);
      break;
    }
    case 'err': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 1, true);
      const val1 = e;
      let enum1;
      switch (val1) {
        case 'access': {
          enum1 = 0;
          break;
        }
        case 'would-block': {
          enum1 = 1;
          break;
        }
        case 'already': {
          enum1 = 2;
          break;
        }
        case 'bad-descriptor': {
          enum1 = 3;
          break;
        }
        case 'busy': {
          enum1 = 4;
          break;
        }
        case 'deadlock': {
          enum1 = 5;
          break;
        }
        case 'quota': {
          enum1 = 6;
          break;
        }
        case 'exist': {
          enum1 = 7;
          break;
        }
        case 'file-too-large': {
          enum1 = 8;
          break;
        }
        case 'illegal-byte-sequence': {
          enum1 = 9;
          break;
        }
        case 'in-progress': {
          enum1 = 10;
          break;
        }
        case 'interrupted': {
          enum1 = 11;
          break;
        }
        case 'invalid': {
          enum1 = 12;
          break;
        }
        case 'io': {
          enum1 = 13;
          break;
        }
        case 'is-directory': {
          enum1 = 14;
          break;
        }
        case 'loop': {
          enum1 = 15;
          break;
        }
        case 'too-many-links': {
          enum1 = 16;
          break;
        }
        case 'message-size': {
          enum1 = 17;
          break;
        }
        case 'name-too-long': {
          enum1 = 18;
          break;
        }
        case 'no-device': {
          enum1 = 19;
          break;
        }
        case 'no-entry': {
          enum1 = 20;
          break;
        }
        case 'no-lock': {
          enum1 = 21;
          break;
        }
        case 'insufficient-memory': {
          enum1 = 22;
          break;
        }
        case 'insufficient-space': {
          enum1 = 23;
          break;
        }
        case 'not-directory': {
          enum1 = 24;
          break;
        }
        case 'not-empty': {
          enum1 = 25;
          break;
        }
        case 'not-recoverable': {
          enum1 = 26;
          break;
        }
        case 'unsupported': {
          enum1 = 27;
          break;
        }
        case 'no-tty': {
          enum1 = 28;
          break;
        }
        case 'no-such-device': {
          enum1 = 29;
          break;
        }
        case 'overflow': {
          enum1 = 30;
          break;
        }
        case 'not-permitted': {
          enum1 = 31;
          break;
        }
        case 'pipe': {
          enum1 = 32;
          break;
        }
        case 'read-only': {
          enum1 = 33;
          break;
        }
        case 'invalid-seek': {
          enum1 = 34;
          break;
        }
        case 'text-file-busy': {
          enum1 = 35;
          break;
        }
        case 'cross-device': {
          enum1 = 36;
          break;
        }
        default: {
          if ((e) instanceof Error) {
            console.error(e);
          }
          
          throw new TypeError(`"${val1}" is not one of the cases of error-code`);
        }
      }
      dataView(memory0).setInt8(arg3 + 1, enum1, true);
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering22(arg0, arg1) {
  const ret = getRandomBytes(BigInt.asUintN(64, arg0));
  const val0 = ret;
  const len0 = val0.byteLength;
  const ptr0 = realloc0(0, 0, 1, len0 * 1);
  const src0 = new Uint8Array(val0.buffer || val0, val0.byteOffset, len0 * 1);
  (new Uint8Array(memory0.buffer, ptr0, len0 * 1)).set(src0);
  dataView(memory0).setInt32(arg1 + 4, len0, true);
  dataView(memory0).setInt32(arg1 + 0, ptr0, true);
}

function lowering23(arg0) {
  const ret = getEnvironment();
  const vec3 = ret;
  const len3 = vec3.length;
  const result3 = realloc0(0, 0, 4, len3 * 16);
  for (let i = 0; i < vec3.length; i++) {
    const e = vec3[i];
    const base = result3 + i * 16;const [tuple0_0, tuple0_1] = e;
    const ptr1 = utf8Encode(tuple0_0, realloc0, memory0);
    const len1 = utf8EncodedLen;
    dataView(memory0).setInt32(base + 4, len1, true);
    dataView(memory0).setInt32(base + 0, ptr1, true);
    const ptr2 = utf8Encode(tuple0_1, realloc0, memory0);
    const len2 = utf8EncodedLen;
    dataView(memory0).setInt32(base + 12, len2, true);
    dataView(memory0).setInt32(base + 8, ptr2, true);
  }
  dataView(memory0).setInt32(arg0 + 4, len3, true);
  dataView(memory0).setInt32(arg0 + 0, result3, true);
}

function lowering24(arg0, arg1, arg2) {
  let ret;
  try {
    ret = { tag: 'ok', val: read(arg0 >>> 0, BigInt.asUintN(64, arg1)) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant3 = ret;
  switch (variant3.tag) {
    case 'ok': {
      const e = variant3.val;
      dataView(memory0).setInt8(arg2 + 0, 0, true);
      const [tuple0_0, tuple0_1] = e;
      const val1 = tuple0_0;
      const len1 = val1.byteLength;
      const ptr1 = realloc0(0, 0, 1, len1 * 1);
      const src1 = new Uint8Array(val1.buffer || val1, val1.byteOffset, len1 * 1);
      (new Uint8Array(memory0.buffer, ptr1, len1 * 1)).set(src1);
      dataView(memory0).setInt32(arg2 + 8, len1, true);
      dataView(memory0).setInt32(arg2 + 4, ptr1, true);
      dataView(memory0).setInt8(arg2 + 12, tuple0_1 ? 1 : 0, true);
      break;
    }
    case 'err': {
      const e = variant3.val;
      dataView(memory0).setInt8(arg2 + 0, 1, true);
      const { } = e;
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering25(arg0, arg1, arg2) {
  let ret;
  try {
    ret = { tag: 'ok', val: blockingRead(arg0 >>> 0, BigInt.asUintN(64, arg1)) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant3 = ret;
  switch (variant3.tag) {
    case 'ok': {
      const e = variant3.val;
      dataView(memory0).setInt8(arg2 + 0, 0, true);
      const [tuple0_0, tuple0_1] = e;
      const val1 = tuple0_0;
      const len1 = val1.byteLength;
      const ptr1 = realloc0(0, 0, 1, len1 * 1);
      const src1 = new Uint8Array(val1.buffer || val1, val1.byteOffset, len1 * 1);
      (new Uint8Array(memory0.buffer, ptr1, len1 * 1)).set(src1);
      dataView(memory0).setInt32(arg2 + 8, len1, true);
      dataView(memory0).setInt32(arg2 + 4, ptr1, true);
      dataView(memory0).setInt8(arg2 + 12, tuple0_1 ? 1 : 0, true);
      break;
    }
    case 'err': {
      const e = variant3.val;
      dataView(memory0).setInt8(arg2 + 0, 1, true);
      const { } = e;
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering26(arg0, arg1, arg2, arg3) {
  const ptr0 = arg1;
  const len0 = arg2;
  const result0 = new Uint8Array(memory0.buffer.slice(ptr0, ptr0 + len0 * 1));
  let ret;
  try {
    ret = { tag: 'ok', val: write(arg0 >>> 0, result0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant2 = ret;
  switch (variant2.tag) {
    case 'ok': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 0, true);
      dataView(memory0).setBigInt64(arg3 + 8, toUint64(e), true);
      break;
    }
    case 'err': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 1, true);
      const { } = e;
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}

function lowering27(arg0, arg1, arg2, arg3) {
  const ptr0 = arg1;
  const len0 = arg2;
  const result0 = new Uint8Array(memory0.buffer.slice(ptr0, ptr0 + len0 * 1));
  let ret;
  try {
    ret = { tag: 'ok', val: blockingWrite(arg0 >>> 0, result0) };
  } catch (e) {
    ret = { tag: 'err', val: getErrorPayload(e) };
  }
  const variant2 = ret;
  switch (variant2.tag) {
    case 'ok': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 0, true);
      dataView(memory0).setBigInt64(arg3 + 8, toUint64(e), true);
      break;
    }
    case 'err': {
      const e = variant2.val;
      dataView(memory0).setInt8(arg3 + 0, 1, true);
      const { } = e;
      break;
    }
    default: {
      throw new TypeError('invalid variant specified for result');
    }
  }
}
let exports3;
let realloc1;
let postReturn0;

function hello(arg0) {
  const ptr0 = utf8Encode(arg0, realloc1, memory0);
  const len0 = utf8EncodedLen;
  const ret = exports1.hello(ptr0, len0);
  const ptr1 = dataView(memory0).getInt32(ret + 0, true);
  const len1 = dataView(memory0).getInt32(ret + 4, true);
  const result1 = utf8Decoder.decode(new Uint8Array(memory0.buffer, ptr1, len1));
  postReturn0(ret);
  return result1;
}

const $init = (async() => {
  const module0 = fetchCompile(new URL('./hello.component.core.wasm', import.meta.url));
  const module1 = fetchCompile(new URL('./hello.component.core2.wasm', import.meta.url));
  const module2 = base64Compile('AGFzbQEAAAABYQ5gAX8AYAN/fn8AYAJ/fwBgCH9/f39/f39/AGAEf39/fwBgAn5/AGAEf39/fwF/YAJ/fwF/YAN/fn8Bf2ABfwF/YAN/f38Bf2AEf35/fwF/YAl/f39/f35+f38Bf2ABfwADJCMAAAABAQICAgIDBAQFAAEBBAQGBwcHCAkHBwcKBgsMCgoNBwQFAXABIyMHsQEkATAAAAExAAEBMgACATMAAwE0AAQBNQAFATYABgE3AAcBOAAIATkACQIxMAAKAjExAAsCMTIADAIxMwANAjE0AA4CMTUADwIxNgAQAjE3ABECMTgAEgIxOQATAjIwABQCMjEAFQIyMgAWAjIzABcCMjQAGAIyNQAZAjI2ABoCMjcAGwIyOAAcAjI5AB0CMzAAHgIzMQAfAjMyACACMzMAIQIzNAAiCCRpbXBvcnRzAQAK3wMjCQAgAEEAEQAACwkAIABBAREAAAsJACAAQQIRAAALDQAgACABIAJBAxEBAAsNACAAIAEgAkEEEQEACwsAIAAgAUEFEQIACwsAIAAgAUEGEQIACwsAIAAgAUEHEQIACwsAIAAgAUEIEQIACxcAIAAgASACIAMgBCAFIAYgB0EJEQMACw8AIAAgASACIANBChEEAAsPACAAIAEgAiADQQsRBAALCwAgACABQQwRBQALCQAgAEENEQAACw0AIAAgASACQQ4RAQALDQAgACABIAJBDxEBAAsPACAAIAEgAiADQRARBAALDwAgACABIAIgA0EREQQACw8AIAAgASACIANBEhEGAAsLACAAIAFBExEHAAsLACAAIAFBFBEHAAsLACAAIAFBFREHAAsNACAAIAEgAkEWEQgACwkAIABBFxEJAAsLACAAIAFBGBEHAAsLACAAIAFBGREHAAsLACAAIAFBGhEHAAsNACAAIAEgAkEbEQoACw8AIAAgASACIANBHBEGAAsPACAAIAEgAiADQR0RCwALGQAgACABIAIgAyAEIAUgBiAHIAhBHhEMAAsNACAAIAEgAkEfEQoACw0AIAAgASACQSARCgALCQAgAEEhEQ0ACwsAIAAgAUEiEQcACwAuCXByb2R1Y2VycwEMcHJvY2Vzc2VkLWJ5AQ13aXQtY29tcG9uZW50BjAuMTEuMAC7DARuYW1lABMSd2l0LWNvbXBvbmVudDpzaGltAZ4MIwAvaW5kaXJlY3Qtd2FzaTpjbGktYmFzZS9wcmVvcGVucy1nZXQtZGlyZWN0b3JpZXMBI2luZGlyZWN0LXdhc2k6Y2xvY2tzL3dhbGwtY2xvY2stbm93AippbmRpcmVjdC13YXNpOmNsb2Nrcy93YWxsLWNsb2NrLXJlc29sdXRpb24DM2luZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9maWxlc3lzdGVtLXJlYWQtdmlhLXN0cmVhbQQ0aW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL2ZpbGVzeXN0ZW0td3JpdGUtdmlhLXN0cmVhbQU1aW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL2ZpbGVzeXN0ZW0tYXBwZW5kLXZpYS1zdHJlYW0GLWluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9maWxlc3lzdGVtLWdldC1mbGFncwcsaW5kaXJlY3Qtd2FzaTpmaWxlc3lzdGVtL2ZpbGVzeXN0ZW0tZ2V0LXR5cGUIKGluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9maWxlc3lzdGVtLXN0YXQJK2luZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9maWxlc3lzdGVtLW9wZW4tYXQKN2luZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9maWxlc3lzdGVtLXJlbW92ZS1kaXJlY3RvcnktYXQLMmluZGlyZWN0LXdhc2k6ZmlsZXN5c3RlbS9maWxlc3lzdGVtLXVubGluay1maWxlLWF0DCxpbmRpcmVjdC13YXNpOnJhbmRvbS9yYW5kb20tZ2V0LXJhbmRvbS1ieXRlcw0yaW5kaXJlY3Qtd2FzaTpjbGktYmFzZS9lbnZpcm9ubWVudC1nZXQtZW52aXJvbm1lbnQOHWluZGlyZWN0LXdhc2k6aW8vc3RyZWFtcy1yZWFkDyZpbmRpcmVjdC13YXNpOmlvL3N0cmVhbXMtYmxvY2tpbmctcmVhZBAeaW5kaXJlY3Qtd2FzaTppby9zdHJlYW1zLXdyaXRlESdpbmRpcmVjdC13YXNpOmlvL3N0cmVhbXMtYmxvY2tpbmctd3JpdGUSJWFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZmRfd3JpdGUTKGFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZW52aXJvbl9nZXQULmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZW52aXJvbl9zaXplc19nZXQVKmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtY2xvY2tfcmVzX2dldBYrYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1jbG9ja190aW1lX2dldBclYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1mZF9jbG9zZRgqYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1mZF9mZHN0YXRfZ2V0GTBhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLWZkX2Zkc3RhdF9zZXRfZmxhZ3MaK2FkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZmRfcHJlc3RhdF9nZXQbMGFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtZmRfcHJlc3RhdF9kaXJfbmFtZRwkYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1mZF9yZWFkHSRhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLWZkX3NlZWseJmFkYXB0LXdhc2lfc25hcHNob3RfcHJldmlldzEtcGF0aF9vcGVuHzJhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLXBhdGhfcmVtb3ZlX2RpcmVjdG9yeSAtYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1wYXRoX3VubGlua19maWxlISZhZGFwdC13YXNpX3NuYXBzaG90X3ByZXZpZXcxLXByb2NfZXhpdCInYWRhcHQtd2FzaV9zbmFwc2hvdF9wcmV2aWV3MS1yYW5kb21fZ2V0');
  const module3 = base64Compile('AGFzbQEAAAABYQ5gAX8AYAN/fn8AYAJ/fwBgCH9/f39/f39/AGAEf39/fwBgAn5/AGAEf39/fwF/YAJ/fwF/YAN/fn8Bf2ABfwF/YAN/f38Bf2AEf35/fwF/YAl/f39/f35+f38Bf2ABfwAC2AEkAAEwAAAAATEAAAABMgAAAAEzAAEAATQAAQABNQACAAE2AAIAATcAAgABOAACAAE5AAMAAjEwAAQAAjExAAQAAjEyAAUAAjEzAAAAAjE0AAEAAjE1AAEAAjE2AAQAAjE3AAQAAjE4AAYAAjE5AAcAAjIwAAcAAjIxAAcAAjIyAAgAAjIzAAkAAjI0AAcAAjI1AAcAAjI2AAcAAjI3AAoAAjI4AAYAAjI5AAsAAjMwAAwAAjMxAAoAAjMyAAoAAjMzAA0AAjM0AAcACCRpbXBvcnRzAXABIyMJKQEAQQALIwABAgMEBQYHCAkKCwwNDg8QERITFBUWFxgZGhscHR4fICEiAC4JcHJvZHVjZXJzAQxwcm9jZXNzZWQtYnkBDXdpdC1jb21wb25lbnQGMC4xMS4wABwEbmFtZQAVFHdpdC1jb21wb25lbnQ6Zml4dXBz');
  Promise.all([module0, module1, module2, module3]).catch(() => {});
  ({ exports: exports0 } = await instantiateCore(await module2));
  ({ exports: exports1 } = await instantiateCore(await module0, {
    wasi_snapshot_preview1: {
      clock_res_get: exports0['21'],
      clock_time_get: exports0['22'],
      environ_get: exports0['19'],
      environ_sizes_get: exports0['20'],
      fd_close: exports0['23'],
      fd_fdstat_get: exports0['24'],
      fd_fdstat_set_flags: exports0['25'],
      fd_prestat_dir_name: exports0['27'],
      fd_prestat_get: exports0['26'],
      fd_read: exports0['28'],
      fd_seek: exports0['29'],
      fd_write: exports0['18'],
      path_open: exports0['30'],
      path_remove_directory: exports0['31'],
      path_unlink_file: exports0['32'],
      proc_exit: exports0['33'],
      random_get: exports0['34'],
    },
  }));
  ({ exports: exports2 } = await instantiateCore(await module1, {
    __main_module__: {
      cabi_realloc: exports1.cabi_realloc_adapter,
    },
    env: {
      memory: exports1.memory,
    },
    'wasi:cli-base/environment': {
      'get-environment': exports0['13'],
    },
    'wasi:cli-base/exit': {
      exit: lowering4,
    },
    'wasi:cli-base/preopens': {
      'get-directories': exports0['0'],
    },
    'wasi:cli-base/stderr': {
      'get-stderr': lowering5,
    },
    'wasi:cli-base/stdin': {
      'get-stdin': lowering6,
    },
    'wasi:cli-base/stdout': {
      'get-stdout': lowering7,
    },
    'wasi:clocks/monotonic-clock': {
      now: lowering1,
      resolution: lowering0,
    },
    'wasi:clocks/wall-clock': {
      now: exports0['1'],
      resolution: exports0['2'],
    },
    'wasi:filesystem/filesystem': {
      'append-via-stream': exports0['5'],
      'drop-descriptor': lowering3,
      'drop-directory-entry-stream': lowering2,
      'get-flags': exports0['6'],
      'get-type': exports0['7'],
      'open-at': exports0['9'],
      'read-via-stream': exports0['3'],
      'remove-directory-at': exports0['10'],
      stat: exports0['8'],
      'unlink-file-at': exports0['11'],
      'write-via-stream': exports0['4'],
    },
    'wasi:io/streams': {
      'blocking-read': exports0['15'],
      'blocking-write': exports0['17'],
      'drop-input-stream': lowering8,
      'drop-output-stream': lowering9,
      read: exports0['14'],
      write: exports0['16'],
    },
    'wasi:random/random': {
      'get-random-bytes': exports0['12'],
    },
  }));
  memory0 = exports1.memory;
  realloc0 = exports2.cabi_import_realloc;
  ({ exports: exports3 } = await instantiateCore(await module3, {
    '': {
      $imports: exports0.$imports,
      '0': lowering10,
      '1': lowering11,
      '10': lowering20,
      '11': lowering21,
      '12': lowering22,
      '13': lowering23,
      '14': lowering24,
      '15': lowering25,
      '16': lowering26,
      '17': lowering27,
      '18': exports2.fd_write,
      '19': exports2.environ_get,
      '2': lowering12,
      '20': exports2.environ_sizes_get,
      '21': exports2.clock_res_get,
      '22': exports2.clock_time_get,
      '23': exports2.fd_close,
      '24': exports2.fd_fdstat_get,
      '25': exports2.fd_fdstat_set_flags,
      '26': exports2.fd_prestat_get,
      '27': exports2.fd_prestat_dir_name,
      '28': exports2.fd_read,
      '29': exports2.fd_seek,
      '3': lowering13,
      '30': exports2.path_open,
      '31': exports2.path_remove_directory,
      '32': exports2.path_unlink_file,
      '33': exports2.proc_exit,
      '34': exports2.random_get,
      '4': lowering14,
      '5': lowering15,
      '6': lowering16,
      '7': lowering17,
      '8': lowering18,
      '9': lowering19,
    },
  }));
  realloc1 = exports1.cabi_realloc;
  postReturn0 = exports1.cabi_post_hello;
})();

await $init;

export { hello }