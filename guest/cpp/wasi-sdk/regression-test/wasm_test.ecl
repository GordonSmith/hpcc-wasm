import wasm;

integer4 gcd(integer4 val1, integer4 val2) := EMBED(wasm)  

  (func ("gcd") (param $val1 i32) (param $val2 i32) (result i32)
    (local i32)
    block ;; label = $val1
      block ;; label = $val2
        local.get 0
        br_if 0 (;$val2;)
        local.get 1
        local.set 2
        br 1 (;$val1;)
      end
      loop ;; label = $val2
        local.get 1
        local.get 0
        local.tee 2
        i32.rem_u
        local.set 0
        local.get 2
        local.set 1
        local.get 0
        br_if 0 (;$val2;)
      end
    end
    local.get 2
  )

ENDEMBED;

// gcd(10, 5);

real4 inlineAdd(real4 val1, real4 val2) := EMBED(wasm)  

  (func ("add") (param f32 f32) (result f32)
    get_local 0
    get_local 1
    f32.add
  )

ENDEMBED;

// inlineAdd(22, 20);

boolean boolTest (boolean a, boolean b) := IMPORT(wasm, 'regress-test.bool-test');
real4 float32Test (real4 a, real4 b) := IMPORT(wasm, 'regress-test.float32-test');
real8 float64Test (real8 a, real8 b) := IMPORT(wasm, 'regress-test.float64-test');
unsigned1 u8Test (unsigned1 a, unsigned1 b) := IMPORT(wasm, 'regress-test.u8-test');
unsigned2 u16Test (unsigned2 a, unsigned2 b) := IMPORT(wasm, 'regress-test.u16-test');
unsigned4 u32Test (unsigned4 a, unsigned4 b) := IMPORT(wasm, 'regress-test.u32-test');
unsigned8 u64Test (unsigned8 a, unsigned8 b) := IMPORT(wasm, 'regress-test.u64-test');
integer1 s8Test (integer1 a, integer1 b) := IMPORT(wasm, 'regress-test.s8-test');
integer2 s16Test (integer2 a, integer2 b) := IMPORT(wasm, 'regress-test.s16-test');
integer4 s32Test (integer4 a, integer4 b) := IMPORT(wasm, 'regress-test.s32-test');
integer8 s64Test (integer8 a, integer8 b) := IMPORT(wasm, 'regress-test.s64-test');
string stringTest (string a, string b) := IMPORT(wasm, 'regress-test.string-test');
string7 string5Test (string5 a, string5 b) := IMPORT(wasm, 'regress-test.string-test');
varstring varstringTest (varstring a, varstring b) := IMPORT(wasm, 'regress-test.string-test');
unicode7 unicode5Test (unicode5 a, unicode5 b) := IMPORT(wasm, 'regress-test.string-test');
unicode unicodeTest (unicode a, unicode b) := IMPORT(wasm, 'regress-test.string-test');
utf8_7 utf8_5Test (utf8_5 a, utf8_5 b) := IMPORT(wasm, 'regress-test.string-test');
utf8 utf8Test (utf8 a, utf8 b) := IMPORT(wasm, 'regress-test.string-test');
set of boolean listBoolTest(set of boolean a) := IMPORT(wasm, 'regress-test.list-bool-test');

'--- list of bool ---';
listBoolTest([true, false, false]) = [false, false, true];

'--- bool ---';
// boolTest(false, false) = (false AND false);
// boolTest(false, true) = (false AND true);
// boolTest(true, false) = (true AND false);
// boolTest(true, true) = (true AND true);
// '--- float ---';
// ROUND(float32Test((real4)1234.1234, (real4)2345.2345), 3) = ROUND((real4)((real4)1234.1234 + (real4)2345.2345), 3);
// float64Test(123456789.123456789, 23456789.23456789) = (real8)((real8)123456789.123456789 + (real8)23456789.23456789);
// '--- unsigned ---';
// u8Test(1, 2) = (unsigned1)(1 + 2);
// u8Test(255, 1) = (unsigned1)(255 + 1);
// u16Test(1, 2) = (unsigned2)(1 + 2);
// u16Test(65535, 1) = (unsigned2)(65535 + 1);
// u32Test(1, 2) = (unsigned4)(1 + 2);
// u32Test(4294967295, 1) = (unsigned4)(4294967295 + 1);
// u64Test(1, 2) = (unsigned8)(1 + 2);
// u64Test(18446744073709551615, 1) = (unsigned8)(18446744073709551615 + 1);
// '--- signed ---';
// s8Test(1, 2) = (integer1)(1 + 2);
// s8Test(127, 1) = (integer1)(127 + 1);
// s8Test(-128, -1) = (integer1)(-128 - 1);

// s16Test(1, 2) = (integer2)(1 + 2);
// s16Test(32767, 1) = (integer2)(32767 + 1);
// s16Test(-32768, -1) = (integer2)(-32768 - 1);

// s32Test(1, 2) = (integer4)(1 + 2);
// s32Test(2147483647, 1) = (integer4)(2147483647 + 1);
// s32Test(-2147483648, -1) = (integer4)(-2147483648 - 1);

// s64Test(1, 2) = (integer8)(1 + 2);
// s64Test(9223372036854775807, 1) = (integer8)(9223372036854775807 + 1);
// s64Test(-9223372036854775808, -1) = (integer8)(-9223372036854775808 - 1);
// '--- string ---';
// varstringTest('1234567890', 'abcdefghij') = '1234567890' + 'abcdefghij';
// stringTest('1234567890', 'abcdefghij') = '1234567890' + 'abcdefghij';
// unicodeTest(U'1234567890您好1231231230', U'abcdefghij欢迎光临abcdefghij') = U'1234567890您好1231231230' + U'abcdefghij欢迎光临abcdefghij';
// utf8Test(U8'您好', U8'欢迎光临') = U8'您好' + U8'欢迎光临';
// '--- string (fixed length) ---';
// string5Test('1234567890', 'abcdefghij') = (string7)((string5)'1234567890' + (string5)'abcdefghij');
// unicode5Test(U'1234567890', U'abcdefghij') = (unicode7)((unicode5)U'1234567890' + (unicode5)U'abcdefghij');
// utf8_5Test(U8'1234567890', U8'abcdefghij') = (utf8_7)((utf8_5)U8'1234567890' + (utf8_5)U8'abcdefghij');
// '--- reentry ---';
// r := RECORD
//   unsigned1 kind;
//   string20 word;
//   unsigned8 doc;
//   unsigned1 segment;
//   unsigned8 wpos;
//  END;
// d := dataset('~regress::multi::searchsource', r, THOR);

// r2 := RECORD(r)
//   boolean passed;
// END;

// r2 t(r L) := TRANSFORM
//   boolean a := u64Test(L.doc, L.wpos) = (unsigned8)(L.doc + L.wpos);
//   boolean b := stringTest(L.word, L.word) = L.word + L.word;
//   SELF.passed := a and B;
//   SELF := L;
// END;

// d2 := project(choosen(d, 100000), t(LEFT));
// count(d2(passed=false)) = 0;
'--- --- ---';
