sss2d.a : SSS_Application.o SSS_Scene.o SSS_Sprite.o
	ar rcs sss2d.a SSS_Application.o SSS_Scene.o SSS_Sprite.o

SSS_Application.o: SSS_Application.cpp SSS_Application.h SSS_Base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdint \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++config.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/os_defines.h \
  /usr/include/features.h /usr/include/stdc-predef.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/cpu_defines.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstddef \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stddef.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/__stddef_max_align_t.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/memory \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_algobase.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/functexcept.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cpp_type_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/type_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/numeric_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_pair.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/move.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/concept_check.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/type_traits \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_types.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_funcs.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/debug/debug.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/ptr_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/predefined_ops.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/new_allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/new \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/exception \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/atomic_lockfree_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/nested_exception.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/memoryfwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_construct.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/alloc_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/alloc_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_uninitialized.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_tempbuf.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_raw_storage_iter.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/typeinfo \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/hash_bytes.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/iosfwd \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stringfwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/postypes.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cwchar \
  /usr/include/wchar.h /usr/include/stdio.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdarg.h \
  /usr/include/xlocale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/atomicity.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/gthr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/gthr-default.h \
  /usr/include/pthread.h /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap-16.h /usr/include/sched.h \
  /usr/include/time.h /usr/include/x86_64-linux-gnu/bits/sched.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/setjmp.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/atomic_word.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/concurrence.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_function.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward/binders.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/uses_allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/functional \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/tuple \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/utility \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_relops.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/initializer_list \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/array \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/stdexcept \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/string \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/char_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/localefwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++locale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/clocale \
  /usr/include/locale.h /usr/include/x86_64-linux-gnu/bits/locale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cctype \
  /usr/include/ctype.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/ostream_insert.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cxxabi_forced.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/range_access.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/basic_string.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/string_conversions.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdlib \
  /usr/include/stdlib.h /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/sigset.h \
  /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdio \
  /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cerrno \
  /usr/include/errno.h /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/functional_hash.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/basic_string.tcc \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/unique_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr_base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocated_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/aligned_buffer.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr_atomic.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/atomic_base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward/auto_ptr.h \
  /usr/include/SDL2/SDL.h /usr/include/SDL2/SDL_main.h \
  /usr/include/SDL2/SDL_stdinc.h /usr/include/SDL2/SDL_config.h \
  /usr/include/SDL2/SDL_platform.h /usr/include/SDL2/begin_code.h \
  /usr/include/SDL2/close_code.h /usr/include/string.h \
  /usr/include/strings.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/inttypes.h \
  /usr/include/inttypes.h /usr/include/math.h \
  /usr/include/x86_64-linux-gnu/bits/math-vector.h \
  /usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h \
  /usr/include/x86_64-linux-gnu/bits/huge_val.h \
  /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
  /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
  /usr/include/x86_64-linux-gnu/bits/inf.h \
  /usr/include/x86_64-linux-gnu/bits/nan.h \
  /usr/include/x86_64-linux-gnu/bits/mathdef.h \
  /usr/include/x86_64-linux-gnu/bits/mathcalls.h \
  /usr/include/x86_64-linux-gnu/bits/mathinline.h /usr/include/iconv.h \
  /usr/include/SDL2/SDL_assert.h /usr/include/SDL2/SDL_atomic.h \
  /usr/include/SDL2/SDL_audio.h /usr/include/SDL2/SDL_error.h \
  /usr/include/SDL2/SDL_endian.h /usr/include/SDL2/SDL_mutex.h \
  /usr/include/SDL2/SDL_thread.h /usr/include/SDL2/SDL_rwops.h \
  /usr/include/SDL2/SDL_clipboard.h /usr/include/SDL2/SDL_cpuinfo.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/mmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/xmmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/mm_malloc.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/emmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/f16cintrin.h \
  /usr/include/SDL2/SDL_events.h /usr/include/SDL2/SDL_video.h \
  /usr/include/SDL2/SDL_pixels.h /usr/include/SDL2/SDL_rect.h \
  /usr/include/SDL2/SDL_surface.h /usr/include/SDL2/SDL_blendmode.h \
  /usr/include/SDL2/SDL_keyboard.h /usr/include/SDL2/SDL_keycode.h \
  /usr/include/SDL2/SDL_scancode.h /usr/include/SDL2/SDL_mouse.h \
  /usr/include/SDL2/SDL_joystick.h \
  /usr/include/SDL2/SDL_gamecontroller.h /usr/include/SDL2/SDL_quit.h \
  /usr/include/SDL2/SDL_gesture.h /usr/include/SDL2/SDL_touch.h \
  /usr/include/SDL2/SDL_filesystem.h /usr/include/SDL2/SDL_haptic.h \
  /usr/include/SDL2/SDL_hints.h /usr/include/SDL2/SDL_loadso.h \
  /usr/include/SDL2/SDL_log.h /usr/include/SDL2/SDL_messagebox.h \
  /usr/include/SDL2/SDL_power.h /usr/include/SDL2/SDL_render.h \
  /usr/include/SDL2/SDL_system.h /usr/include/SDL2/SDL_timer.h \
  /usr/include/SDL2/SDL_version.h /usr/include/SDL2/SDL_image.h \
  /usr/include/SDL2/SDL_ttf.h SSS_Scene.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/list \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_list.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/list.tcc \
  SSS_Sprite.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/deque \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_deque.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/deque.tcc
	clang++  -O2 -W -Wall -fPIC -std=c++11   -c SSS_Application.cpp

SSS_Scene.o: SSS_Scene.cpp SSS_Scene.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/list \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_algobase.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++config.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/os_defines.h \
  /usr/include/features.h /usr/include/stdc-predef.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/cpu_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/functexcept.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cpp_type_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/type_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/numeric_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_pair.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/move.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/concept_check.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/type_traits \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_types.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_funcs.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/debug/debug.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/ptr_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/predefined_ops.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/new_allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/new \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/exception \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/atomic_lockfree_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/nested_exception.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/memoryfwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/range_access.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/initializer_list \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_list.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/list.tcc \
  SSS_Base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdint \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdint.h \
  /usr/include/stdint.h /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstddef \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stddef.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/__stddef_max_align_t.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/memory \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_construct.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/alloc_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/alloc_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_uninitialized.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_tempbuf.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_raw_storage_iter.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/typeinfo \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/hash_bytes.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/iosfwd \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stringfwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/postypes.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cwchar \
  /usr/include/wchar.h /usr/include/stdio.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdarg.h \
  /usr/include/xlocale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/atomicity.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/gthr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/gthr-default.h \
  /usr/include/pthread.h /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap-16.h /usr/include/sched.h \
  /usr/include/time.h /usr/include/x86_64-linux-gnu/bits/sched.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/setjmp.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/atomic_word.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/concurrence.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_function.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward/binders.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/uses_allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/functional \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/tuple \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/utility \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_relops.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/array \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/stdexcept \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/string \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/char_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/localefwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++locale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/clocale \
  /usr/include/locale.h /usr/include/x86_64-linux-gnu/bits/locale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cctype \
  /usr/include/ctype.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/ostream_insert.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cxxabi_forced.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/basic_string.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/string_conversions.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdlib \
  /usr/include/stdlib.h /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/sigset.h \
  /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdio \
  /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cerrno \
  /usr/include/errno.h /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/functional_hash.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/basic_string.tcc \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/unique_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr_base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocated_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/aligned_buffer.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr_atomic.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/atomic_base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward/auto_ptr.h \
  /usr/include/SDL2/SDL.h /usr/include/SDL2/SDL_main.h \
  /usr/include/SDL2/SDL_stdinc.h /usr/include/SDL2/SDL_config.h \
  /usr/include/SDL2/SDL_platform.h /usr/include/SDL2/begin_code.h \
  /usr/include/SDL2/close_code.h /usr/include/string.h \
  /usr/include/strings.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/inttypes.h \
  /usr/include/inttypes.h /usr/include/math.h \
  /usr/include/x86_64-linux-gnu/bits/math-vector.h \
  /usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h \
  /usr/include/x86_64-linux-gnu/bits/huge_val.h \
  /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
  /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
  /usr/include/x86_64-linux-gnu/bits/inf.h \
  /usr/include/x86_64-linux-gnu/bits/nan.h \
  /usr/include/x86_64-linux-gnu/bits/mathdef.h \
  /usr/include/x86_64-linux-gnu/bits/mathcalls.h \
  /usr/include/x86_64-linux-gnu/bits/mathinline.h /usr/include/iconv.h \
  /usr/include/SDL2/SDL_assert.h /usr/include/SDL2/SDL_atomic.h \
  /usr/include/SDL2/SDL_audio.h /usr/include/SDL2/SDL_error.h \
  /usr/include/SDL2/SDL_endian.h /usr/include/SDL2/SDL_mutex.h \
  /usr/include/SDL2/SDL_thread.h /usr/include/SDL2/SDL_rwops.h \
  /usr/include/SDL2/SDL_clipboard.h /usr/include/SDL2/SDL_cpuinfo.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/mmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/xmmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/mm_malloc.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/emmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/f16cintrin.h \
  /usr/include/SDL2/SDL_events.h /usr/include/SDL2/SDL_video.h \
  /usr/include/SDL2/SDL_pixels.h /usr/include/SDL2/SDL_rect.h \
  /usr/include/SDL2/SDL_surface.h /usr/include/SDL2/SDL_blendmode.h \
  /usr/include/SDL2/SDL_keyboard.h /usr/include/SDL2/SDL_keycode.h \
  /usr/include/SDL2/SDL_scancode.h /usr/include/SDL2/SDL_mouse.h \
  /usr/include/SDL2/SDL_joystick.h \
  /usr/include/SDL2/SDL_gamecontroller.h /usr/include/SDL2/SDL_quit.h \
  /usr/include/SDL2/SDL_gesture.h /usr/include/SDL2/SDL_touch.h \
  /usr/include/SDL2/SDL_filesystem.h /usr/include/SDL2/SDL_haptic.h \
  /usr/include/SDL2/SDL_hints.h /usr/include/SDL2/SDL_loadso.h \
  /usr/include/SDL2/SDL_log.h /usr/include/SDL2/SDL_messagebox.h \
  /usr/include/SDL2/SDL_power.h /usr/include/SDL2/SDL_render.h \
  /usr/include/SDL2/SDL_system.h /usr/include/SDL2/SDL_timer.h \
  /usr/include/SDL2/SDL_version.h /usr/include/SDL2/SDL_image.h \
  /usr/include/SDL2/SDL_ttf.h SSS_Application.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/deque \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_deque.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/deque.tcc \
  SSS_Sprite.h
	clang++  -O2 -W -Wall -fPIC -std=c++11   -c SSS_Scene.cpp

SSS_Sprite.o: SSS_Sprite.cpp SSS_Sprite.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/string \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++config.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/os_defines.h \
  /usr/include/features.h /usr/include/stdc-predef.h \
  /usr/include/x86_64-linux-gnu/sys/cdefs.h \
  /usr/include/x86_64-linux-gnu/bits/wordsize.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs.h \
  /usr/include/x86_64-linux-gnu/gnu/stubs-64.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/cpu_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stringfwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/memoryfwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/char_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_algobase.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/functexcept.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cpp_type_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/type_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/numeric_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_pair.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/move.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/concept_check.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/type_traits \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_types.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator_base_funcs.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/debug/debug.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_iterator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/ptr_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/predefined_ops.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/postypes.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cwchar \
  /usr/include/wchar.h /usr/include/stdio.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdarg.h \
  /usr/include/x86_64-linux-gnu/bits/wchar.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stddef.h \
  /usr/include/xlocale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdint \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/stdint.h \
  /usr/include/stdint.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/new_allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/new \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/exception \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/atomic_lockfree_defines.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/nested_exception.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/localefwd.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++locale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/clocale \
  /usr/include/locale.h /usr/include/x86_64-linux-gnu/bits/locale.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/iosfwd \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cctype \
  /usr/include/ctype.h /usr/include/x86_64-linux-gnu/bits/types.h \
  /usr/include/x86_64-linux-gnu/bits/typesizes.h /usr/include/endian.h \
  /usr/include/x86_64-linux-gnu/bits/endian.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap.h \
  /usr/include/x86_64-linux-gnu/bits/byteswap-16.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/ostream_insert.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/cxxabi_forced.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_function.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward/binders.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/range_access.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/initializer_list \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/basic_string.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/atomicity.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/gthr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/gthr-default.h \
  /usr/include/pthread.h /usr/include/sched.h /usr/include/time.h \
  /usr/include/x86_64-linux-gnu/bits/sched.h \
  /usr/include/x86_64-linux-gnu/bits/time.h \
  /usr/include/x86_64-linux-gnu/bits/timex.h \
  /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h \
  /usr/include/x86_64-linux-gnu/bits/setjmp.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/atomic_word.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/alloc_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/alloc_traits.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/string_conversions.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdlib \
  /usr/include/stdlib.h /usr/include/x86_64-linux-gnu/bits/waitflags.h \
  /usr/include/x86_64-linux-gnu/bits/waitstatus.h \
  /usr/include/x86_64-linux-gnu/sys/types.h \
  /usr/include/x86_64-linux-gnu/sys/select.h \
  /usr/include/x86_64-linux-gnu/bits/select.h \
  /usr/include/x86_64-linux-gnu/bits/sigset.h \
  /usr/include/x86_64-linux-gnu/sys/sysmacros.h /usr/include/alloca.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h \
  /usr/include/x86_64-linux-gnu/bits/stdlib-float.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdio \
  /usr/include/libio.h /usr/include/_G_config.h \
  /usr/include/x86_64-linux-gnu/bits/stdio_lim.h \
  /usr/include/x86_64-linux-gnu/bits/sys_errlist.h \
  /usr/include/x86_64-linux-gnu/bits/stdio.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cerrno \
  /usr/include/errno.h /usr/include/x86_64-linux-gnu/bits/errno.h \
  /usr/include/linux/errno.h /usr/include/x86_64-linux-gnu/asm/errno.h \
  /usr/include/asm-generic/errno.h /usr/include/asm-generic/errno-base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/functional_hash.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/hash_bytes.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/basic_string.tcc \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/list \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_list.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/list.tcc \
  SSS_Base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstddef \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/__stddef_max_align_t.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/memory \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_construct.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_uninitialized.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_tempbuf.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_raw_storage_iter.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/typeinfo \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/concurrence.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/uses_allocator.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/functional \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/tuple \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/utility \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_relops.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/array \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/stdexcept \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/unique_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr_base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/allocated_ptr.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/ext/aligned_buffer.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/shared_ptr_atomic.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/atomic_base.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/backward/auto_ptr.h \
  /usr/include/SDL2/SDL.h /usr/include/SDL2/SDL_main.h \
  /usr/include/SDL2/SDL_stdinc.h /usr/include/SDL2/SDL_config.h \
  /usr/include/SDL2/SDL_platform.h /usr/include/SDL2/begin_code.h \
  /usr/include/SDL2/close_code.h /usr/include/string.h \
  /usr/include/strings.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/inttypes.h \
  /usr/include/inttypes.h /usr/include/math.h \
  /usr/include/x86_64-linux-gnu/bits/math-vector.h \
  /usr/include/x86_64-linux-gnu/bits/libm-simd-decl-stubs.h \
  /usr/include/x86_64-linux-gnu/bits/huge_val.h \
  /usr/include/x86_64-linux-gnu/bits/huge_valf.h \
  /usr/include/x86_64-linux-gnu/bits/huge_vall.h \
  /usr/include/x86_64-linux-gnu/bits/inf.h \
  /usr/include/x86_64-linux-gnu/bits/nan.h \
  /usr/include/x86_64-linux-gnu/bits/mathdef.h \
  /usr/include/x86_64-linux-gnu/bits/mathcalls.h \
  /usr/include/x86_64-linux-gnu/bits/mathinline.h /usr/include/iconv.h \
  /usr/include/SDL2/SDL_assert.h /usr/include/SDL2/SDL_atomic.h \
  /usr/include/SDL2/SDL_audio.h /usr/include/SDL2/SDL_error.h \
  /usr/include/SDL2/SDL_endian.h /usr/include/SDL2/SDL_mutex.h \
  /usr/include/SDL2/SDL_thread.h /usr/include/SDL2/SDL_rwops.h \
  /usr/include/SDL2/SDL_clipboard.h /usr/include/SDL2/SDL_cpuinfo.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/mmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/xmmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/mm_malloc.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/emmintrin.h \
  /usr/lib/llvm-3.8/bin/../lib/clang/3.8.0/include/f16cintrin.h \
  /usr/include/SDL2/SDL_events.h /usr/include/SDL2/SDL_video.h \
  /usr/include/SDL2/SDL_pixels.h /usr/include/SDL2/SDL_rect.h \
  /usr/include/SDL2/SDL_surface.h /usr/include/SDL2/SDL_blendmode.h \
  /usr/include/SDL2/SDL_keyboard.h /usr/include/SDL2/SDL_keycode.h \
  /usr/include/SDL2/SDL_scancode.h /usr/include/SDL2/SDL_mouse.h \
  /usr/include/SDL2/SDL_joystick.h \
  /usr/include/SDL2/SDL_gamecontroller.h /usr/include/SDL2/SDL_quit.h \
  /usr/include/SDL2/SDL_gesture.h /usr/include/SDL2/SDL_touch.h \
  /usr/include/SDL2/SDL_filesystem.h /usr/include/SDL2/SDL_haptic.h \
  /usr/include/SDL2/SDL_hints.h /usr/include/SDL2/SDL_loadso.h \
  /usr/include/SDL2/SDL_log.h /usr/include/SDL2/SDL_messagebox.h \
  /usr/include/SDL2/SDL_power.h /usr/include/SDL2/SDL_render.h \
  /usr/include/SDL2/SDL_system.h /usr/include/SDL2/SDL_timer.h \
  /usr/include/SDL2/SDL_version.h /usr/include/SDL2/SDL_image.h \
  /usr/include/SDL2/SDL_ttf.h SSS_Scene.h SSS_Application.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/deque \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/stl_deque.h \
  /usr/bin/../lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/deque.tcc
	clang++  -O2 -W -Wall -fPIC -std=c++11   -c SSS_Sprite.cpp

