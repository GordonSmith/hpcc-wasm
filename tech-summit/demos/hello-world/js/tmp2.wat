(module $wit-component:adapter:wasi_snapshot_preview1
  (type (;0;) (func (param i32)))
  (type (;1;) (func (result i64)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32 i64 i32)))
  (type (;4;) (func (param i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32)))
  (type (;8;) (func (param i64 i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (result i32)))
  (type (;11;) (func (param i32 i32 i32) (result i32)))
  (type (;12;) (func (param i32 i32) (result i32)))
  (type (;13;) (func (param i32 i64 i32) (result i32)))
  (type (;14;) (func (param i32 i64 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i64 i64 i32 i32) (result i32)))
  (type (;16;) (func (param i32 i32 i64)))
  (type (;17;) (func (param i32 i64 i64 i64 i64)))
  (type (;18;) (func))
  (import "env" "memory" (memory (;0;) 0))
  (import "wasi:cli-base/preopens" "get-directories" (func $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors3new19get_preopens_import17hd38a0acce58ab2f0E (type 0)))
  (import "wasi:clocks/monotonic-clock" "resolution" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks15monotonic_clock10resolution10wit_import17h3e2ae848b1393407E (type 1)))
  (import "wasi:clocks/wall-clock" "resolution" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks10wall_clock10resolution10wit_import17h98fad5b0fb42f7e8E (type 0)))
  (import "wasi:clocks/monotonic-clock" "now" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks15monotonic_clock3now10wit_import17hf47aad45c0ed8de4E (type 1)))
  (import "wasi:clocks/wall-clock" "now" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks10wall_clock3now10wit_import17he562dcbbee0b2793E (type 0)))
  (import "wasi:filesystem/filesystem" "drop-directory-entry-stream" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem27drop_directory_entry_stream10wit_import17h3bac560c131055eaE (type 0)))
  (import "wasi:filesystem/filesystem" "get-flags" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem9get_flags10wit_import17hf8b144377eee61b5E (type 2)))
  (import "wasi:filesystem/filesystem" "get-type" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem8get_type10wit_import17hfe1b58471bf0a1bfE (type 2)))
  (import "wasi:filesystem/filesystem" "remove-directory-at" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem19remove_directory_at10wit_import17h045924b9bdff01f3E (type 4)))
  (import "wasi:filesystem/filesystem" "unlink-file-at" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem14unlink_file_at10wit_import17hc116167fff8ecd28E (type 4)))
  (import "wasi:random/random" "get-random-bytes" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi6random6random16get_random_bytes10wit_import17hef4e7ad853115956E (type 8)))
  (import "__main_module__" "cabi_realloc" (func $_ZN31wasi_preview1_component_adapter5State3new12cabi_realloc17h1a20d76ab753f16cE (type 9)))
  (import "wasi:cli-base/environment" "get-environment" (func $_ZN31wasi_preview1_component_adapter5State15get_environment22get_environment_import17h39040afbf700119dE (type 0)))
  (import "wasi:filesystem/filesystem" "read-via-stream" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem15read_via_stream10wit_import17hd797db6ca71495d8E (type 3)))
  (import "wasi:filesystem/filesystem" "write-via-stream" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem16write_via_stream10wit_import17h3f4a98212cc8208dE (type 3)))
  (import "wasi:filesystem/filesystem" "append-via-stream" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem17append_via_stream10wit_import17h3d656be5c97fbe3cE (type 2)))
  (import "wasi:filesystem/filesystem" "stat" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem4stat10wit_import17h8d8d30593f4e8a0fE (type 2)))
  (import "wasi:filesystem/filesystem" "open-at" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem7open_at10wit_import17h8e18843ba08ca8a4E (type 5)))
  (import "wasi:filesystem/filesystem" "drop-descriptor" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem15drop_descriptor10wit_import17h66085a38a13ae8f5E (type 0)))
  (import "wasi:io/streams" "write" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write10wit_import17hfdfb8277cf63eb5eE (type 4)))
  (import "wasi:cli-base/exit" "exit" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base4exit4exit10wit_import17h7a115c60a4457d46E (type 0)))
  (import "wasi:cli-base/stderr" "get-stderr" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base6stderr10get_stderr10wit_import17h58f74f5cf4e2ececE (type 10)))
  (import "wasi:cli-base/stdin" "get-stdin" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base5stdin9get_stdin10wit_import17h215f4c88c3851f2fE (type 10)))
  (import "wasi:cli-base/stdout" "get-stdout" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base6stdout10get_stdout10wit_import17h837202c8cdefbe5cE (type 10)))
  (import "wasi:io/streams" "drop-input-stream" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams17drop_input_stream10wit_import17hb666310c4cef5cc7E (type 0)))
  (import "wasi:io/streams" "drop-output-stream" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams18drop_output_stream10wit_import17hda3707c0fd31def2E (type 0)))
  (import "wasi:io/streams" "read" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams4read10wit_import17hfae9f90ad4005ff6E (type 3)))
  (import "wasi:io/streams" "blocking-read" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams13blocking_read10wit_import17h0f55d8699f43b4bbE (type 3)))
  (import "wasi:io/streams" "blocking-write" (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams14blocking_write10wit_import17h3afb316044d6e26eE (type 4)))
  (func $cabi_import_realloc (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_if 0 (;@5;)
              local.get 1
              br_if 0 (;@5;)
              call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
              local.tee 0
              i32.load
              local.tee 1
              i32.const 2147483647
              i32.ge_u
              br_if 1 (;@4;)
              local.get 0
              local.get 1
              i32.const 1
              i32.add
              i32.store
              local.get 0
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 2 (;@3;)
              block  ;; label = @6
                local.get 0
                i32.const 65532
                i32.add
                i32.load
                i32.const 560490357
                i32.ne
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 2
                  local.get 3
                  call $_ZN31wasi_preview1_component_adapter9BumpArena5alloc17ha18aa067141c3426E
                  local.set 2
                  br 6 (;@1;)
                end
                local.get 0
                i32.load offset=12
                local.tee 1
                i32.eqz
                br_if 4 (;@2;)
                block  ;; label = @7
                  local.get 2
                  local.get 1
                  i32.add
                  i32.const -1
                  i32.add
                  i32.const 0
                  local.get 2
                  i32.sub
                  i32.and
                  local.tee 2
                  local.get 3
                  i32.add
                  local.tee 3
                  local.get 2
                  i32.ge_u
                  local.get 3
                  call $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h4562e7c9bd3b22e6E
                  local.get 1
                  local.get 0
                  i32.const 16
                  i32.add
                  i32.load
                  i32.add
                  local.tee 3
                  local.get 1
                  i32.ge_u
                  local.get 3
                  call $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h4562e7c9bd3b22e6E
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 0
                  i32.store offset=12
                  br 6 (;@1;)
                end
                local.get 4
                i32.const 32
                i32.store8 offset=47
                local.get 4
                i32.const 1701734764
                i32.store offset=43 align=1
                local.get 4
                i64.const 2338042707334751329
                i64.store offset=35 align=1
                local.get 4
                i64.const 2338600898263348341
                i64.store offset=27 align=1
                local.get 4
                i64.const 7162263158133189730
                i64.store offset=19 align=1
                local.get 4
                i64.const 7018969289221893749
                i64.store offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 37
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                i32.const 209
                call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                local.get 4
                i32.const 8250
                i32.store16 offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 2
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 4
                i32.const 2681
                i32.store16 offset=23 align=1
                local.get 4
                i32.const 1919905125
                i32.store offset=19 align=1
                local.get 4
                i64.const 7863397576860792175
                i64.store offset=11 align=1
                local.get 4
                i32.const 11
                i32.add
                i32.const 14
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 4
                i32.const 10
                i32.store8 offset=11
                local.get 4
                i32.const 11
                i32.add
                i32.const 1
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                unreachable
                unreachable
              end
              local.get 4
              i32.const 32
              i32.store8 offset=47
              local.get 4
              i32.const 1701734764
              i32.store offset=43 align=1
              local.get 4
              i64.const 2338042707334751329
              i64.store offset=35 align=1
              local.get 4
              i64.const 2338600898263348341
              i64.store offset=27 align=1
              local.get 4
              i64.const 7162263158133189730
              i64.store offset=19 align=1
              local.get 4
              i64.const 7018969289221893749
              i64.store offset=11 align=1
              local.get 4
              i32.const 11
              i32.add
              i32.const 37
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              i32.const 2229
              call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
              local.get 4
              i32.const 8250
              i32.store16 offset=11 align=1
              local.get 4
              i32.const 11
              i32.add
              i32.const 2
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              local.get 4
              i32.const 10
              i32.store8 offset=27
              local.get 4
              i64.const 7234307576302018670
              i64.store offset=19 align=1
              local.get 4
              i64.const 8028075845441778529
              i64.store offset=11 align=1
              local.get 4
              i32.const 11
              i32.add
              i32.const 17
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              local.get 4
              i32.const 10
              i32.store8 offset=11
              local.get 4
              i32.const 11
              i32.add
              i32.const 1
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              unreachable
              unreachable
            end
            local.get 4
            i32.const 32
            i32.store8 offset=47
            local.get 4
            i32.const 1701734764
            i32.store offset=43 align=1
            local.get 4
            i64.const 2338042707334751329
            i64.store offset=35 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=27 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=19 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=11 align=1
            local.get 4
            i32.const 11
            i32.add
            i32.const 37
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            i32.const 96
            call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
            local.get 4
            i32.const 10
            i32.store8 offset=11
            local.get 4
            i32.const 11
            i32.add
            i32.const 1
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=47
          local.get 4
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 4
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2227
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 4
          i32.const 10
          i32.store8 offset=11
          local.get 4
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=47
        local.get 4
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 4
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2228
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 4
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 4
        i32.const 10
        i32.store8 offset=27
        local.get 4
        i64.const 7234307576302018670
        i64.store offset=19 align=1
        local.get 4
        i64.const 8028075845441778529
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 17
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 4
        i32.const 10
        i32.store8 offset=11
        local.get 4
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 4
      i32.const 32
      i32.store8 offset=47
      local.get 4
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 4
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 4
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 4
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 4
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 202
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 4
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 4
      i32.const 10
      i32.store8 offset=47
      local.get 4
      i32.const 1684370293
      i32.store offset=43 align=1
      local.get 4
      i64.const 2340011850872286305
      i64.store offset=35 align=1
      local.get 4
      i64.const 2338053340533122404
      i64.store offset=27 align=1
      local.get 4
      i64.const 7599383958532420719
      i64.store offset=19 align=1
      local.get 4
      i64.const 7935468323262068066
      i64.store offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 4
      i32.const 10
      i32.store8 offset=11
      local.get 4
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    i32.const -1
    i32.add
    i32.store
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E (type 10) (result i32)
    (local i32)
    block  ;; label = @1
      call $get_state_ptr
      local.tee 0
      br_if 0 (;@1;)
      call $_ZN31wasi_preview1_component_adapter5State3new17h55375d560d671284E
      local.tee 0
      call $set_state_ptr
    end
    local.get 0)
  (func $_ZN31wasi_preview1_component_adapter9BumpArena5alloc17ha18aa067141c3426E (type 11) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.add
      local.get 0
      i32.load offset=54904
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 1
      i32.sub
      i32.and
      local.tee 1
      local.get 0
      i32.sub
      local.get 2
      i32.add
      local.tee 2
      i32.const 54904
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.store offset=54904
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 3
    i32.const 32
    i32.store8 offset=47
    local.get 3
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 3
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 3
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 3
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 3
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 3
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 126
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 3
    i32.const 8250
    i32.store16 offset=11 align=1
    local.get 3
    i32.const 11
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 3
    i32.const 2681
    i32.store16 offset=23 align=1
    local.get 3
    i32.const 1919905125
    i32.store offset=19 align=1
    local.get 3
    i64.const 7863397576860792175
    i64.store offset=11 align=1
    local.get 3
    i32.const 11
    i32.add
    i32.const 14
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 3
    i32.const 10
    i32.store8 offset=11
    local.get 3
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter11ImportAlloc10with_arena17h1d318a04d1bd44f1E (type 7) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=8
        local.set 4
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.const 32
        i32.store8 offset=47
        local.get 3
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 188
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 3
        i32.const 8250
        i32.store16 offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 3
        i64.const 748000395109933170
        i64.store offset=27 align=1
        local.get 3
        i64.const 7307218417350680677
        i64.store offset=19 align=1
        local.get 3
        i64.const 8390050488160450159
        i64.store offset=11 align=1
        local.get 3
        i32.const 11
        i32.add
        i32.const 24
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 3
        i32.const 10
        i32.store8 offset=11
        local.get 3
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 3
      i32.const 32
      i32.store8 offset=47
      local.get 3
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 3
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 3
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 3
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 3
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 181
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 3
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 3
      i32.const 174417007
      i32.store offset=19 align=1
      local.get 3
      i64.const 7863410729224140130
      i64.store offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 12
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 3
      i32.const 10
      i32.store8 offset=11
      local.get 3
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors3new19get_preopens_import17hd38a0acce58ab2f0E
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $cabi_export_realloc (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            br_if 0 (;@4;)
            local.get 1
            br_if 0 (;@4;)
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 0
            i32.load
            br_if 1 (;@3;)
            local.get 0
            i32.const -1
            i32.store
            local.get 0
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 2 (;@2;)
            local.get 0
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 3 (;@1;)
            local.get 0
            i32.const 10296
            i32.add
            local.get 2
            local.get 3
            call $_ZN31wasi_preview1_component_adapter9BumpArena5alloc17ha18aa067141c3426E
            local.set 1
            local.get 0
            local.get 0
            i32.load
            i32.const 1
            i32.add
            i32.store
            local.get 4
            i32.const 48
            i32.add
            global.set $__stack_pointer
            local.get 1
            return
          end
          local.get 4
          i32.const 32
          i32.store8 offset=47
          local.get 4
          i32.const 1701734764
          i32.store offset=43 align=1
          local.get 4
          i64.const 2338042707334751329
          i64.store offset=35 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=27 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=19 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=11 align=1
          local.get 4
          i32.const 11
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 232
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 4
          i32.const 10
          i32.store8 offset=11
          local.get 4
          i32.const 11
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=47
        local.get 4
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 4
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 4
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2239
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 4
        i32.const 10
        i32.store8 offset=11
        local.get 4
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 4
      i32.const 32
      i32.store8 offset=47
      local.get 4
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 4
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 4
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 4
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 4
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2240
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 4
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 4
      i32.const 10
      i32.store8 offset=27
      local.get 4
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 4
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 4
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 4
      i32.const 10
      i32.store8 offset=11
      local.get 4
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 4
    i32.const 32
    i32.store8 offset=47
    local.get 4
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 4
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 4
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 4
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 4
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 4
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2241
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 4
    i32.const 8250
    i32.store16 offset=11 align=1
    local.get 4
    i32.const 11
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 4
    i32.const 10
    i32.store8 offset=27
    local.get 4
    i64.const 7234307576302018670
    i64.store offset=19 align=1
    local.get 4
    i64.const 8028075845441778529
    i64.store offset=11 align=1
    local.get 4
    i32.const 11
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 4
    i32.const 10
    i32.store8 offset=11
    local.get 4
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $environ_get (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
          local.tee 3
          i32.load
          local.tee 4
          i32.const 2147483647
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.add
          i32.store
          local.get 3
          i32.load offset=8
          i32.const 560490357
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 65532
          i32.add
          i32.load
          i32.const 560490357
          i32.ne
          br_if 2 (;@1;)
          local.get 2
          local.get 3
          i32.const 8
          i32.add
          call $_ZN31wasi_preview1_component_adapter5State15get_environment17hd161854e0fa9f72bE
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load
            local.tee 4
            local.get 5
            i32.const 4
            i32.shl
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 0
              local.get 1
              i32.store
              local.get 1
              local.get 4
              i32.load
              local.get 4
              i32.const 4
              i32.add
              local.tee 5
              i32.load
              call $memcpy
              local.get 5
              i32.load
              i32.add
              local.tee 1
              i32.const 61
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i32.load
              local.get 4
              i32.const 12
              i32.add
              local.tee 1
              i32.load
              call $memcpy
              local.get 1
              i32.load
              i32.add
              local.tee 1
              i32.const 0
              i32.store8
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              i32.const 4
              i32.add
              local.set 0
              local.get 4
              i32.const 16
              i32.add
              local.tee 4
              local.get 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 3
          i32.load
          i32.const -1
          i32.add
          i32.store
          local.get 2
          i32.const 48
          i32.add
          global.set $__stack_pointer
          i32.const 0
          return
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2227
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 10
        i32.store8 offset=11
        local.get 2
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2228
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=47
    local.get 2
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2229
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=27
    local.get 2
    i64.const 7234307576302018670
    i64.store offset=19 align=1
    local.get 2
    i64.const 8028075845441778529
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=11
    local.get 2
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter5State15get_environment17hd161854e0fa9f72bE (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=65204
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 65208
        i32.add
        i32.load
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i64.const 0
      i64.store offset=16
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          br_if 0 (;@3;)
          local.get 1
          i32.const 12
          i32.add
          local.tee 3
          i32.load
          local.set 4
          local.get 3
          local.get 1
          i32.const 10288
          i32.add
          i32.store
          local.get 4
          br_if 1 (;@2;)
          local.get 2
          i32.const 16
          i32.add
          call $_ZN31wasi_preview1_component_adapter5State15get_environment22get_environment_import17h39040afbf700119dE
          local.get 1
          i32.const 0
          i32.store offset=12
          local.get 1
          i32.const 65208
          i32.add
          local.get 2
          i32.load offset=20
          local.tee 4
          i32.store
          local.get 1
          local.get 2
          i32.load offset=16
          local.tee 3
          i32.store offset=65204
          br 2 (;@1;)
        end
        local.get 2
        i32.const 32
        i32.store8 offset=63
        local.get 2
        i32.const 1701734764
        i32.store offset=59 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=51 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=43 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=35 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 181
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 8250
        i32.store16 offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 2
        i32.const 174417007
        i32.store offset=35 align=1
        local.get 2
        i64.const 7863410729224140130
        i64.store offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 12
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 2
        i32.const 10
        i32.store8 offset=27
        local.get 2
        i32.const 27
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=63
      local.get 2
      i32.const 1701734764
      i32.store offset=59 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=51 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=43 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=35 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=27 align=1
      local.get 2
      i32.const 27
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 188
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=27 align=1
      local.get 2
      i32.const 27
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i64.const 748000395109933170
      i64.store offset=43 align=1
      local.get 2
      i64.const 7307218417350680677
      i64.store offset=35 align=1
      local.get 2
      i64.const 8390050488160450159
      i64.store offset=27 align=1
      local.get 2
      i32.const 27
      i32.add
      i32.const 24
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i32.const 27
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 3
    local.get 4
    call $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h0e9b2adeb7f4e99dE
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $environ_sizes_get (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $get_allocation_state
              i32.const -2
              i32.add
              i32.const -3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 0
              i32.const 0
              i32.store
              local.get 1
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 3
            i32.load
            local.tee 4
            i32.const 2147483647
            i32.ge_u
            br_if 1 (;@3;)
            local.get 3
            local.get 4
            i32.const 1
            i32.add
            i32.store
            local.get 3
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 2 (;@2;)
            local.get 3
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 3 (;@1;)
            local.get 2
            local.get 3
            i32.const 8
            i32.add
            call $_ZN31wasi_preview1_component_adapter5State15get_environment17hd161854e0fa9f72bE
            local.get 2
            i32.load
            local.set 5
            local.get 0
            local.get 2
            i32.load offset=4
            local.tee 4
            i32.store
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 4
                br 1 (;@5;)
              end
              local.get 4
              i32.const 4
              i32.shl
              local.set 6
              local.get 5
              i32.const 12
              i32.add
              local.set 0
              i32.const 0
              local.set 4
              loop  ;; label = @6
                local.get 4
                local.get 0
                i32.const -8
                i32.add
                i32.load
                i32.add
                local.get 0
                i32.load
                i32.add
                i32.const 2
                i32.add
                local.set 4
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 6
                i32.const -16
                i32.add
                local.tee 6
                br_if 0 (;@6;)
              end
            end
            local.get 1
            local.get 4
            i32.store
            local.get 3
            local.get 3
            i32.load
            i32.const -1
            i32.add
            i32.store
          end
          local.get 2
          i32.const 48
          i32.add
          global.set $__stack_pointer
          i32.const 0
          return
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2227
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 10
        i32.store8 offset=11
        local.get 2
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2228
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=47
    local.get 2
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2229
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=27
    local.get 2
    i64.const 7234307576302018670
    i64.store offset=19 align=1
    local.get 2
    i64.const 8028075845441778529
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=11
    local.get 2
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $clock_res_get (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
          local.tee 3
          i32.load
          local.tee 4
          i32.const 2147483647
          i32.ge_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.add
          i32.store
          local.get 3
          i32.load offset=8
          i32.const 560490357
          i32.ne
          br_if 1 (;@2;)
          local.get 3
          i32.const 65532
          i32.add
          i32.load
          i32.const 560490357
          i32.ne
          br_if 2 (;@1;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    br_table 2 (;@6;) 1 (;@7;) 0 (;@8;)
                  end
                  local.get 2
                  i32.const 32
                  i32.store8 offset=60
                  local.get 2
                  i32.const 1701734764
                  i32.store offset=56 align=1
                  local.get 2
                  i64.const 2338042707334751329
                  i64.store offset=48 align=1
                  local.get 2
                  i64.const 2338600898263348341
                  i64.store offset=40 align=1
                  local.get 2
                  i64.const 7162263158133189730
                  i64.store offset=32 align=1
                  local.get 2
                  i64.const 7018969289221893749
                  i64.store offset=24 align=1
                  local.get 2
                  i32.const 24
                  i32.add
                  i32.const 37
                  call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                  i32.const 355
                  call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                  local.get 2
                  i32.const 10
                  i32.store8 offset=24
                  local.get 2
                  i32.const 24
                  i32.add
                  i32.const 1
                  call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                  unreachable
                  unreachable
                end
                call $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks15monotonic_clock10resolution10wit_import17h3e2ae848b1393407E
                local.set 5
                br 1 (;@5;)
              end
              local.get 2
              i32.const 24
              i32.add
              call $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks10wall_clock10resolution10wit_import17h98fad5b0fb42f7e8E
              local.get 2
              i32.const 8
              i32.add
              local.get 2
              i64.load offset=24
              i64.const 0
              i64.const 1000000000
              i64.const 0
              call $__multi3
              i32.const 61
              local.set 4
              local.get 2
              i64.load offset=16
              i64.const 0
              i64.ne
              br_if 1 (;@4;)
              local.get 2
              i64.load offset=8
              local.tee 6
              local.get 2
              i32.const 32
              i32.add
              i64.load32_u
              i64.add
              local.tee 5
              local.get 6
              i64.lt_u
              br_if 1 (;@4;)
            end
            local.get 1
            local.get 5
            i64.store
            i32.const 0
            local.set 4
          end
          local.get 3
          local.get 3
          i32.load
          i32.const -1
          i32.add
          i32.store
          local.get 2
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 4
          return
        end
        local.get 2
        i32.const 32
        i32.store8 offset=60
        local.get 2
        i32.const 1701734764
        i32.store offset=56 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=48 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=40 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=32 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=24 align=1
        local.get 2
        i32.const 24
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2227
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 10
        i32.store8 offset=24
        local.get 2
        i32.const 24
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=60
      local.get 2
      i32.const 1701734764
      i32.store offset=56 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=48 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=40 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=32 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=24 align=1
      local.get 2
      i32.const 24
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2228
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=24 align=1
      local.get 2
      i32.const 24
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=40
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=32 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=24 align=1
      local.get 2
      i32.const 24
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=24
      local.get 2
      i32.const 24
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=60
    local.get 2
    i32.const 1701734764
    i32.store offset=56 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=48 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=40 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=32 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=24 align=1
    local.get 2
    i32.const 24
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2229
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=24 align=1
    local.get 2
    i32.const 24
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=40
    local.get 2
    i64.const 7234307576302018670
    i64.store offset=32 align=1
    local.get 2
    i64.const 8028075845441778529
    i64.store offset=24 align=1
    local.get 2
    i32.const 24
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=24
    local.get 2
    i32.const 24
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $clock_time_get (type 13) (param i32 i64 i32) (result i32)
    (local i32 i32 i32 i64 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $get_allocation_state
              i32.const -2
              i32.add
              i32.const -3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i64.const 0
              i64.store
              i32.const 0
              local.set 0
              br 1 (;@4;)
            end
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 4
            i32.load
            local.tee 5
            i32.const 2147483647
            i32.ge_u
            br_if 1 (;@3;)
            local.get 4
            local.get 5
            i32.const 1
            i32.add
            i32.store
            local.get 4
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 2 (;@2;)
            local.get 4
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 3 (;@1;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      br_table 2 (;@7;) 1 (;@8;) 0 (;@9;)
                    end
                    local.get 3
                    i32.const 32
                    i32.store8 offset=60
                    local.get 3
                    i32.const 1701734764
                    i32.store offset=56 align=1
                    local.get 3
                    i64.const 2338042707334751329
                    i64.store offset=48 align=1
                    local.get 3
                    i64.const 2338600898263348341
                    i64.store offset=40 align=1
                    local.get 3
                    i64.const 7162263158133189730
                    i64.store offset=32 align=1
                    local.get 3
                    i64.const 7018969289221893749
                    i64.store offset=24 align=1
                    local.get 3
                    i32.const 24
                    i32.add
                    i32.const 37
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    i32.const 385
                    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                    local.get 3
                    i32.const 10
                    i32.store8 offset=24
                    local.get 3
                    i32.const 24
                    i32.add
                    i32.const 1
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    unreachable
                    unreachable
                  end
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks15monotonic_clock3now10wit_import17hf47aad45c0ed8de4E
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 3
                i32.const 24
                i32.add
                call $_ZN31wasi_preview1_component_adapter8bindings4wasi6clocks10wall_clock3now10wit_import17he562dcbbee0b2793E
                local.get 3
                i32.const 8
                i32.add
                local.get 3
                i64.load offset=24
                i64.const 0
                i64.const 1000000000
                i64.const 0
                call $__multi3
                i32.const 61
                local.set 0
                local.get 3
                i64.load offset=16
                i64.const 0
                i64.ne
                br_if 1 (;@5;)
                local.get 3
                i64.load offset=8
                local.tee 7
                local.get 3
                i32.const 32
                i32.add
                i64.load32_u
                i64.add
                local.tee 6
                local.get 7
                i64.lt_u
                br_if 1 (;@5;)
              end
              local.get 2
              local.get 6
              i64.store
              i32.const 0
              local.set 0
            end
            local.get 4
            local.get 4
            i32.load
            i32.const -1
            i32.add
            i32.store
          end
          local.get 3
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 0
          return
        end
        local.get 3
        i32.const 32
        i32.store8 offset=60
        local.get 3
        i32.const 1701734764
        i32.store offset=56 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=48 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=40 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=32 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=24 align=1
        local.get 3
        i32.const 24
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2227
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 3
        i32.const 10
        i32.store8 offset=24
        local.get 3
        i32.const 24
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 3
      i32.const 32
      i32.store8 offset=60
      local.get 3
      i32.const 1701734764
      i32.store offset=56 align=1
      local.get 3
      i64.const 2338042707334751329
      i64.store offset=48 align=1
      local.get 3
      i64.const 2338600898263348341
      i64.store offset=40 align=1
      local.get 3
      i64.const 7162263158133189730
      i64.store offset=32 align=1
      local.get 3
      i64.const 7018969289221893749
      i64.store offset=24 align=1
      local.get 3
      i32.const 24
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2228
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 3
      i32.const 8250
      i32.store16 offset=24 align=1
      local.get 3
      i32.const 24
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 3
      i32.const 10
      i32.store8 offset=40
      local.get 3
      i64.const 7234307576302018670
      i64.store offset=32 align=1
      local.get 3
      i64.const 8028075845441778529
      i64.store offset=24 align=1
      local.get 3
      i32.const 24
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 3
      i32.const 10
      i32.store8 offset=24
      local.get 3
      i32.const 24
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 3
    i32.const 32
    i32.store8 offset=60
    local.get 3
    i32.const 1701734764
    i32.store offset=56 align=1
    local.get 3
    i64.const 2338042707334751329
    i64.store offset=48 align=1
    local.get 3
    i64.const 2338600898263348341
    i64.store offset=40 align=1
    local.get 3
    i64.const 7162263158133189730
    i64.store offset=32 align=1
    local.get 3
    i64.const 7018969289221893749
    i64.store offset=24 align=1
    local.get 3
    i32.const 24
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2229
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 3
    i32.const 8250
    i32.store16 offset=24 align=1
    local.get 3
    i32.const 24
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 3
    i32.const 10
    i32.store8 offset=40
    local.get 3
    i64.const 7234307576302018670
    i64.store offset=32 align=1
    local.get 3
    i64.const 8028075845441778529
    i64.store offset=24 align=1
    local.get 3
    i32.const 24
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 3
    i32.const 10
    i32.store8 offset=24
    local.get 3
    i32.const 24
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 6176
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        br_if 0 (;@2;)
        local.get 1
        i32.const -1
        i32.store offset=16
        local.get 1
        i32.const 24
        i32.add
        local.set 3
        block  ;; label = @3
          local.get 1
          i32.const 6172
          i32.add
          i32.load
          i32.const 2
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.const 8
          i32.add
          local.get 1
          i32.const 4
          i32.add
          local.get 1
          i32.const 10288
          i32.add
          call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors3new17h128f28896896514dE
          local.get 3
          local.get 2
          i32.const 8
          i32.add
          i32.const 6168
          call $memcpy
          drop
          local.get 1
          i32.load offset=6172
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.const 16
        i32.add
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 6176
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.const 32
      i32.store8 offset=44
      local.get 2
      i32.const 1701734764
      i32.store offset=40 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=32 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=24 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=16 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2323
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 10
      i32.store8 offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=44
    local.get 2
    i32.const 1701734764
    i32.store offset=40 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=32 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=24 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=16 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2327
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 10
    i32.store8 offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_close (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
          local.tee 2
          i32.load
          br_if 0 (;@3;)
          local.get 2
          i32.const -1
          i32.store
          local.get 2
          i32.load offset=8
          i32.const 560490357
          i32.ne
          br_if 1 (;@2;)
          local.get 2
          i32.const 65532
          i32.add
          i32.load
          i32.const 560490357
          i32.ne
          br_if 2 (;@1;)
          local.get 2
          i32.const 8
          i32.add
          local.set 3
          block  ;; label = @4
            local.get 2
            i32.const 65520
            i32.add
            i32.load
            local.get 0
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            i32.const 65480
            i32.add
            local.tee 4
            i32.load
            local.set 5
            local.get 4
            i32.const 0
            i32.store
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 65484
            i32.add
            i32.load
            call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem27drop_directory_entry_stream10wit_import17h3bac560c131055eaE
          end
          local.get 1
          i32.const 16
          i32.add
          local.get 3
          call $_ZN31wasi_preview1_component_adapter5State15descriptors_mut17hd4b86c6d8a247cd0E
          local.get 1
          i32.load offset=20
          local.set 3
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.load offset=16
          local.get 0
          call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors5close17h79f53aecc6d24ce9E
          local.get 1
          i32.load16_u offset=10
          local.set 0
          local.get 1
          i32.load16_u offset=8
          local.set 4
          local.get 3
          local.get 3
          i32.load
          i32.const 1
          i32.add
          i32.store
          local.get 2
          local.get 2
          i32.load
          i32.const 1
          i32.add
          i32.store
          local.get 1
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 0
          i32.const 0
          local.get 4
          select
          i32.const 65535
          i32.and
          return
        end
        local.get 1
        i32.const 32
        i32.store8 offset=63
        local.get 1
        i32.const 1701734764
        i32.store offset=59 align=1
        local.get 1
        i64.const 2338042707334751329
        i64.store offset=51 align=1
        local.get 1
        i64.const 2338600898263348341
        i64.store offset=43 align=1
        local.get 1
        i64.const 7162263158133189730
        i64.store offset=35 align=1
        local.get 1
        i64.const 7018969289221893749
        i64.store offset=27 align=1
        local.get 1
        i32.const 27
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2239
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 1
        i32.const 10
        i32.store8 offset=27
        local.get 1
        i32.const 27
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 1
      i32.const 32
      i32.store8 offset=63
      local.get 1
      i32.const 1701734764
      i32.store offset=59 align=1
      local.get 1
      i64.const 2338042707334751329
      i64.store offset=51 align=1
      local.get 1
      i64.const 2338600898263348341
      i64.store offset=43 align=1
      local.get 1
      i64.const 7162263158133189730
      i64.store offset=35 align=1
      local.get 1
      i64.const 7018969289221893749
      i64.store offset=27 align=1
      local.get 1
      i32.const 27
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2240
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 1
      i32.const 8250
      i32.store16 offset=27 align=1
      local.get 1
      i32.const 27
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 1
      i32.const 10
      i32.store8 offset=43
      local.get 1
      i64.const 7234307576302018670
      i64.store offset=35 align=1
      local.get 1
      i64.const 8028075845441778529
      i64.store offset=27 align=1
      local.get 1
      i32.const 27
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 1
      i32.const 10
      i32.store8 offset=27
      local.get 1
      i32.const 27
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 1
    i32.const 32
    i32.store8 offset=63
    local.get 1
    i32.const 1701734764
    i32.store offset=59 align=1
    local.get 1
    i64.const 2338042707334751329
    i64.store offset=51 align=1
    local.get 1
    i64.const 2338600898263348341
    i64.store offset=43 align=1
    local.get 1
    i64.const 7162263158133189730
    i64.store offset=35 align=1
    local.get 1
    i64.const 7018969289221893749
    i64.store offset=27 align=1
    local.get 1
    i32.const 27
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2241
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 1
    i32.const 8250
    i32.store16 offset=27 align=1
    local.get 1
    i32.const 27
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 1
    i32.const 10
    i32.store8 offset=43
    local.get 1
    i64.const 7234307576302018670
    i64.store offset=35 align=1
    local.get 1
    i64.const 8028075845441778529
    i64.store offset=27 align=1
    local.get 1
    i32.const 27
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 1
    i32.const 10
    i32.store8 offset=27
    local.get 1
    i32.const 27
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter5State15descriptors_mut17hd4b86c6d8a247cd0E (type 2) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 6176
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=16
        br_if 0 (;@2;)
        local.get 1
        i32.const -1
        i32.store offset=16
        local.get 1
        i32.const 24
        i32.add
        local.set 3
        block  ;; label = @3
          local.get 1
          i32.const 6172
          i32.add
          i32.load
          i32.const 2
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.const 8
          i32.add
          local.get 1
          i32.const 4
          i32.add
          local.get 1
          i32.const 10288
          i32.add
          call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors3new17h128f28896896514dE
          local.get 3
          local.get 2
          i32.const 8
          i32.add
          i32.const 6168
          call $memcpy
          drop
          local.get 1
          i32.load offset=6172
          i32.const 2
          i32.eq
          br_if 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.const 16
        i32.add
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 6176
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 2
      i32.const 32
      i32.store8 offset=44
      local.get 2
      i32.const 1701734764
      i32.store offset=40 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=32 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=24 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=16 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2335
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 10
      i32.store8 offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=44
    local.get 2
    i32.const 1701734764
    i32.store offset=40 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=32 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=24 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=16 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2339
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 10
    i32.store8 offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_fdstat_get (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
        local.tee 3
        i32.load
        local.tee 4
        i32.const 2147483647
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        local.get 4
        i32.const 1
        i32.add
        i32.store
        local.get 3
        i32.load offset=8
        i32.const 560490357
        i32.ne
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 65532
              i32.add
              i32.load
              i32.const 560490357
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 3
              i32.const 8
              i32.add
              call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
              local.get 2
              i32.load
              local.tee 5
              i32.load16_u offset=6144
              local.set 6
              local.get 2
              i32.load offset=4
              local.set 4
              i32.const 8
              local.set 7
              i32.const 0
              local.get 0
              call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h215461d9e3644e2aE
              local.tee 0
              local.get 6
              i32.ge_u
              br_if 2 (;@3;)
              local.get 5
              local.get 0
              i32.const 48
              i32.mul
              i32.add
              local.tee 0
              i32.load
              i32.eqz
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 40
                  i32.add
                  i32.load8_u
                  local.tee 7
                  i32.const 3
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 7
                  i32.const 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=24
                  local.get 2
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem9get_flags10wit_import17hf8b144377eee61b5E
                  local.get 2
                  i32.load8_u offset=9
                  local.set 7
                  local.get 2
                  i32.load8_u offset=8
                  br_if 3 (;@4;)
                  local.get 0
                  i32.load offset=24
                  local.get 2
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem8get_type10wit_import17hfe1b58471bf0a1bfE
                  local.get 2
                  i32.load8_u offset=9
                  local.set 6
                  block  ;; label = @8
                    local.get 2
                    i32.load8_u offset=8
                    br_if 0 (;@8;)
                    i64.const -1
                    i64.const -3
                    local.get 7
                    i32.const 1
                    i32.and
                    select
                    local.tee 8
                    local.get 8
                    i64.const -65
                    i64.and
                    local.get 7
                    i32.const 2
                    i32.and
                    select
                    local.set 8
                    local.get 6
                    call $_ZN31wasi_preview1_component_adapter174_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..DescriptorType$GT$$u20$for$u20$wasi..lib_generated..Filetype$GT$4from17h08ac99f4e986e9baE
                    local.set 6
                    local.get 7
                    i32.const 1
                    i32.shr_u
                    i32.const 8
                    i32.and
                    local.get 7
                    i32.const 2
                    i32.shr_u
                    i32.const 2
                    i32.and
                    i32.or
                    local.get 7
                    i32.const 2
                    i32.shl
                    i32.const 16
                    i32.and
                    i32.or
                    local.get 0
                    i32.load8_u offset=40
                    i32.or
                    i32.const 255
                    i32.and
                    local.tee 7
                    local.get 7
                    i32.const 4
                    i32.or
                    local.get 0
                    i32.const 41
                    i32.add
                    i32.load8_u
                    select
                    local.set 7
                    br 2 (;@6;)
                  end
                  local.get 6
                  call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
                  local.set 7
                  br 4 (;@3;)
                end
                local.get 0
                i64.load32_u offset=8
                i64.const 1
                i64.shl
                local.tee 8
                i64.const 64
                i64.or
                local.get 8
                local.get 0
                i32.const 16
                i32.add
                i32.load
                select
                local.set 8
                i32.const 0
                local.set 7
                i32.const 2
                local.set 6
              end
              local.get 1
              local.get 8
              i64.store offset=16
              local.get 1
              local.get 8
              i64.store offset=8
              local.get 1
              local.get 7
              i32.store16 offset=2
              local.get 1
              local.get 6
              i32.store8
              i32.const 0
              local.set 7
              br 2 (;@3;)
            end
            local.get 2
            i32.const 32
            i32.store8 offset=44
            local.get 2
            i32.const 1701734764
            i32.store offset=40 align=1
            local.get 2
            i64.const 2338042707334751329
            i64.store offset=32 align=1
            local.get 2
            i64.const 2338600898263348341
            i64.store offset=24 align=1
            local.get 2
            i64.const 7162263158133189730
            i64.store offset=16 align=1
            local.get 2
            i64.const 7018969289221893749
            i64.store offset=8 align=1
            local.get 2
            i32.const 8
            i32.add
            i32.const 37
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            i32.const 2229
            call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
            local.get 2
            i32.const 8250
            i32.store16 offset=8 align=1
            local.get 2
            i32.const 8
            i32.add
            i32.const 2
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            local.get 2
            i32.const 10
            i32.store8 offset=24
            local.get 2
            i64.const 7234307576302018670
            i64.store offset=16 align=1
            local.get 2
            i64.const 8028075845441778529
            i64.store offset=8 align=1
            local.get 2
            i32.const 8
            i32.add
            i32.const 17
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            local.get 2
            i32.const 10
            i32.store8 offset=8
            local.get 2
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            unreachable
            unreachable
          end
          local.get 7
          call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
          local.set 7
        end
        local.get 4
        local.get 4
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 3
        i32.load
        i32.const -1
        i32.add
        i32.store
        local.get 2
        i32.const 48
        i32.add
        global.set $__stack_pointer
        local.get 7
        i32.const 65535
        i32.and
        return
      end
      local.get 2
      i32.const 32
      i32.store8 offset=44
      local.get 2
      i32.const 1701734764
      i32.store offset=40 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=32 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=24 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=16 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2227
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 10
      i32.store8 offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=44
    local.get 2
    i32.const 1701734764
    i32.store offset=40 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=32 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=24 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=16 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2228
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=24
    local.get 2
    i64.const 7234307576302018670
    i64.store offset=16 align=1
    local.get 2
    i64.const 8028075845441778529
    i64.store offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_fdstat_set_flags (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 28
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 65530
            i32.and
            br_if 0 (;@4;)
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 4
            i32.load
            br_if 1 (;@3;)
            local.get 4
            i32.const -1
            i32.store
            local.get 4
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 2 (;@2;)
            local.get 4
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 3 (;@1;)
            local.get 2
            local.get 4
            i32.const 8
            i32.add
            call $_ZN31wasi_preview1_component_adapter5State15descriptors_mut17hd4b86c6d8a247cd0E
            local.get 2
            i32.load
            local.tee 5
            i32.load16_u offset=6144
            local.set 6
            local.get 2
            i32.load offset=4
            local.set 7
            i32.const 8
            local.set 3
            block  ;; label = @5
              i32.const 0
              local.get 0
              call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h215461d9e3644e2aE
              local.tee 0
              local.get 6
              i32.ge_u
              br_if 0 (;@5;)
              local.get 5
              local.get 0
              i32.const 48
              i32.mul
              i32.add
              local.tee 0
              i32.load
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 0
                i32.const 40
                i32.add
                i32.load8_u
                i32.const -2
                i32.add
                i32.const 255
                i32.and
                local.tee 6
                i32.const 2
                i32.gt_u
                br_if 0 (;@6;)
                local.get 6
                i32.const 1
                i32.ne
                br_if 1 (;@5;)
              end
              local.get 0
              i32.const 28
              i32.add
              i32.load8_u
              i32.const 3
              i32.eq
              br_if 0 (;@5;)
              local.get 0
              local.get 1
              i32.const 1
              i32.and
              i32.store8 offset=40
              local.get 0
              i32.const 41
              i32.add
              local.get 1
              i32.const 4
              i32.and
              i32.eqz
              i32.store8
              i32.const 0
              local.set 3
            end
            local.get 7
            local.get 7
            i32.load
            i32.const 1
            i32.add
            i32.store
            local.get 4
            local.get 4
            i32.load
            i32.const 1
            i32.add
            i32.store
          end
          local.get 2
          i32.const 48
          i32.add
          global.set $__stack_pointer
          local.get 3
          return
        end
        local.get 2
        i32.const 32
        i32.store8 offset=47
        local.get 2
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 2
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2239
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 10
        i32.store8 offset=11
        local.get 2
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2240
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=19 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=47
    local.get 2
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2241
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=27
    local.get 2
    i64.const 7234307576302018670
    i64.store offset=19 align=1
    local.get 2
    i64.const 8028075845441778529
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=11
    local.get 2
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_prestat_get (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 8
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call $get_allocation_state
            i32.const -2
            i32.add
            i32.const -3
            i32.and
            br_if 0 (;@4;)
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 4
            i32.load
            local.tee 3
            i32.const 2147483647
            i32.ge_u
            br_if 1 (;@3;)
            local.get 4
            local.get 3
            i32.const 1
            i32.add
            i32.store
            local.get 4
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 2 (;@2;)
            local.get 4
            i32.const 65532
            i32.add
            i32.load
            i32.const 560490357
            i32.ne
            br_if 3 (;@1;)
            local.get 2
            i32.const 16
            i32.add
            local.get 4
            i32.const 8
            i32.add
            call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
            local.get 2
            i32.load offset=20
            local.set 5
            local.get 2
            i32.const 8
            i32.add
            local.get 2
            i32.load offset=16
            local.tee 3
            i32.load offset=6156
            local.get 3
            i32.const 6160
            i32.add
            i32.load
            call $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h0e9b2adeb7f4e99dE
            i32.const 8
            local.set 3
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=8
              local.get 0
              i32.const -3
              i32.add
              local.tee 0
              i32.const 12
              i32.mul
              i32.add
              i32.const 0
              local.get 0
              local.get 2
              i32.load offset=12
              i32.lt_u
              select
              local.tee 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              local.get 0
              i32.const 8
              i32.add
              i64.load32_u
              i64.const 32
              i64.shl
              i64.store align=4
              i32.const 0
              local.set 3
            end
            local.get 5
            local.get 5
            i32.load
            i32.const 1
            i32.add
            i32.store
            local.get 4
            local.get 4
            i32.load
            i32.const -1
            i32.add
            i32.store
          end
          local.get 2
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 3
          return
        end
        local.get 2
        i32.const 32
        i32.store8 offset=63
        local.get 2
        i32.const 1701734764
        i32.store offset=59 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=51 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=43 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=35 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=27 align=1
        local.get 2
        i32.const 27
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2227
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 10
        i32.store8 offset=27
        local.get 2
        i32.const 27
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=63
      local.get 2
      i32.const 1701734764
      i32.store offset=59 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=51 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=43 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=35 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=27 align=1
      local.get 2
      i32.const 27
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2228
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=27 align=1
      local.get 2
      i32.const 27
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=43
      local.get 2
      i64.const 7234307576302018670
      i64.store offset=35 align=1
      local.get 2
      i64.const 8028075845441778529
      i64.store offset=27 align=1
      local.get 2
      i32.const 27
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=27
      local.get 2
      i32.const 27
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=63
    local.get 2
    i32.const 1701734764
    i32.store offset=59 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=51 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=43 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=35 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=27 align=1
    local.get 2
    i32.const 27
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2229
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=27 align=1
    local.get 2
    i32.const 27
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=43
    local.get 2
    i64.const 7234307576302018670
    i64.store offset=35 align=1
    local.get 2
    i64.const 8028075845441778529
    i64.store offset=27 align=1
    local.get 2
    i32.const 27
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=27
    local.get 2
    i32.const 27
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_prestat_dir_name (type 11) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
          local.tee 4
          i32.load
          local.tee 5
          i32.const 2147483647
          i32.ge_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.const 1
          i32.add
          i32.store
          local.get 4
          i32.load offset=8
          i32.const 560490357
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.const 65532
          i32.add
          i32.load
          i32.const 560490357
          i32.ne
          br_if 2 (;@1;)
          local.get 3
          i32.const 16
          i32.add
          local.get 4
          i32.const 8
          i32.add
          call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
          local.get 3
          i32.load offset=20
          local.set 5
          local.get 3
          i32.const 8
          i32.add
          local.get 3
          i32.load offset=16
          local.tee 6
          i32.load offset=6156
          local.get 6
          i32.const 6160
          i32.add
          i32.load
          call $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h0e9b2adeb7f4e99dE
          i32.const 54
          local.set 6
          block  ;; label = @4
            local.get 0
            i32.const 3
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.load offset=8
            local.get 0
            i32.const -3
            i32.add
            local.tee 0
            i32.const 12
            i32.mul
            i32.add
            i32.const 0
            local.get 0
            local.get 3
            i32.load offset=12
            i32.lt_u
            select
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            i32.const 37
            local.set 6
            local.get 0
            i32.const 8
            i32.add
            i32.load
            local.tee 7
            local.get 2
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            local.get 0
            i32.load offset=4
            local.get 7
            call $memcpy
            drop
            i32.const 0
            local.set 6
          end
          local.get 5
          local.get 5
          i32.load
          i32.const 1
          i32.add
          i32.store
          local.get 4
          local.get 4
          i32.load
          i32.const -1
          i32.add
          i32.store
          local.get 3
          i32.const 64
          i32.add
          global.set $__stack_pointer
          local.get 6
          return
        end
        local.get 3
        i32.const 32
        i32.store8 offset=63
        local.get 3
        i32.const 1701734764
        i32.store offset=59 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=51 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=43 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=35 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=27 align=1
        local.get 3
        i32.const 27
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2227
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 3
        i32.const 10
        i32.store8 offset=27
        local.get 3
        i32.const 27
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 3
      i32.const 32
      i32.store8 offset=63
      local.get 3
      i32.const 1701734764
      i32.store offset=59 align=1
      local.get 3
      i64.const 2338042707334751329
      i64.store offset=51 align=1
      local.get 3
      i64.const 2338600898263348341
      i64.store offset=43 align=1
      local.get 3
      i64.const 7162263158133189730
      i64.store offset=35 align=1
      local.get 3
      i64.const 7018969289221893749
      i64.store offset=27 align=1
      local.get 3
      i32.const 27
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 2228
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 3
      i32.const 8250
      i32.store16 offset=27 align=1
      local.get 3
      i32.const 27
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 3
      i32.const 10
      i32.store8 offset=43
      local.get 3
      i64.const 7234307576302018670
      i64.store offset=35 align=1
      local.get 3
      i64.const 8028075845441778529
      i64.store offset=27 align=1
      local.get 3
      i32.const 27
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 3
      i32.const 10
      i32.store8 offset=27
      local.get 3
      i32.const 27
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 3
    i32.const 32
    i32.store8 offset=63
    local.get 3
    i32.const 1701734764
    i32.store offset=59 align=1
    local.get 3
    i64.const 2338042707334751329
    i64.store offset=51 align=1
    local.get 3
    i64.const 2338600898263348341
    i64.store offset=43 align=1
    local.get 3
    i64.const 7162263158133189730
    i64.store offset=35 align=1
    local.get 3
    i64.const 7018969289221893749
    i64.store offset=27 align=1
    local.get 3
    i32.const 27
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2229
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 3
    i32.const 8250
    i32.store16 offset=27 align=1
    local.get 3
    i32.const 27
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 3
    i32.const 10
    i32.store8 offset=43
    local.get 3
    i64.const 7234307576302018670
    i64.store offset=35 align=1
    local.get 3
    i64.const 8028075845441778529
    i64.store offset=27 align=1
    local.get 3
    i32.const 27
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 3
    i32.const 10
    i32.store8 offset=27
    local.get 3
    i32.const 27
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_read (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.eqz
                    br_if 0 (;@8;)
                    loop  ;; label = @9
                      local.get 1
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 5
                      br_if 2 (;@7;)
                      local.get 1
                      i32.const 8
                      i32.add
                      local.set 1
                      local.get 2
                      i32.const -1
                      i32.add
                      local.tee 2
                      br_if 0 (;@9;)
                    end
                  end
                  i32.const 0
                  local.set 2
                  local.get 3
                  i32.const 0
                  i32.store
                  br 1 (;@6;)
                end
                local.get 1
                i32.load
                local.set 6
                call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
                local.tee 1
                i32.load
                local.tee 2
                i32.const 2147483647
                i32.ge_u
                br_if 1 (;@5;)
                local.get 1
                local.get 2
                i32.const 1
                i32.add
                i32.store
                local.get 1
                i32.load offset=8
                i32.const 560490357
                i32.ne
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 65532
                      i32.add
                      i32.load
                      i32.const 560490357
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 1
                      i32.const 8
                      i32.add
                      call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
                      local.get 4
                      i32.load
                      local.tee 7
                      i32.load16_u offset=6144
                      local.set 8
                      local.get 4
                      i32.load offset=4
                      local.set 9
                      i32.const 8
                      local.set 2
                      i32.const 0
                      local.get 0
                      call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h215461d9e3644e2aE
                      local.tee 0
                      local.get 8
                      i32.ge_u
                      br_if 2 (;@7;)
                      local.get 7
                      local.get 0
                      i32.const 48
                      i32.mul
                      i32.add
                      local.tee 0
                      i32.load
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 0
                      i32.const 8
                      i32.add
                      local.set 2
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.const 40
                          i32.add
                          i32.load8_u
                          i32.const -2
                          i32.add
                          i32.const 255
                          i32.and
                          local.tee 8
                          i32.const 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          i32.const 0
                          local.set 7
                          local.get 8
                          i32.const 1
                          i32.ne
                          br_if 1 (;@10;)
                        end
                        local.get 0
                        i32.const 41
                        i32.add
                        i32.load8_u
                        local.set 7
                      end
                      local.get 4
                      i32.const 24
                      i32.add
                      local.get 2
                      call $_ZN31wasi_preview1_component_adapter11descriptors7Streams15get_read_stream17hc3da37af880155a1E
                      local.get 4
                      i32.load16_u offset=24
                      br_if 1 (;@8;)
                      local.get 1
                      i32.const 20
                      i32.add
                      i32.load
                      br_if 6 (;@3;)
                      local.get 4
                      i32.load offset=28
                      local.set 8
                      local.get 1
                      i32.load offset=12
                      local.set 2
                      local.get 1
                      local.get 6
                      i32.store offset=12
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            local.get 2
                            br_if 0 (;@12;)
                            local.get 5
                            i64.extend_i32_u
                            local.set 10
                            local.get 1
                            i32.const 16
                            i32.add
                            local.get 5
                            i32.store
                            local.get 7
                            i32.const 255
                            i32.and
                            br_if 1 (;@11;)
                            local.get 4
                            i32.const 8
                            i32.add
                            local.get 8
                            local.get 10
                            call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams4read17hba3f1cc2bd4c4036E
                            br 2 (;@10;)
                          end
                          local.get 4
                          i32.const 32
                          i32.store8 offset=60
                          local.get 4
                          i32.const 1701734764
                          i32.store offset=56 align=1
                          local.get 4
                          i64.const 2338042707334751329
                          i64.store offset=48 align=1
                          local.get 4
                          i64.const 2338600898263348341
                          i64.store offset=40 align=1
                          local.get 4
                          i64.const 7162263158133189730
                          i64.store offset=32 align=1
                          local.get 4
                          i64.const 7018969289221893749
                          i64.store offset=24 align=1
                          local.get 4
                          i32.const 24
                          i32.add
                          i32.const 37
                          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                          i32.const 168
                          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                          local.get 4
                          i32.const 8250
                          i32.store16 offset=24 align=1
                          local.get 4
                          i32.const 24
                          i32.add
                          i32.const 2
                          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                          local.get 4
                          i32.const 10
                          i32.store8 offset=48
                          local.get 4
                          i64.const 8243107283213623410
                          i64.store offset=40 align=1
                          local.get 4
                          i64.const 7307218417350680677
                          i64.store offset=32 align=1
                          local.get 4
                          i64.const 8390050488160450159
                          i64.store offset=24 align=1
                          local.get 4
                          i32.const 24
                          i32.add
                          i32.const 25
                          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                          local.get 4
                          i32.const 10
                          i32.store8 offset=24
                          local.get 4
                          i32.const 24
                          i32.add
                          i32.const 1
                          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                          unreachable
                          unreachable
                        end
                        local.get 4
                        i32.const 8
                        i32.add
                        local.get 8
                        local.get 10
                        call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams13blocking_read17h1c2096585e521ab2E
                      end
                      local.get 1
                      i32.const 0
                      i32.store offset=12
                      block  ;; label = @10
                        local.get 4
                        i32.load8_u offset=20
                        local.tee 2
                        i32.const 2
                        i32.ne
                        br_if 0 (;@10;)
                        i32.const 29
                        local.set 2
                        br 3 (;@7;)
                      end
                      local.get 4
                      i32.load offset=12
                      local.get 6
                      i32.ne
                      br_if 7 (;@2;)
                      local.get 4
                      i32.load offset=16
                      local.tee 8
                      local.get 5
                      i32.gt_u
                      br_if 8 (;@1;)
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.load8_u offset=40
                          i32.const -2
                          i32.add
                          i32.const 255
                          i32.and
                          local.tee 5
                          i32.const 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 1
                          i32.ne
                          br_if 1 (;@10;)
                        end
                        local.get 0
                        i32.const 32
                        i32.add
                        local.tee 5
                        local.get 5
                        i64.load
                        local.get 8
                        i64.extend_i32_u
                        i64.add
                        i64.store
                      end
                      block  ;; label = @10
                        local.get 2
                        br_if 0 (;@10;)
                        i32.const 27
                        local.set 2
                        local.get 8
                        i32.eqz
                        br_if 3 (;@7;)
                      end
                      local.get 3
                      local.get 8
                      i32.store
                      i32.const 0
                      local.set 2
                      br 2 (;@7;)
                    end
                    local.get 4
                    i32.const 32
                    i32.store8 offset=60
                    local.get 4
                    i32.const 1701734764
                    i32.store offset=56 align=1
                    local.get 4
                    i64.const 2338042707334751329
                    i64.store offset=48 align=1
                    local.get 4
                    i64.const 2338600898263348341
                    i64.store offset=40 align=1
                    local.get 4
                    i64.const 7162263158133189730
                    i64.store offset=32 align=1
                    local.get 4
                    i64.const 7018969289221893749
                    i64.store offset=24 align=1
                    local.get 4
                    i32.const 24
                    i32.add
                    i32.const 37
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    i32.const 2229
                    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                    local.get 4
                    i32.const 8250
                    i32.store16 offset=24 align=1
                    local.get 4
                    i32.const 24
                    i32.add
                    i32.const 2
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    local.get 4
                    i32.const 10
                    i32.store8 offset=40
                    local.get 4
                    i64.const 7234307576302018670
                    i64.store offset=32 align=1
                    local.get 4
                    i64.const 8028075845441778529
                    i64.store offset=24 align=1
                    local.get 4
                    i32.const 24
                    i32.add
                    i32.const 17
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    local.get 4
                    i32.const 10
                    i32.store8 offset=24
                    local.get 4
                    i32.const 24
                    i32.add
                    i32.const 1
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    unreachable
                    unreachable
                  end
                  local.get 4
                  i32.load16_u offset=26
                  local.set 2
                end
                local.get 9
                local.get 9
                i32.load
                i32.const 1
                i32.add
                i32.store
                local.get 1
                local.get 1
                i32.load
                i32.const -1
                i32.add
                i32.store
              end
              local.get 4
              i32.const 64
              i32.add
              global.set $__stack_pointer
              local.get 2
              i32.const 65535
              i32.and
              return
            end
            local.get 4
            i32.const 32
            i32.store8 offset=60
            local.get 4
            i32.const 1701734764
            i32.store offset=56 align=1
            local.get 4
            i64.const 2338042707334751329
            i64.store offset=48 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=40 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=32 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=24 align=1
            local.get 4
            i32.const 24
            i32.add
            i32.const 37
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            i32.const 2227
            call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
            local.get 4
            i32.const 10
            i32.store8 offset=24
            local.get 4
            i32.const 24
            i32.add
            i32.const 1
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=60
          local.get 4
          i32.const 1701734764
          i32.store offset=56 align=1
          local.get 4
          i64.const 2338042707334751329
          i64.store offset=48 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=40 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=32 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=24 align=1
          local.get 4
          i32.const 24
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2228
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 4
          i32.const 8250
          i32.store16 offset=24 align=1
          local.get 4
          i32.const 24
          i32.add
          i32.const 2
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 4
          i32.const 10
          i32.store8 offset=40
          local.get 4
          i64.const 7234307576302018670
          i64.store offset=32 align=1
          local.get 4
          i64.const 8028075845441778529
          i64.store offset=24 align=1
          local.get 4
          i32.const 24
          i32.add
          i32.const 17
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 4
          i32.const 10
          i32.store8 offset=24
          local.get 4
          i32.const 24
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 4
        i32.const 32
        i32.store8 offset=60
        local.get 4
        i32.const 1701734764
        i32.store offset=56 align=1
        local.get 4
        i64.const 2338042707334751329
        i64.store offset=48 align=1
        local.get 4
        i64.const 2338600898263348341
        i64.store offset=40 align=1
        local.get 4
        i64.const 7162263158133189730
        i64.store offset=32 align=1
        local.get 4
        i64.const 7018969289221893749
        i64.store offset=24 align=1
        local.get 4
        i32.const 24
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 164
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 4
        i32.const 8250
        i32.store16 offset=24 align=1
        local.get 4
        i32.const 24
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 4
        i32.const 10
        i32.store8 offset=34
        local.get 4
        i32.const 25956
        i32.store16 offset=32 align=1
        local.get 4
        i64.const 8029109313507521121
        i64.store offset=24 align=1
        local.get 4
        i32.const 24
        i32.add
        i32.const 11
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 4
        i32.const 10
        i32.store8 offset=24
        local.get 4
        i32.const 24
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 4
      i32.const 32
      i32.store8 offset=60
      local.get 4
      i32.const 1701734764
      i32.store offset=56 align=1
      local.get 4
      i64.const 2338042707334751329
      i64.store offset=48 align=1
      local.get 4
      i64.const 2338600898263348341
      i64.store offset=40 align=1
      local.get 4
      i64.const 7162263158133189730
      i64.store offset=32 align=1
      local.get 4
      i64.const 7018969289221893749
      i64.store offset=24 align=1
      local.get 4
      i32.const 24
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 843
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 4
      i32.const 8250
      i32.store16 offset=24 align=1
      local.get 4
      i32.const 24
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 4
      i32.const 10
      i32.store8 offset=40
      local.get 4
      i64.const 7234307576302018670
      i64.store offset=32 align=1
      local.get 4
      i64.const 8028075845441778529
      i64.store offset=24 align=1
      local.get 4
      i32.const 24
      i32.add
      i32.const 17
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 4
      i32.const 10
      i32.store8 offset=24
      local.get 4
      i32.const 24
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 4
    i32.const 32
    i32.store8 offset=60
    local.get 4
    i32.const 1701734764
    i32.store offset=56 align=1
    local.get 4
    i64.const 2338042707334751329
    i64.store offset=48 align=1
    local.get 4
    i64.const 2338600898263348341
    i64.store offset=40 align=1
    local.get 4
    i64.const 7162263158133189730
    i64.store offset=32 align=1
    local.get 4
    i64.const 7018969289221893749
    i64.store offset=24 align=1
    local.get 4
    i32.const 24
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 844
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 4
    i32.const 8250
    i32.store16 offset=24 align=1
    local.get 4
    i32.const 24
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 4
    i32.const 10
    i32.store8 offset=40
    local.get 4
    i64.const 7234307576302018670
    i64.store offset=32 align=1
    local.get 4
    i64.const 8028075845441778529
    i64.store offset=24 align=1
    local.get 4
    i32.const 24
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 4
    i32.const 10
    i32.store8 offset=24
    local.get 4
    i32.const 24
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $fd_seek (type 14) (param i32 i64 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
              local.tee 5
              i32.load
              local.tee 6
              i32.const 2147483647
              i32.ge_u
              br_if 0 (;@5;)
              local.get 5
              local.get 6
              i32.const 1
              i32.add
              i32.store
              local.get 5
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 1 (;@4;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.const 65532
                  i32.add
                  i32.load
                  i32.const 560490357
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  local.get 5
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
                  local.get 4
                  i32.load
                  local.tee 7
                  i32.load16_u offset=6144
                  local.set 8
                  local.get 4
                  i32.load offset=4
                  local.set 6
                  i32.const 8
                  local.set 9
                  i32.const 0
                  local.get 0
                  call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h215461d9e3644e2aE
                  local.tee 0
                  local.get 8
                  i32.ge_u
                  br_if 6 (;@1;)
                  local.get 7
                  local.get 0
                  i32.const 48
                  i32.mul
                  i32.add
                  local.tee 0
                  i32.load
                  i32.eqz
                  br_if 6 (;@1;)
                  block  ;; label = @8
                    local.get 0
                    i32.const 40
                    i32.add
                    i32.load8_u
                    i32.const -2
                    i32.add
                    i32.const 255
                    i32.and
                    local.tee 8
                    i32.const 2
                    i32.gt_u
                    br_if 0 (;@8;)
                    i32.const 70
                    local.set 9
                    local.get 8
                    i32.const 1
                    i32.ne
                    br_if 7 (;@1;)
                  end
                  i32.const 8
                  local.set 9
                  local.get 0
                  i32.load8_u offset=28
                  i32.const 3
                  i32.eq
                  br_if 6 (;@1;)
                  i32.const 28
                  local.set 9
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      br_table 3 (;@6;) 0 (;@9;) 1 (;@8;) 8 (;@1;)
                    end
                    local.get 1
                    i64.const 0
                    i64.lt_s
                    local.get 0
                    i64.load offset=32
                    local.tee 10
                    local.get 1
                    i64.add
                    local.tee 1
                    local.get 10
                    i64.lt_s
                    i32.xor
                    br_if 7 (;@1;)
                    local.get 1
                    i64.const 0
                    i64.ge_s
                    br_if 6 (;@2;)
                    br 7 (;@1;)
                  end
                  local.get 4
                  i32.const 8
                  i32.add
                  local.get 0
                  i32.load offset=24
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem4stat17h7691d0cb94fe1d8cE
                  local.get 4
                  i32.load8_u offset=24
                  i32.const 8
                  i32.eq
                  br_if 4 (;@3;)
                  local.get 1
                  i64.const 0
                  i64.lt_s
                  local.get 4
                  i64.load offset=40
                  local.tee 10
                  local.get 1
                  i64.add
                  local.tee 1
                  local.get 10
                  i64.lt_s
                  i32.xor
                  br_if 6 (;@1;)
                  local.get 1
                  i64.const 0
                  i64.lt_s
                  br_if 6 (;@1;)
                  br 5 (;@2;)
                end
                local.get 4
                i32.const 32
                i32.store8 offset=44
                local.get 4
                i32.const 1701734764
                i32.store offset=40 align=1
                local.get 4
                i64.const 2338042707334751329
                i64.store offset=32 align=1
                local.get 4
                i64.const 2338600898263348341
                i64.store offset=24 align=1
                local.get 4
                i64.const 7162263158133189730
                i64.store offset=16 align=1
                local.get 4
                i64.const 7018969289221893749
                i64.store offset=8 align=1
                local.get 4
                i32.const 8
                i32.add
                i32.const 37
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                i32.const 2229
                call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                local.get 4
                i32.const 8250
                i32.store16 offset=8 align=1
                local.get 4
                i32.const 8
                i32.add
                i32.const 2
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 4
                i32.const 10
                i32.store8 offset=24
                local.get 4
                i64.const 7234307576302018670
                i64.store offset=16 align=1
                local.get 4
                i64.const 8028075845441778529
                i64.store offset=8 align=1
                local.get 4
                i32.const 8
                i32.add
                i32.const 17
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 4
                i32.const 10
                i32.store8 offset=8
                local.get 4
                i32.const 8
                i32.add
                i32.const 1
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                unreachable
                unreachable
              end
              local.get 1
              i64.const -1
              i64.gt_s
              br_if 3 (;@2;)
              br 4 (;@1;)
            end
            local.get 4
            i32.const 32
            i32.store8 offset=44
            local.get 4
            i32.const 1701734764
            i32.store offset=40 align=1
            local.get 4
            i64.const 2338042707334751329
            i64.store offset=32 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=24 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=16 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=8 align=1
            local.get 4
            i32.const 8
            i32.add
            i32.const 37
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            i32.const 2227
            call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
            local.get 4
            i32.const 10
            i32.store8 offset=8
            local.get 4
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            unreachable
            unreachable
          end
          local.get 4
          i32.const 32
          i32.store8 offset=44
          local.get 4
          i32.const 1701734764
          i32.store offset=40 align=1
          local.get 4
          i64.const 2338042707334751329
          i64.store offset=32 align=1
          local.get 4
          i64.const 2338600898263348341
          i64.store offset=24 align=1
          local.get 4
          i64.const 7162263158133189730
          i64.store offset=16 align=1
          local.get 4
          i64.const 7018969289221893749
          i64.store offset=8 align=1
          local.get 4
          i32.const 8
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2228
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 4
          i32.const 8250
          i32.store16 offset=8 align=1
          local.get 4
          i32.const 8
          i32.add
          i32.const 2
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 4
          i32.const 10
          i32.store8 offset=24
          local.get 4
          i64.const 7234307576302018670
          i64.store offset=16 align=1
          local.get 4
          i64.const 8028075845441778529
          i64.store offset=8 align=1
          local.get 4
          i32.const 8
          i32.add
          i32.const 17
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 4
          i32.const 10
          i32.store8 offset=8
          local.get 4
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 4
        i32.load8_u offset=8
        call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
        local.set 9
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i64.store offset=32
      i32.const 0
      local.set 9
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 3
      local.get 1
      i64.store
    end
    local.get 6
    local.get 6
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 5
    local.get 5
    i32.load
    i32.const -1
    i32.add
    i32.store
    local.get 4
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 9
    i32.const 65535
    i32.and)
  (func $fd_write (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i64 i64)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  call $get_allocation_state
                  i32.const -2
                  i32.add
                  i32.const -3
                  i32.and
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 1
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 5
                        br_if 2 (;@8;)
                        local.get 1
                        i32.const 8
                        i32.add
                        local.set 1
                        local.get 2
                        i32.const -1
                        i32.add
                        local.tee 2
                        br_if 0 (;@10;)
                      end
                    end
                    i32.const 0
                    local.set 1
                    local.get 3
                    i32.const 0
                    i32.store
                    br 7 (;@1;)
                  end
                  local.get 1
                  i32.load
                  local.set 6
                  call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
                  local.tee 2
                  i32.load
                  local.tee 1
                  i32.const 2147483647
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 2
                  local.get 1
                  i32.const 1
                  i32.add
                  i32.store
                  local.get 2
                  i32.load offset=8
                  i32.const 560490357
                  i32.ne
                  br_if 2 (;@5;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      i32.const 65532
                      i32.add
                      i32.load
                      i32.const 560490357
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 4
                      i32.const 48
                      i32.add
                      local.get 2
                      i32.const 8
                      i32.add
                      call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
                      local.get 4
                      i32.load offset=48
                      local.tee 7
                      i32.load16_u offset=6144
                      local.set 8
                      local.get 4
                      i32.load offset=52
                      local.set 9
                      i32.const 8
                      local.set 1
                      i32.const 0
                      local.get 0
                      call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h215461d9e3644e2aE
                      local.tee 0
                      local.get 8
                      i32.ge_u
                      br_if 7 (;@2;)
                      local.get 7
                      local.get 0
                      i32.const 48
                      i32.mul
                      i32.add
                      local.tee 0
                      i32.load
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 4
                      i32.const 56
                      i32.add
                      local.get 0
                      i32.const 8
                      i32.add
                      call $_ZN31wasi_preview1_component_adapter11descriptors7Streams16get_write_stream17h26e0e9538b430e7aE
                      local.get 4
                      i32.load16_u offset=56
                      br_if 1 (;@8;)
                      local.get 4
                      i32.load offset=60
                      local.set 1
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 0
                          i32.const 40
                          i32.add
                          i32.load8_u
                          i32.const -2
                          i32.add
                          i32.const 255
                          i32.and
                          local.tee 8
                          i32.const 2
                          i32.gt_u
                          br_if 0 (;@11;)
                          local.get 8
                          i32.const 1
                          i32.ne
                          br_if 1 (;@10;)
                        end
                        local.get 0
                        i32.const 41
                        i32.add
                        i32.load8_u
                        br_if 6 (;@4;)
                        local.get 4
                        local.get 1
                        local.get 6
                        local.get 5
                        call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write17h87a1139490a2c94dE
                        local.get 4
                        i64.load offset=8
                        local.set 10
                        local.get 4
                        i64.load
                        local.set 11
                        br 7 (;@3;)
                      end
                      local.get 4
                      i32.const 32
                      i32.add
                      local.get 1
                      local.get 6
                      local.get 5
                      call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write17h87a1139490a2c94dE
                      local.get 4
                      i64.load offset=40
                      local.set 10
                      local.get 4
                      i64.load offset=32
                      local.set 11
                      br 6 (;@3;)
                    end
                    local.get 4
                    i32.const 32
                    i32.store8 offset=92
                    local.get 4
                    i32.const 1701734764
                    i32.store offset=88 align=1
                    local.get 4
                    i64.const 2338042707334751329
                    i64.store offset=80 align=1
                    local.get 4
                    i64.const 2338600898263348341
                    i64.store offset=72 align=1
                    local.get 4
                    i64.const 7162263158133189730
                    i64.store offset=64 align=1
                    local.get 4
                    i64.const 7018969289221893749
                    i64.store offset=56 align=1
                    local.get 4
                    i32.const 56
                    i32.add
                    i32.const 37
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    i32.const 2229
                    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                    local.get 4
                    i32.const 8250
                    i32.store16 offset=56 align=1
                    local.get 4
                    i32.const 56
                    i32.add
                    i32.const 2
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    local.get 4
                    i32.const 10
                    i32.store8 offset=72
                    local.get 4
                    i64.const 7234307576302018670
                    i64.store offset=64 align=1
                    local.get 4
                    i64.const 8028075845441778529
                    i64.store offset=56 align=1
                    local.get 4
                    i32.const 56
                    i32.add
                    i32.const 17
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    local.get 4
                    i32.const 10
                    i32.store8 offset=56
                    local.get 4
                    i32.const 56
                    i32.add
                    i32.const 1
                    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                    unreachable
                    unreachable
                  end
                  local.get 4
                  i32.load16_u offset=58
                  local.set 1
                  br 5 (;@2;)
                end
                local.get 3
                i32.const 0
                i32.store
                i32.const 29
                local.set 1
                br 5 (;@1;)
              end
              local.get 4
              i32.const 32
              i32.store8 offset=92
              local.get 4
              i32.const 1701734764
              i32.store offset=88 align=1
              local.get 4
              i64.const 2338042707334751329
              i64.store offset=80 align=1
              local.get 4
              i64.const 2338600898263348341
              i64.store offset=72 align=1
              local.get 4
              i64.const 7162263158133189730
              i64.store offset=64 align=1
              local.get 4
              i64.const 7018969289221893749
              i64.store offset=56 align=1
              local.get 4
              i32.const 56
              i32.add
              i32.const 37
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              i32.const 2227
              call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
              local.get 4
              i32.const 10
              i32.store8 offset=56
              local.get 4
              i32.const 56
              i32.add
              i32.const 1
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              unreachable
              unreachable
            end
            local.get 4
            i32.const 32
            i32.store8 offset=92
            local.get 4
            i32.const 1701734764
            i32.store offset=88 align=1
            local.get 4
            i64.const 2338042707334751329
            i64.store offset=80 align=1
            local.get 4
            i64.const 2338600898263348341
            i64.store offset=72 align=1
            local.get 4
            i64.const 7162263158133189730
            i64.store offset=64 align=1
            local.get 4
            i64.const 7018969289221893749
            i64.store offset=56 align=1
            local.get 4
            i32.const 56
            i32.add
            i32.const 37
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            i32.const 2228
            call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
            local.get 4
            i32.const 8250
            i32.store16 offset=56 align=1
            local.get 4
            i32.const 56
            i32.add
            i32.const 2
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            local.get 4
            i32.const 10
            i32.store8 offset=72
            local.get 4
            i64.const 7234307576302018670
            i64.store offset=64 align=1
            local.get 4
            i64.const 8028075845441778529
            i64.store offset=56 align=1
            local.get 4
            i32.const 56
            i32.add
            i32.const 17
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            local.get 4
            i32.const 10
            i32.store8 offset=56
            local.get 4
            i32.const 56
            i32.add
            i32.const 1
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            unreachable
            unreachable
          end
          local.get 4
          i32.const 16
          i32.add
          local.get 1
          local.get 6
          local.get 5
          call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams14blocking_write17h574ffd969b6488c8E
          local.get 4
          i64.load offset=24
          local.set 10
          local.get 4
          i64.load offset=16
          local.set 11
        end
        i32.const 29
        local.set 1
        local.get 11
        i32.wrap_i64
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=40
          local.tee 1
          br_if 0 (;@3;)
          local.get 1
          i32.const -2
          i32.add
          i32.const 255
          i32.and
          local.tee 1
          i32.const 2
          i32.gt_u
          local.get 1
          i32.const 1
          i32.eq
          i32.or
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 32
          i32.add
          local.tee 1
          local.get 1
          i64.load
          local.get 10
          i64.add
          i64.store
        end
        local.get 3
        local.get 10
        i64.store32
        i32.const 0
        local.set 1
      end
      local.get 9
      local.get 9
      i32.load
      i32.const 1
      i32.add
      i32.store
      local.get 2
      local.get 2
      i32.load
      i32.const -1
      i32.add
      i32.store
    end
    local.get 4
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 65535
    i32.and)
  (func $path_open (type 15) (param i32 i32 i32 i32 i32 i64 i64 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 9
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
              local.tee 10
              i32.load
              br_if 0 (;@5;)
              local.get 10
              i32.const -1
              i32.store
              local.get 10
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 1 (;@4;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 10
                  i32.const 65532
                  i32.add
                  i32.load
                  i32.const 560490357
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 10
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter5State15descriptors_mut17hd4b86c6d8a247cd0E
                  local.get 9
                  i32.load offset=4
                  local.set 11
                  local.get 9
                  i32.const 8
                  i32.add
                  local.get 9
                  i32.load
                  local.tee 12
                  local.get 0
                  call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors7get_dir17hb01155064108e7f5E
                  local.get 9
                  i32.load16_u offset=8
                  br_if 1 (;@6;)
                  local.get 9
                  i32.const 8
                  i32.add
                  local.get 9
                  i32.load offset=12
                  i32.load
                  local.get 1
                  i32.const 1
                  i32.and
                  local.get 2
                  local.get 3
                  local.get 4
                  i32.const 15
                  i32.and
                  local.get 5
                  i32.wrap_i64
                  local.tee 0
                  i32.const 5
                  i32.shr_u
                  i32.const 2
                  i32.and
                  local.get 0
                  i32.const 1
                  i32.shr_u
                  i32.const 1
                  i32.and
                  i32.or
                  local.get 7
                  i32.const 2
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.or
                  local.get 7
                  i32.const 2
                  i32.shl
                  i32.const 8
                  i32.and
                  i32.or
                  local.get 7
                  i32.const 1
                  i32.shl
                  i32.const 16
                  i32.and
                  i32.or
                  i32.const 3
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem7open_at17h53d4085abecb7ffbE
                  local.get 9
                  i32.load8_u offset=8
                  br_if 4 (;@3;)
                  local.get 9
                  i32.load offset=12
                  local.tee 4
                  local.get 9
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem8get_type10wit_import17hfe1b58471bf0a1bfE
                  local.get 9
                  i32.load8_u offset=9
                  local.set 0
                  local.get 9
                  i32.load8_u offset=8
                  br_if 5 (;@2;)
                  local.get 9
                  i32.const 48
                  i32.add
                  local.get 7
                  i32.const 1
                  i32.and
                  i32.store8
                  local.get 9
                  i32.const 40
                  i32.add
                  i64.const 0
                  i64.store
                  local.get 9
                  i32.const 36
                  i32.add
                  local.get 0
                  i32.store8
                  local.get 9
                  i32.const 32
                  i32.add
                  local.get 4
                  i32.store
                  i32.const 0
                  local.set 0
                  local.get 9
                  i32.const 24
                  i32.add
                  i32.const 0
                  i32.store
                  local.get 9
                  i32.const 49
                  i32.add
                  local.get 7
                  i32.const 4
                  i32.and
                  i32.eqz
                  i32.store8
                  local.get 9
                  i32.const 0
                  i32.store offset=16
                  local.get 9
                  i32.const 1
                  i32.store offset=8
                  local.get 9
                  i32.const 56
                  i32.add
                  local.get 12
                  local.get 9
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors4open17h9079836a5097fbb2E
                  block  ;; label = @8
                    local.get 9
                    i32.load16_u offset=56
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 9
                    i32.load offset=60
                    i32.store
                    br 7 (;@1;)
                  end
                  local.get 9
                  i32.load16_u offset=58
                  local.set 0
                  br 6 (;@1;)
                end
                local.get 9
                i32.const 32
                i32.store8 offset=44
                local.get 9
                i32.const 1701734764
                i32.store offset=40 align=1
                local.get 9
                i64.const 2338042707334751329
                i64.store offset=32 align=1
                local.get 9
                i64.const 2338600898263348341
                i64.store offset=24 align=1
                local.get 9
                i64.const 7162263158133189730
                i64.store offset=16 align=1
                local.get 9
                i64.const 7018969289221893749
                i64.store offset=8 align=1
                local.get 9
                i32.const 8
                i32.add
                i32.const 37
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                i32.const 2241
                call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                local.get 9
                i32.const 8250
                i32.store16 offset=8 align=1
                local.get 9
                i32.const 8
                i32.add
                i32.const 2
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 9
                i32.const 10
                i32.store8 offset=24
                local.get 9
                i64.const 7234307576302018670
                i64.store offset=16 align=1
                local.get 9
                i64.const 8028075845441778529
                i64.store offset=8 align=1
                local.get 9
                i32.const 8
                i32.add
                i32.const 17
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 9
                i32.const 10
                i32.store8 offset=8
                local.get 9
                i32.const 8
                i32.add
                i32.const 1
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                unreachable
                unreachable
              end
              local.get 9
              i32.load16_u offset=10
              local.set 0
              br 4 (;@1;)
            end
            local.get 9
            i32.const 32
            i32.store8 offset=44
            local.get 9
            i32.const 1701734764
            i32.store offset=40 align=1
            local.get 9
            i64.const 2338042707334751329
            i64.store offset=32 align=1
            local.get 9
            i64.const 2338600898263348341
            i64.store offset=24 align=1
            local.get 9
            i64.const 7162263158133189730
            i64.store offset=16 align=1
            local.get 9
            i64.const 7018969289221893749
            i64.store offset=8 align=1
            local.get 9
            i32.const 8
            i32.add
            i32.const 37
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            i32.const 2239
            call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
            local.get 9
            i32.const 10
            i32.store8 offset=8
            local.get 9
            i32.const 8
            i32.add
            i32.const 1
            call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
            unreachable
            unreachable
          end
          local.get 9
          i32.const 32
          i32.store8 offset=44
          local.get 9
          i32.const 1701734764
          i32.store offset=40 align=1
          local.get 9
          i64.const 2338042707334751329
          i64.store offset=32 align=1
          local.get 9
          i64.const 2338600898263348341
          i64.store offset=24 align=1
          local.get 9
          i64.const 7162263158133189730
          i64.store offset=16 align=1
          local.get 9
          i64.const 7018969289221893749
          i64.store offset=8 align=1
          local.get 9
          i32.const 8
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2240
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 9
          i32.const 8250
          i32.store16 offset=8 align=1
          local.get 9
          i32.const 8
          i32.add
          i32.const 2
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 9
          i32.const 10
          i32.store8 offset=24
          local.get 9
          i64.const 7234307576302018670
          i64.store offset=16 align=1
          local.get 9
          i64.const 8028075845441778529
          i64.store offset=8 align=1
          local.get 9
          i32.const 8
          i32.add
          i32.const 17
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 9
          i32.const 10
          i32.store8 offset=8
          local.get 9
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 9
        i32.load8_u offset=9
        call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
      local.set 0
    end
    local.get 11
    local.get 11
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 10
    local.get 10
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 9
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 65535
    i32.and)
  (func $path_remove_directory (type 11) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 4
            i32.load
            local.tee 5
            i32.const 2147483647
            i32.ge_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.const 1
            i32.add
            i32.store
            local.get 4
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 65532
                i32.add
                i32.load
                i32.const 560490357
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 4
                i32.const 8
                i32.add
                call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
                local.get 3
                i32.load offset=4
                local.set 5
                local.get 3
                i32.const 8
                i32.add
                local.get 3
                i32.load
                local.get 0
                call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors7get_dir17hb01155064108e7f5E
                block  ;; label = @7
                  local.get 3
                  i32.load16_u offset=8
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  i32.load
                  local.get 1
                  local.get 2
                  local.get 3
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem19remove_directory_at10wit_import17h045924b9bdff01f3E
                  local.get 3
                  i32.load8_u offset=8
                  br_if 2 (;@5;)
                  i32.const 0
                  local.set 0
                  br 6 (;@1;)
                end
                local.get 3
                i32.load16_u offset=10
                local.set 0
                br 5 (;@1;)
              end
              local.get 3
              i32.const 32
              i32.store8 offset=44
              local.get 3
              i32.const 1701734764
              i32.store offset=40 align=1
              local.get 3
              i64.const 2338042707334751329
              i64.store offset=32 align=1
              local.get 3
              i64.const 2338600898263348341
              i64.store offset=24 align=1
              local.get 3
              i64.const 7162263158133189730
              i64.store offset=16 align=1
              local.get 3
              i64.const 7018969289221893749
              i64.store offset=8 align=1
              local.get 3
              i32.const 8
              i32.add
              i32.const 37
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              i32.const 2229
              call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
              local.get 3
              i32.const 8250
              i32.store16 offset=8 align=1
              local.get 3
              i32.const 8
              i32.add
              i32.const 2
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              local.get 3
              i32.const 10
              i32.store8 offset=24
              local.get 3
              i64.const 7234307576302018670
              i64.store offset=16 align=1
              local.get 3
              i64.const 8028075845441778529
              i64.store offset=8 align=1
              local.get 3
              i32.const 8
              i32.add
              i32.const 17
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              local.get 3
              i32.const 10
              i32.store8 offset=8
              local.get 3
              i32.const 8
              i32.add
              i32.const 1
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              unreachable
              unreachable
            end
            i32.const 0
            local.set 0
            local.get 3
            i32.load8_u offset=9
            local.tee 2
            i32.const 37
            i32.ne
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          local.get 3
          i32.const 32
          i32.store8 offset=44
          local.get 3
          i32.const 1701734764
          i32.store offset=40 align=1
          local.get 3
          i64.const 2338042707334751329
          i64.store offset=32 align=1
          local.get 3
          i64.const 2338600898263348341
          i64.store offset=24 align=1
          local.get 3
          i64.const 7162263158133189730
          i64.store offset=16 align=1
          local.get 3
          i64.const 7018969289221893749
          i64.store offset=8 align=1
          local.get 3
          i32.const 8
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2227
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 3
          i32.const 10
          i32.store8 offset=8
          local.get 3
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 3
        i32.const 32
        i32.store8 offset=44
        local.get 3
        i32.const 1701734764
        i32.store offset=40 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=32 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=24 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=16 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=8 align=1
        local.get 3
        i32.const 8
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2228
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 3
        i32.const 8250
        i32.store16 offset=8 align=1
        local.get 3
        i32.const 8
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 3
        i32.const 10
        i32.store8 offset=24
        local.get 3
        i64.const 7234307576302018670
        i64.store offset=16 align=1
        local.get 3
        i64.const 8028075845441778529
        i64.store offset=8 align=1
        local.get 3
        i32.const 8
        i32.add
        i32.const 17
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 3
        i32.const 10
        i32.store8 offset=8
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
      local.set 0
    end
    local.get 5
    local.get 5
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 4
    local.get 4
    i32.load
    i32.const -1
    i32.add
    i32.store
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 65535
    i32.and)
  (func $path_unlink_file (type 11) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
            local.tee 4
            i32.load
            local.tee 5
            i32.const 2147483647
            i32.ge_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.const 1
            i32.add
            i32.store
            local.get 4
            i32.load offset=8
            i32.const 560490357
            i32.ne
            br_if 1 (;@3;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 65532
                i32.add
                i32.load
                i32.const 560490357
                i32.ne
                br_if 0 (;@6;)
                local.get 3
                local.get 4
                i32.const 8
                i32.add
                call $_ZN31wasi_preview1_component_adapter5State11descriptors17h5db82afb67da21a2E
                local.get 3
                i32.load offset=4
                local.set 5
                local.get 3
                i32.const 8
                i32.add
                local.get 3
                i32.load
                local.get 0
                call $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors7get_dir17hb01155064108e7f5E
                block  ;; label = @7
                  local.get 3
                  i32.load16_u offset=8
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  i32.load
                  local.get 1
                  local.get 2
                  local.get 3
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem14unlink_file_at10wit_import17hc116167fff8ecd28E
                  local.get 3
                  i32.load8_u offset=8
                  br_if 2 (;@5;)
                  i32.const 0
                  local.set 0
                  br 6 (;@1;)
                end
                local.get 3
                i32.load16_u offset=10
                local.set 0
                br 5 (;@1;)
              end
              local.get 3
              i32.const 32
              i32.store8 offset=44
              local.get 3
              i32.const 1701734764
              i32.store offset=40 align=1
              local.get 3
              i64.const 2338042707334751329
              i64.store offset=32 align=1
              local.get 3
              i64.const 2338600898263348341
              i64.store offset=24 align=1
              local.get 3
              i64.const 7162263158133189730
              i64.store offset=16 align=1
              local.get 3
              i64.const 7018969289221893749
              i64.store offset=8 align=1
              local.get 3
              i32.const 8
              i32.add
              i32.const 37
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              i32.const 2229
              call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
              local.get 3
              i32.const 8250
              i32.store16 offset=8 align=1
              local.get 3
              i32.const 8
              i32.add
              i32.const 2
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              local.get 3
              i32.const 10
              i32.store8 offset=24
              local.get 3
              i64.const 7234307576302018670
              i64.store offset=16 align=1
              local.get 3
              i64.const 8028075845441778529
              i64.store offset=8 align=1
              local.get 3
              i32.const 8
              i32.add
              i32.const 17
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              local.get 3
              i32.const 10
              i32.store8 offset=8
              local.get 3
              i32.const 8
              i32.add
              i32.const 1
              call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
              unreachable
              unreachable
            end
            i32.const 0
            local.set 0
            local.get 3
            i32.load8_u offset=9
            local.tee 2
            i32.const 37
            i32.ne
            br_if 2 (;@2;)
            br 3 (;@1;)
          end
          local.get 3
          i32.const 32
          i32.store8 offset=44
          local.get 3
          i32.const 1701734764
          i32.store offset=40 align=1
          local.get 3
          i64.const 2338042707334751329
          i64.store offset=32 align=1
          local.get 3
          i64.const 2338600898263348341
          i64.store offset=24 align=1
          local.get 3
          i64.const 7162263158133189730
          i64.store offset=16 align=1
          local.get 3
          i64.const 7018969289221893749
          i64.store offset=8 align=1
          local.get 3
          i32.const 8
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2227
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 3
          i32.const 10
          i32.store8 offset=8
          local.get 3
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 3
        i32.const 32
        i32.store8 offset=44
        local.get 3
        i32.const 1701734764
        i32.store offset=40 align=1
        local.get 3
        i64.const 2338042707334751329
        i64.store offset=32 align=1
        local.get 3
        i64.const 2338600898263348341
        i64.store offset=24 align=1
        local.get 3
        i64.const 7162263158133189730
        i64.store offset=16 align=1
        local.get 3
        i64.const 7018969289221893749
        i64.store offset=8 align=1
        local.get 3
        i32.const 8
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2228
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 3
        i32.const 8250
        i32.store16 offset=8 align=1
        local.get 3
        i32.const 8
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 3
        i32.const 10
        i32.store8 offset=24
        local.get 3
        i64.const 7234307576302018670
        i64.store offset=16 align=1
        local.get 3
        i64.const 8028075845441778529
        i64.store offset=8 align=1
        local.get 3
        i32.const 8
        i32.add
        i32.const 17
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 3
        i32.const 10
        i32.store8 offset=8
        local.get 3
        i32.const 8
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
      local.set 0
    end
    local.get 5
    local.get 5
    i32.load
    i32.const 1
    i32.add
    i32.store
    local.get 4
    local.get 4
    i32.load
    i32.const -1
    i32.add
    i32.store
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0
    i32.const 65535
    i32.and)
  (func $proc_exit (type 0) (param i32)
    (local i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.ne
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base4exit4exit17h74748db530d16499E
    local.get 1
    i32.const 32
    i32.store8 offset=46
    local.get 1
    i32.const 1701734764
    i32.store offset=42 align=1
    local.get 1
    i64.const 2338042707334751329
    i64.store offset=34 align=1
    local.get 1
    i64.const 2338600898263348341
    i64.store offset=26 align=1
    local.get 1
    i64.const 7162263158133189730
    i64.store offset=18 align=1
    local.get 1
    i64.const 7018969289221893749
    i64.store offset=10 align=1
    local.get 1
    i32.const 10
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 1843
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 1
    i32.const 8250
    i32.store16 offset=10 align=1
    local.get 1
    i32.const 10
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 1
    i32.const 2593
    i32.store16 offset=46 align=1
    local.get 1
    i32.const 1953069157
    i32.store offset=42 align=1
    local.get 1
    i64.const 2338537461596644384
    i64.store offset=34 align=1
    local.get 1
    i64.const 7957695015159098981
    i64.store offset=26 align=1
    local.get 1
    i64.const 7882825952909664372
    i64.store offset=18 align=1
    local.get 1
    i64.const 7599935561254793064
    i64.store offset=10 align=1
    local.get 1
    i32.const 10
    i32.add
    i32.const 38
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 1
    i32.const 10
    i32.store8 offset=10
    local.get 1
    i32.const 10
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $random_get (type 12) (param i32 i32) (result i32)
    (local i32 i32 i32)
    call $allocate_stack
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $get_allocation_state
              i32.const -2
              i32.add
              i32.const -3
              i32.and
              br_if 0 (;@5;)
              call $_ZN31wasi_preview1_component_adapter5State3ptr17h48acd91a68e9d9d9E
              local.tee 3
              i32.load
              local.tee 4
              i32.const 2147483647
              i32.ge_u
              br_if 1 (;@4;)
              local.get 3
              local.get 4
              i32.const 1
              i32.add
              i32.store
              local.get 3
              i32.load offset=8
              i32.const 560490357
              i32.ne
              br_if 2 (;@3;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 65532
                  i32.add
                  i32.load
                  i32.const 560490357
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 3
                  i32.const 20
                  i32.add
                  i32.load
                  br_if 5 (;@2;)
                  local.get 3
                  i32.load offset=12
                  local.set 4
                  local.get 3
                  local.get 0
                  i32.store offset=12
                  local.get 4
                  br_if 6 (;@1;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.get 1
                  i32.store
                  local.get 1
                  i64.extend_i32_u
                  local.get 2
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi6random6random16get_random_bytes10wit_import17hef4e7ad853115956E
                  local.get 2
                  i32.load offset=8
                  local.set 1
                  local.get 3
                  i32.const 0
                  i32.store offset=12
                  local.get 1
                  local.get 0
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 2
                  i32.const 32
                  i32.store8 offset=44
                  local.get 2
                  i32.const 1701734764
                  i32.store offset=40 align=1
                  local.get 2
                  i64.const 2338042707334751329
                  i64.store offset=32 align=1
                  local.get 2
                  i64.const 2338600898263348341
                  i64.store offset=24 align=1
                  local.get 2
                  i64.const 7162263158133189730
                  i64.store offset=16 align=1
                  local.get 2
                  i64.const 7018969289221893749
                  i64.store offset=8 align=1
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 37
                  call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                  i32.const 1879
                  call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                  local.get 2
                  i32.const 8250
                  i32.store16 offset=8 align=1
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 2
                  call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                  local.get 2
                  i32.const 10
                  i32.store8 offset=24
                  local.get 2
                  i64.const 7234307576302018670
                  i64.store offset=16 align=1
                  local.get 2
                  i64.const 8028075845441778529
                  i64.store offset=8 align=1
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 17
                  call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                  local.get 2
                  i32.const 10
                  i32.store8 offset=8
                  local.get 2
                  i32.const 8
                  i32.add
                  i32.const 1
                  call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                  unreachable
                  unreachable
                end
                local.get 2
                i32.const 32
                i32.store8 offset=44
                local.get 2
                i32.const 1701734764
                i32.store offset=40 align=1
                local.get 2
                i64.const 2338042707334751329
                i64.store offset=32 align=1
                local.get 2
                i64.const 2338600898263348341
                i64.store offset=24 align=1
                local.get 2
                i64.const 7162263158133189730
                i64.store offset=16 align=1
                local.get 2
                i64.const 7018969289221893749
                i64.store offset=8 align=1
                local.get 2
                i32.const 8
                i32.add
                i32.const 37
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                i32.const 2229
                call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
                local.get 2
                i32.const 8250
                i32.store16 offset=8 align=1
                local.get 2
                i32.const 8
                i32.add
                i32.const 2
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 2
                i32.const 10
                i32.store8 offset=24
                local.get 2
                i64.const 7234307576302018670
                i64.store offset=16 align=1
                local.get 2
                i64.const 8028075845441778529
                i64.store offset=8 align=1
                local.get 2
                i32.const 8
                i32.add
                i32.const 17
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                local.get 2
                i32.const 10
                i32.store8 offset=8
                local.get 2
                i32.const 8
                i32.add
                i32.const 1
                call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
                unreachable
                unreachable
              end
              local.get 3
              local.get 3
              i32.load
              i32.const -1
              i32.add
              i32.store
            end
            local.get 2
            i32.const 48
            i32.add
            global.set $__stack_pointer
            i32.const 0
            return
          end
          local.get 2
          i32.const 32
          i32.store8 offset=44
          local.get 2
          i32.const 1701734764
          i32.store offset=40 align=1
          local.get 2
          i64.const 2338042707334751329
          i64.store offset=32 align=1
          local.get 2
          i64.const 2338600898263348341
          i64.store offset=24 align=1
          local.get 2
          i64.const 7162263158133189730
          i64.store offset=16 align=1
          local.get 2
          i64.const 7018969289221893749
          i64.store offset=8 align=1
          local.get 2
          i32.const 8
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 2227
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 2
          i32.const 10
          i32.store8 offset=8
          local.get 2
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 2
        i32.const 32
        i32.store8 offset=44
        local.get 2
        i32.const 1701734764
        i32.store offset=40 align=1
        local.get 2
        i64.const 2338042707334751329
        i64.store offset=32 align=1
        local.get 2
        i64.const 2338600898263348341
        i64.store offset=24 align=1
        local.get 2
        i64.const 7162263158133189730
        i64.store offset=16 align=1
        local.get 2
        i64.const 7018969289221893749
        i64.store offset=8 align=1
        local.get 2
        i32.const 8
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2228
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 2
        i32.const 8250
        i32.store16 offset=8 align=1
        local.get 2
        i32.const 8
        i32.add
        i32.const 2
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 2
        i32.const 10
        i32.store8 offset=24
        local.get 2
        i64.const 7234307576302018670
        i64.store offset=16 align=1
        local.get 2
        i64.const 8028075845441778529
        i64.store offset=8 align=1
        local.get 2
        i32.const 8
        i32.add
        i32.const 17
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        local.get 2
        i32.const 10
        i32.store8 offset=8
        local.get 2
        i32.const 8
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 2
      i32.const 32
      i32.store8 offset=44
      local.get 2
      i32.const 1701734764
      i32.store offset=40 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=32 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=24 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=16 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 164
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 8250
      i32.store16 offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 2
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=18
      local.get 2
      i32.const 25956
      i32.store16 offset=16 align=1
      local.get 2
      i64.const 8029109313507521121
      i64.store offset=8 align=1
      local.get 2
      i32.const 8
      i32.add
      i32.const 11
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      local.get 2
      i32.const 10
      i32.store8 offset=8
      local.get 2
      i32.const 8
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 32
    i32.store8 offset=44
    local.get 2
    i32.const 1701734764
    i32.store offset=40 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=32 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=24 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=16 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 168
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 8250
    i32.store16 offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=32
    local.get 2
    i64.const 8243107283213623410
    i64.store offset=24 align=1
    local.get 2
    i64.const 7307218417350680677
    i64.store offset=16 align=1
    local.get 2
    i64.const 8390050488160450159
    i64.store offset=8 align=1
    local.get 2
    i32.const 8
    i32.add
    i32.const 25
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 2
    i32.const 10
    i32.store8 offset=8
    local.get 2
    i32.const 8
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter5State3new17h55375d560d671284E (type 10) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      call $get_allocation_state
      i32.const 2
      i32.ne
      br_if 0 (;@1;)
      i32.const 3
      call $set_allocation_state
      i32.const 0
      i32.const 0
      i32.const 8
      i32.const 65536
      call $_ZN31wasi_preview1_component_adapter5State3new12cabi_realloc17h1a20d76ab753f16cE
      local.set 1
      i32.const 4
      call $set_allocation_state
      local.get 1
      i64.const 0
      i64.store offset=12 align=4
      local.get 1
      i32.const 560490357
      i32.store offset=8
      local.get 1
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.add
      i64.const 0
      i64.store align=4
      local.get 1
      i64.const 0
      i64.store offset=65488 align=4
      local.get 1
      i32.const 0
      i32.store offset=65480
      local.get 1
      i32.const 0
      i32.store offset=65212
      local.get 1
      i64.const 0
      i64.store offset=65200 align=4
      local.get 1
      i32.const 2
      i32.store offset=6180
      local.get 1
      i32.const 65496
      i32.add
      i64.const 0
      i64.store align=4
      local.get 1
      i32.const 65504
      i32.add
      i64.const 0
      i64.store align=4
      local.get 1
      i32.const 65509
      i32.add
      i64.const 0
      i64.store align=1
      local.get 1
      i32.const 560490357
      i32.store offset=65532
      local.get 1
      i32.const 11822
      i32.store16 offset=65528
      local.get 1
      i32.const 0
      i32.store offset=65520
      local.get 0
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 0
    i32.const 32
    i32.store8 offset=47
    local.get 0
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 0
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 0
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 0
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 0
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 0
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 2272
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 0
    i32.const 8250
    i32.store16 offset=11 align=1
    local.get 0
    i32.const 11
    i32.add
    i32.const 2
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 0
    i32.const 10
    i32.store8 offset=27
    local.get 0
    i64.const 7234307576302018670
    i64.store offset=19 align=1
    local.get 0
    i64.const 8028075845441778529
    i64.store offset=11 align=1
    local.get 0
    i32.const 11
    i32.add
    i32.const 17
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    local.get 0
    i32.const 10
    i32.store8 offset=11
    local.get 0
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem4stat17h7691d0cb94fe1d8cE (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem4stat10wit_import17h8d8d30593f4e8a0fE
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.load8_u
        br_if 0 (;@2;)
        local.get 0
        local.get 2
        i32.const 88
        i32.add
        i32.load
        i32.store offset=80
        local.get 0
        local.get 2
        i32.const 80
        i32.add
        i64.load
        i64.store offset=72
        local.get 0
        local.get 2
        i32.const 72
        i32.add
        i32.load
        i32.store offset=64
        local.get 0
        local.get 2
        i32.const 64
        i32.add
        i64.load
        i64.store offset=56
        local.get 0
        local.get 2
        i32.const 56
        i32.add
        i32.load
        i32.store offset=48
        local.get 0
        local.get 2
        i32.const 48
        i32.add
        i64.load
        i64.store offset=40
        local.get 0
        local.get 2
        i32.const 40
        i32.add
        i64.load
        i64.store offset=32
        local.get 0
        local.get 2
        i32.const 32
        i32.add
        i64.load
        i64.store offset=24
        local.get 0
        local.get 2
        i32.const 24
        i32.add
        i32.load8_u
        i32.store8 offset=16
        local.get 0
        local.get 2
        i32.const 16
        i32.add
        i64.load
        i64.store offset=8
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        i64.load
        i64.store
        br 1 (;@1;)
      end
      local.get 0
      i32.const 8
      i32.store8 offset=16
      local.get 0
      local.get 2
      i32.const 8
      i32.add
      i32.load8_u
      i32.store8
    end
    local.get 2
    i32.const 96
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem7open_at17h53d4085abecb7ffbE (type 5) (param i32 i32 i32 i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 8
    global.set $__stack_pointer
    local.get 1
    local.get 2
    i32.const 255
    i32.and
    local.get 3
    local.get 4
    local.get 5
    i32.const 255
    i32.and
    local.get 6
    i32.const 255
    i32.and
    local.get 7
    i32.const 255
    i32.and
    local.get 8
    i32.const 8
    i32.add
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem7open_at10wit_import17h8e18843ba08ca8a4E
    block  ;; label = @1
      block  ;; label = @2
        local.get 8
        i32.load8_u offset=8
        local.tee 7
        br_if 0 (;@2;)
        local.get 0
        local.get 8
        i32.load offset=12
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      local.get 8
      i32.load8_u offset=12
      i32.store8 offset=1
    end
    local.get 0
    local.get 7
    i32.store8
    local.get 8
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    call $get_stderr_stream
    local.get 0
    local.get 1
    local.get 2
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write10wit_import17hfdfb8277cf63eb5eE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E (type 0) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 1
        i32.const 48
        i32.store8 offset=15
        call $get_stderr_stream
        local.get 1
        i32.const 15
        i32.add
        i32.const 1
        local.get 1
        i32.const 16
        i32.add
        call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write10wit_import17hfdfb8277cf63eb5eE
        br 1 (;@1;)
      end
      local.get 0
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3215eprint_u32_impl17h17adfe0163ce1533E.llvm.15496858645503652279
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter6macros10eprint_u3215eprint_u32_impl17h17adfe0163ce1533E.llvm.15496858645503652279 (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 10
      i32.div_u
      local.tee 2
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3215eprint_u32_impl17h17adfe0163ce1533E.llvm.15496858645503652279
      local.get 1
      local.get 0
      local.get 2
      i32.const 10
      i32.mul
      i32.sub
      i32.const 48
      i32.or
      i32.store8 offset=15
      call $get_stderr_stream
      local.get 1
      i32.const 15
      i32.add
      i32.const 1
      local.get 1
      i32.const 16
      i32.add
      call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write10wit_import17hfdfb8277cf63eb5eE
    end
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base4exit4exit17h74748db530d16499E (type 0) (param i32)
    local.get 0
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base4exit4exit10wit_import17h7a115c60a4457d46E)
  (func $_ZN4core3ptr77drop_in_place$LT$wasi_preview1_component_adapter..descriptors..Descriptor$GT$17h9744154efc7196ffE.llvm.4521842612840383350 (type 0) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 12
        i32.add
        i32.load
        call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams17drop_input_stream10wit_import17hb666310c4cef5cc7E
      end
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.add
        i32.load
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 20
        i32.add
        i32.load
        call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams18drop_output_stream10wit_import17hda3707c0fd31def2E
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 40
          i32.add
          i32.load8_u
          i32.const -2
          i32.add
          local.tee 2
          i32.const 1
          local.get 2
          i32.const 255
          i32.and
          i32.const 3
          i32.lt_u
          select
          i32.const 255
          i32.and
          br_table 2 (;@1;) 1 (;@2;) 0 (;@3;) 2 (;@1;)
        end
        local.get 1
        i32.const 32
        i32.store8 offset=47
        local.get 1
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 1
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 1
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 1
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 1
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 1
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 34
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 1
        i32.const 10
        i32.store8 offset=11
        local.get 1
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 0
      i32.const 24
      i32.add
      i32.load
      call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem15drop_descriptor10wit_import17h66085a38a13ae8f5E
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter11descriptors7Streams15get_read_stream17hc3da37af880155a1E (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.const 32
            i32.add
            i32.load8_u
            i32.const -2
            i32.add
            i32.const 255
            i32.and
            local.tee 3
            i32.const 2
            i32.gt_u
            br_if 0 (;@4;)
            i32.const 1
            local.set 4
            local.get 3
            i32.const 1
            i32.ne
            br_if 2 (;@2;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 20
              i32.add
              i32.load8_u
              i32.const 3
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              i32.const 8
              i32.store16 offset=2
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=16
            local.get 1
            i32.const 24
            i32.add
            i64.load
            local.get 2
            i32.const 8
            i32.add
            call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem15read_via_stream10wit_import17hd797db6ca71495d8E
            block  ;; label = @5
              local.get 2
              i32.load8_u offset=8
              br_if 0 (;@5;)
              local.get 1
              local.get 2
              i32.load offset=12
              local.tee 4
              i32.store offset=4
              local.get 1
              i32.const 1
              i32.store
              local.get 0
              local.get 4
              i32.store offset=4
              i32.const 0
              local.set 4
              br 4 (;@1;)
            end
            local.get 0
            local.get 2
            i32.load8_u offset=12
            call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
            i32.store16 offset=2
          end
          i32.const 1
          local.set 4
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        i32.load offset=4
        i32.store offset=4
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 8
      i32.store16 offset=2
    end
    local.get 0
    local.get 4
    i32.store16
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter11descriptors7Streams16get_write_stream17h26e0e9538b430e7aE (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 1
                  i32.const 32
                  i32.add
                  i32.load8_u
                  local.tee 3
                  i32.const -2
                  i32.add
                  i32.const 255
                  i32.and
                  local.tee 4
                  i32.const 2
                  i32.gt_u
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 5
                  local.get 4
                  i32.const 1
                  i32.ne
                  br_if 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 1
                  i32.const 20
                  i32.add
                  i32.load8_u
                  i32.const 3
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 8
                  i32.store16 offset=2
                  br 5 (;@2;)
                end
                local.get 1
                i32.load offset=16
                local.set 5
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 255
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 1
                    i32.const 24
                    i32.add
                    i64.load
                    local.get 2
                    i32.const 8
                    i32.add
                    call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem16write_via_stream10wit_import17h3f4a98212cc8208dE
                    local.get 2
                    i32.load8_u offset=8
                    i32.eqz
                    br_if 1 (;@7;)
                    local.get 0
                    local.get 2
                    i32.load8_u offset=12
                    call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
                    i32.store16 offset=2
                    br 6 (;@2;)
                  end
                  local.get 5
                  local.get 2
                  i32.const 8
                  i32.add
                  call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem17append_via_stream10wit_import17h3d656be5c97fbe3cE
                  local.get 2
                  i32.load8_u offset=8
                  br_if 3 (;@4;)
                end
                local.get 2
                i32.load offset=12
                local.set 5
                local.get 1
                i32.const 1
                i32.store offset=8
                local.get 0
                local.get 5
                i32.store offset=4
                local.get 1
                i32.const 12
                i32.add
                local.get 5
                i32.store
                br 3 (;@3;)
              end
              local.get 0
              local.get 1
              i32.const 12
              i32.add
              i32.load
              i32.store offset=4
              br 2 (;@3;)
            end
            local.get 0
            i32.const 8
            i32.store16 offset=2
            br 3 (;@1;)
          end
          local.get 0
          local.get 2
          i32.load8_u offset=12
          call $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E
          i32.store16 offset=2
          br 1 (;@2;)
        end
        i32.const 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 1
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store16
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors3new17h128f28896896514dE (type 7) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=6156
    local.get 0
    i32.const 0
    i32.store offset=6148
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base5stdin9get_stdin10wit_import17h215f4c88c3851f2fE
    local.set 4
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base6stdout10get_stdout10wit_import17h837202c8cdefbe5cE
    local.set 5
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi8cli_base6stderr10get_stderr10wit_import17h58f74f5cf4e2ececE
    local.tee 6
    call $set_stderr_stream
    local.get 0
    i32.const 2
    i32.store8 offset=40
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    i32.const 1
    i32.store offset=8
    local.get 0
    i32.const 1
    i32.store
    local.get 3
    i32.const 0
    i32.store offset=20
    local.get 3
    i32.const 0
    i32.store16 offset=16
    local.get 3
    i32.const 16
    i32.add
    call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h2d1b0ced56f14ca1E
    drop
    local.get 0
    i32.const 68
    i32.add
    local.get 5
    i32.store
    local.get 0
    i32.const 64
    i32.add
    i32.const 1
    i32.store
    local.get 0
    i32.const 56
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1
    i32.store offset=48
    local.get 0
    i32.const 72
    i32.add
    local.get 3
    i64.load offset=16
    i64.store
    local.get 0
    i32.const 80
    i32.add
    local.get 3
    i32.const 24
    i32.add
    local.tee 5
    i64.load
    i64.store
    local.get 0
    i32.const 88
    i32.add
    i32.const 2
    i32.store8
    local.get 0
    local.get 3
    i32.load align=1
    i32.store offset=89 align=1
    i32.const 3
    local.set 4
    local.get 0
    i32.const 92
    i32.add
    local.get 3
    i32.const 3
    i32.add
    local.tee 7
    i32.load align=1
    i32.store align=1
    local.get 3
    i32.const 1
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store16 offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h2d1b0ced56f14ca1E
    drop
    local.get 0
    i32.const 116
    i32.add
    local.get 6
    i32.store
    local.get 0
    i32.const 112
    i32.add
    i32.const 1
    i32.store
    local.get 0
    i32.const 104
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1
    i32.store offset=96
    local.get 0
    i32.const 120
    i32.add
    local.get 3
    i64.load offset=16
    i64.store
    local.get 0
    i32.const 128
    i32.add
    local.get 5
    i64.load
    i64.store
    local.get 0
    i32.const 136
    i32.add
    i32.const 2
    i32.store8
    local.get 0
    i32.const 3
    i32.store16 offset=6144
    local.get 0
    local.get 3
    i32.load align=1
    i32.store offset=137 align=1
    local.get 0
    i32.const 140
    i32.add
    local.get 7
    i32.load align=1
    i32.store align=1
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store16 offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h2d1b0ced56f14ca1E
    drop
    local.get 3
    i64.const 0
    i64.store
    local.get 1
    local.get 2
    local.get 3
    call $_ZN31wasi_preview1_component_adapter11ImportAlloc10with_arena17h1d318a04d1bd44f1E
    local.get 3
    i32.load
    local.set 8
    block  ;; label = @1
      local.get 3
      i32.load offset=4
      local.tee 9
      i32.eqz
      br_if 0 (;@1;)
      local.get 9
      i32.const 12
      i32.mul
      local.set 1
      local.get 3
      i32.const 16
      i32.add
      i32.const 1
      i32.or
      local.set 7
      local.get 8
      local.set 2
      loop  ;; label = @2
        local.get 2
        i32.load
        local.tee 5
        local.get 3
        i32.const 16
        i32.add
        call $_ZN31wasi_preview1_component_adapter8bindings4wasi10filesystem10filesystem8get_type10wit_import17hfe1b58471bf0a1bfE
        local.get 3
        i32.load8_u offset=16
        i32.const 0
        i32.ne
        local.get 7
        i32.load8_u
        call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17hf0327b60ad60be4cE
        local.set 6
        local.get 3
        i32.const 0
        i32.store16 offset=56
        local.get 3
        i64.const 0
        i64.store offset=48
        local.get 3
        local.get 5
        i32.store offset=40
        local.get 3
        i32.const 0
        i32.store offset=32
        local.get 3
        i32.const 0
        i32.store offset=24
        local.get 3
        i32.const 1
        i32.store offset=16
        local.get 3
        local.get 6
        i32.const 255
        i32.and
        i32.store8 offset=44
        block  ;; label = @3
          block  ;; label = @4
            local.get 4
            i32.const 65535
            i32.and
            local.tee 5
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 48
            i32.store16 offset=10
            local.get 3
            i32.const 16
            i32.add
            call $_ZN4core3ptr77drop_in_place$LT$wasi_preview1_component_adapter..descriptors..Descriptor$GT$17h9744154efc7196ffE.llvm.4521842612840383350
            i32.const 1
            local.set 5
            br 1 (;@3;)
          end
          local.get 0
          local.get 5
          i32.const 48
          i32.mul
          i32.add
          local.get 3
          i32.const 16
          i32.add
          i32.const 48
          call $memcpy
          drop
          local.get 0
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.store16 offset=6144
          local.get 3
          local.get 5
          i32.store offset=12
          i32.const 0
          local.set 5
        end
        local.get 2
        i32.const 12
        i32.add
        local.set 2
        local.get 3
        local.get 5
        i32.store16 offset=8
        local.get 3
        i32.const 8
        i32.add
        call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h2d1b0ced56f14ca1E
        drop
        local.get 1
        i32.const -12
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 8
    i32.store offset=6156
    local.get 0
    i32.const 6160
    i32.add
    local.get 9
    i32.store
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors4open17h9079836a5097fbb2E (type 7) (param i32 i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load offset=6148
            br_if 0 (;@4;)
            local.get 1
            i32.load16_u offset=6144
            local.tee 4
            i32.const 128
            i32.lt_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 48
            i32.store16 offset=2
            local.get 2
            call $_ZN4core3ptr77drop_in_place$LT$wasi_preview1_component_adapter..descriptors..Descriptor$GT$17h9744154efc7196ffE.llvm.4521842612840383350
            i32.const 1
            local.set 1
            br 3 (;@1;)
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 6152
              i32.add
              i32.load
              local.tee 5
              local.get 1
              i32.load16_u offset=6144
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 8
              i32.store16 offset=10
              i32.const 1
              local.set 4
              br 1 (;@4;)
            end
            local.get 3
            local.get 1
            local.get 5
            i32.const 48
            i32.mul
            i32.add
            i32.store offset=12
            i32.const 0
            local.set 4
          end
          local.get 3
          local.get 4
          i32.store16 offset=8
          block  ;; label = @4
            local.get 3
            i32.const 8
            i32.add
            call $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17hd55ecccee27f3772E
            local.tee 4
            i32.load
            br_if 0 (;@4;)
            local.get 4
            i64.load offset=8
            local.set 6
            local.get 4
            call $_ZN4core3ptr77drop_in_place$LT$wasi_preview1_component_adapter..descriptors..Descriptor$GT$17h9744154efc7196ffE.llvm.4521842612840383350
            local.get 4
            local.get 2
            i32.const 48
            call $memcpy
            drop
            local.get 0
            local.get 5
            i32.store offset=4
            local.get 1
            local.get 6
            i64.store offset=6148 align=4
            br 2 (;@2;)
          end
          local.get 3
          i32.const 32
          i32.store8 offset=44
          local.get 3
          i32.const 1701734764
          i32.store offset=40 align=1
          local.get 3
          i64.const 2338042707334751329
          i64.store offset=32 align=1
          local.get 3
          i64.const 2338600898263348341
          i64.store offset=24 align=1
          local.get 3
          i64.const 7162263158133189730
          i64.store offset=16 align=1
          local.get 3
          i64.const 7018969289221893749
          i64.store offset=8 align=1
          local.get 3
          i32.const 8
          i32.add
          i32.const 37
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          i32.const 247
          call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
          local.get 3
          i32.const 8250
          i32.store16 offset=8 align=1
          local.get 3
          i32.const 8
          i32.add
          i32.const 2
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 3
          i32.const 10
          i32.store8 offset=58
          local.get 3
          i32.const 29295
          i32.store16 offset=56 align=1
          local.get 3
          i64.const 8390322045806929252
          i64.store offset=48 align=1
          local.get 3
          i64.const 2334102053349778208
          i64.store offset=40 align=1
          local.get 3
          i64.const 6998716365485077614
          i64.store offset=32 align=1
          local.get 3
          i64.const 7597414381092301164
          i64.store offset=24 align=1
          local.get 3
          i64.const 7306371753431426412
          i64.store offset=16 align=1
          local.get 3
          i64.const 7091326027899628905
          i64.store offset=8 align=1
          local.get 3
          i32.const 8
          i32.add
          i32.const 51
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          local.get 3
          i32.const 10
          i32.store8 offset=8
          local.get 3
          i32.const 8
          i32.add
          i32.const 1
          call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
          unreachable
          unreachable
        end
        local.get 1
        local.get 4
        i32.const 48
        i32.mul
        i32.add
        local.get 2
        i32.const 48
        call $memcpy
        drop
        local.get 0
        local.get 4
        i32.store offset=4
        local.get 1
        local.get 4
        i32.const 1
        i32.add
        i32.store16 offset=6144
      end
      i32.const 0
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store16
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors5close17h79f53aecc6d24ce9E (type 7) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 1
    local.set 4
    i32.const 8
    local.set 5
    block  ;; label = @1
      local.get 1
      i32.load16_u offset=6144
      local.get 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 48
      i32.mul
      i32.add
      local.tee 6
      i32.load
      local.tee 7
      i32.eqz
      br_if 0 (;@1;)
      local.get 6
      i32.load16_u offset=4
      local.set 5
      local.get 1
      i64.load offset=6148 align=4
      local.set 8
      local.get 3
      i32.const 6
      i32.or
      local.get 6
      i32.const 6
      i32.add
      i32.const 42
      call $memcpy
      drop
      local.get 6
      local.get 8
      i64.store offset=8
      i32.const 0
      local.set 4
      local.get 6
      i32.const 0
      i32.store
      local.get 1
      i32.const 1
      i32.store offset=6148
      local.get 1
      i32.const 6152
      i32.add
      local.get 2
      i32.store
      local.get 3
      local.get 5
      i32.store16 offset=4
      local.get 3
      local.get 7
      i32.store
      local.get 3
      call $_ZN4core3ptr77drop_in_place$LT$wasi_preview1_component_adapter..descriptors..Descriptor$GT$17h9744154efc7196ffE.llvm.4521842612840383350
    end
    local.get 0
    local.get 5
    i32.store16 offset=2
    local.get 0
    local.get 4
    i32.store16
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter11descriptors11Descriptors7get_dir17hb01155064108e7f5E (type 7) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load16_u offset=6144
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 1
              local.get 2
              i32.const 48
              i32.mul
              i32.add
              local.tee 1
              i32.load
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const 40
              i32.add
              i32.load8_u
              i32.const -2
              i32.add
              i32.const 255
              i32.and
              local.tee 2
              i32.const 2
              i32.gt_u
              br_if 2 (;@3;)
              local.get 2
              i32.const 1
              i32.eq
              br_if 2 (;@3;)
            end
            local.get 0
            i32.const 8
            i32.store16 offset=2
            br 2 (;@2;)
          end
          local.get 0
          i32.const 8
          i32.store16 offset=2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 28
          i32.add
          i32.load8_u
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.const 24
          i32.add
          i32.store offset=4
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        i32.const 54
        i32.store16 offset=2
      end
      i32.const 1
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store16)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams4read17hba3f1cc2bd4c4036E (type 16) (param i32 i32 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    local.get 3
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams4read10wit_import17hfae9f90ad4005ff6E
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load8_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.load offset=4
        i32.store offset=4
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 3
        i32.const 12
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.store8 offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 2
      i32.store8 offset=12
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams13blocking_read17h1c2096585e521ab2E (type 16) (param i32 i32 i64)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    local.get 3
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams13blocking_read10wit_import17h0f55d8699f43b4bbE
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load8_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i32.load offset=4
        i32.store offset=4
        local.get 0
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 1
        i32.store offset=8
        local.get 0
        local.get 1
        i32.store
        local.get 0
        local.get 3
        i32.const 12
        i32.add
        i32.load8_u
        i32.const 1
        i32.and
        i32.store8 offset=12
        br 1 (;@1;)
      end
      local.get 0
      i32.const 2
      i32.store8 offset=12
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write17h87a1139490a2c94dE (type 4) (param i32 i32 i32 i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams5write10wit_import17hfdfb8277cf63eb5eE
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        i64.const 1
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 8
      i32.add
      i64.load
      local.set 6
      i64.const 0
      local.set 5
    end
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 0
    local.get 5
    i64.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams14blocking_write17h574ffd969b6488c8E (type 4) (param i32 i32 i32 i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN31wasi_preview1_component_adapter8bindings4wasi2io7streams14blocking_write10wit_import17h3afb316044d6e26eE
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        i64.const 1
        local.set 5
        br 1 (;@1;)
      end
      local.get 4
      i32.const 8
      i32.add
      i64.load
      local.set 6
      i64.const 0
      local.set 5
    end
    local.get 0
    local.get 6
    i64.store offset=8
    local.get 0
    local.get 5
    i64.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h215461d9e3644e2aE (type 12) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 2
    i32.const 32
    i32.store8 offset=47
    local.get 2
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 83
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 10
    i32.store8 offset=11
    local.get 2
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h2d1b0ced56f14ca1E (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load16_u
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 0
      local.get 1
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    i32.const 32
    i32.store8 offset=47
    local.get 1
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 1
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 1
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 1
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 1
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 1
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 83
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 1
    i32.const 10
    i32.store8 offset=11
    local.get 1
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17hd55ecccee27f3772E (type 6) (param i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load16_u
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 0
      local.get 1
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 1
    i32.const 32
    i32.store8 offset=47
    local.get 1
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 1
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 1
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 1
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 1
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 1
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 83
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 1
    i32.const 10
    i32.store8 offset=11
    local.get 1
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN110_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17hf0327b60ad60be4cE (type 12) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 2
    i32.const 32
    i32.store8 offset=47
    local.get 2
    i32.const 1701734764
    i32.store offset=43 align=1
    local.get 2
    i64.const 2338042707334751329
    i64.store offset=35 align=1
    local.get 2
    i64.const 2338600898263348341
    i64.store offset=27 align=1
    local.get 2
    i64.const 7162263158133189730
    i64.store offset=19 align=1
    local.get 2
    i64.const 7018969289221893749
    i64.store offset=11 align=1
    local.get 2
    i32.const 11
    i32.add
    i32.const 37
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    i32.const 83
    call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
    local.get 2
    i32.const 10
    i32.store8 offset=11
    local.get 2
    i32.const 11
    i32.add
    i32.const 1
    call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
    unreachable
    unreachable)
  (func $_ZN31wasi_preview1_component_adapter166_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..ErrorCode$GT$$u20$for$u20$wasi..lib_generated..Errno$GT$4from17hbeb0d2db93a37a91E (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.set 1
    i32.const 6
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              local.get 0
                                                                              i32.const 255
                                                                              i32.and
                                                                              br_table 0 (;@37;) 36 (;@1;) 1 (;@36;) 2 (;@35;) 3 (;@34;) 4 (;@33;) 5 (;@32;) 6 (;@31;) 7 (;@30;) 8 (;@29;) 9 (;@28;) 10 (;@27;) 11 (;@26;) 12 (;@25;) 13 (;@24;) 14 (;@23;) 15 (;@22;) 16 (;@21;) 17 (;@20;) 18 (;@19;) 19 (;@18;) 20 (;@17;) 21 (;@16;) 22 (;@15;) 23 (;@14;) 24 (;@13;) 25 (;@12;) 26 (;@11;) 27 (;@10;) 28 (;@9;) 29 (;@8;) 30 (;@7;) 31 (;@6;) 32 (;@5;) 33 (;@4;) 34 (;@3;) 35 (;@2;) 0 (;@37;)
                                                                            end
                                                                            local.get 1
                                                                            i32.const 2
                                                                            i32.store16 offset=14
                                                                            local.get 1
                                                                            i32.const 14
                                                                            i32.add
                                                                            local.set 0
                                                                            local.get 1
                                                                            i32.load16_u offset=14
                                                                            return
                                                                          end
                                                                          i32.const 7
                                                                          return
                                                                        end
                                                                        i32.const 8
                                                                        return
                                                                      end
                                                                      i32.const 10
                                                                      return
                                                                    end
                                                                    i32.const 16
                                                                    return
                                                                  end
                                                                  i32.const 19
                                                                  return
                                                                end
                                                                i32.const 20
                                                                return
                                                              end
                                                              i32.const 22
                                                              return
                                                            end
                                                            i32.const 25
                                                            return
                                                          end
                                                          i32.const 26
                                                          return
                                                        end
                                                        i32.const 27
                                                        return
                                                      end
                                                      i32.const 28
                                                      return
                                                    end
                                                    i32.const 29
                                                    return
                                                  end
                                                  i32.const 31
                                                  return
                                                end
                                                i32.const 32
                                                return
                                              end
                                              i32.const 34
                                              return
                                            end
                                            i32.const 35
                                            return
                                          end
                                          i32.const 37
                                          return
                                        end
                                        i32.const 43
                                        return
                                      end
                                      i32.const 44
                                      return
                                    end
                                    i32.const 46
                                    return
                                  end
                                  i32.const 48
                                  return
                                end
                                i32.const 51
                                return
                              end
                              i32.const 54
                              return
                            end
                            i32.const 55
                            return
                          end
                          i32.const 56
                          return
                        end
                        i32.const 58
                        return
                      end
                      i32.const 59
                      return
                    end
                    i32.const 60
                    return
                  end
                  i32.const 61
                  return
                end
                i32.const 63
                return
              end
              i32.const 64
              return
            end
            i32.const 69
            return
          end
          i32.const 70
          return
        end
        i32.const 74
        return
      end
      i32.const 75
      local.set 2
    end
    local.get 2)
  (func $_ZN31wasi_preview1_component_adapter174_$LT$impl$u20$core..convert..From$LT$wasi_preview1_component_adapter..bindings..wasi..filesystem..filesystem..DescriptorType$GT$$u20$for$u20$wasi..lib_generated..Filetype$GT$4from17h08ac99f4e986e9baE (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 255
              i32.and
              br_table 4 (;@1;) 3 (;@2;) 3 (;@2;) 3 (;@2;) 4 (;@1;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 4 (;@1;)
            end
            i32.const 7
            local.set 2
            br 3 (;@1;)
          end
          i32.const 4
          local.set 2
          br 2 (;@1;)
        end
        local.get 1
        i32.const 32
        i32.store8 offset=47
        local.get 1
        i32.const 1701734764
        i32.store offset=43 align=1
        local.get 1
        i64.const 2338042707334751329
        i64.store offset=35 align=1
        local.get 1
        i64.const 2338600898263348341
        i64.store offset=27 align=1
        local.get 1
        i64.const 7162263158133189730
        i64.store offset=19 align=1
        local.get 1
        i64.const 7018969289221893749
        i64.store offset=11 align=1
        local.get 1
        i32.const 11
        i32.add
        i32.const 37
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        i32.const 2042
        call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
        local.get 1
        i32.const 10
        i32.store8 offset=11
        local.get 1
        i32.const 11
        i32.add
        i32.const 1
        call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
        unreachable
        unreachable
      end
      local.get 0
      local.set 2
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h0e9b2adeb7f4e99dE (type 7) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      br_if 0 (;@1;)
      local.get 3
      i32.const 32
      i32.store8 offset=47
      local.get 3
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 3
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 3
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 3
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 3
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 3
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 74
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 3
      i32.const 10
      i32.store8 offset=11
      local.get 3
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN106_$LT$core..option..Option$LT$T$GT$$u20$as$u20$wasi_preview1_component_adapter..TrappingUnwrap$LT$T$GT$$GT$15trapping_unwrap17h4562e7c9bd3b22e6E (type 12) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 2
      i32.const 32
      i32.store8 offset=47
      local.get 2
      i32.const 1701734764
      i32.store offset=43 align=1
      local.get 2
      i64.const 2338042707334751329
      i64.store offset=35 align=1
      local.get 2
      i64.const 2338600898263348341
      i64.store offset=27 align=1
      local.get 2
      i64.const 7162263158133189730
      i64.store offset=19 align=1
      local.get 2
      i64.const 7018969289221893749
      i64.store offset=11 align=1
      local.get 2
      i32.const 11
      i32.add
      i32.const 37
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      i32.const 74
      call $_ZN31wasi_preview1_component_adapter6macros10eprint_u3217h0005997f502bebe9E
      local.get 2
      i32.const 10
      i32.store8 offset=11
      local.get 2
      i32.const 11
      i32.add
      i32.const 1
      call $_ZN31wasi_preview1_component_adapter6macros5print17h90bdfb25c4b2cf7eE
      unreachable
      unreachable
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $get_state_ptr (type 10) (result i32)
    global.get $internal_state_ptr)
  (func $set_state_ptr (type 0) (param i32)
    local.get 0
    global.set $internal_state_ptr)
  (func $get_allocation_state (type 10) (result i32)
    global.get $allocation_state)
  (func $set_allocation_state (type 0) (param i32)
    local.get 0
    global.set $allocation_state)
  (func $get_stderr_stream (type 10) (result i32)
    global.get $stderr_stream)
  (func $set_stderr_stream (type 0) (param i32)
    local.get 0
    global.set $stderr_stream)
  (func $__multi3 (type 17) (param i32 i64 i64 i64 i64)
    (local i64 i64 i64 i64 i64 i64)
    local.get 0
    local.get 3
    i64.const 4294967295
    i64.and
    local.tee 5
    local.get 1
    i64.const 4294967295
    i64.and
    local.tee 6
    i64.mul
    local.tee 7
    local.get 5
    local.get 1
    i64.const 32
    i64.shr_u
    local.tee 8
    i64.mul
    local.tee 9
    local.get 3
    i64.const 32
    i64.shr_u
    local.tee 10
    local.get 6
    i64.mul
    i64.add
    local.tee 5
    i64.const 32
    i64.shl
    i64.add
    local.tee 6
    i64.store
    local.get 0
    local.get 10
    local.get 8
    i64.mul
    local.get 5
    local.get 9
    i64.lt_u
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i64.const 32
    i64.shr_u
    i64.or
    i64.add
    local.get 6
    local.get 7
    i64.lt_u
    i64.extend_i32_u
    i64.add
    local.get 4
    local.get 1
    i64.mul
    local.get 3
    local.get 2
    i64.mul
    i64.add
    i64.add
    i64.store offset=8)
  (func $memcpy (type 11) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN17compiler_builtins3mem6memcpy17hcbb99ce7957f8f29E)
  (func $_ZN17compiler_builtins3mem6memcpy17hcbb99ce7957f8f29E (type 11) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 15
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          local.tee 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.const 3
          i32.shl
          local.tee 2
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $allocate_stack (type 18)
    global.get $allocation_state
    i32.const 0
    i32.eq
    if  ;; label = @1
      i32.const 1
      global.set $allocation_state
      i32.const 0
      i32.const 0
      i32.const 8
      i32.const 65536
      call $_ZN31wasi_preview1_component_adapter5State3new12cabi_realloc17h1a20d76ab753f16cE
      i32.const 65536
      i32.add
      global.set $__stack_pointer
      i32.const 2
      global.set $allocation_state
    end)
  (global $__stack_pointer (mut i32) (i32.const 0))
  (global $internal_state_ptr (mut i32) (i32.const 0))
  (global $allocation_state (mut i32) (i32.const 0))
  (global $stderr_stream (mut i32) (i32.const 123))
  (export "cabi_import_realloc" (func $cabi_import_realloc))
  (export "cabi_export_realloc" (func $cabi_export_realloc))
  (export "fd_prestat_get" (func $fd_prestat_get))
  (export "fd_prestat_dir_name" (func $fd_prestat_dir_name))
  (export "environ_get" (func $environ_get))
  (export "environ_sizes_get" (func $environ_sizes_get))
  (export "clock_res_get" (func $clock_res_get))
  (export "clock_time_get" (func $clock_time_get))
  (export "path_remove_directory" (func $path_remove_directory))
  (export "fd_read" (func $fd_read))
  (export "fd_close" (func $fd_close))
  (export "path_unlink_file" (func $path_unlink_file))
  (export "fd_fdstat_get" (func $fd_fdstat_get))
  (export "fd_fdstat_set_flags" (func $fd_fdstat_set_flags))
  (export "fd_write" (func $fd_write))
  (export "random_get" (func $random_get))
  (export "fd_seek" (func $fd_seek))
  (export "path_open" (func $path_open))
  (export "proc_exit" (func $proc_exit)))
