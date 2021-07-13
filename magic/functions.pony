use "lib:magic"
primitive PMagic
  fun pmagic_open(flags: U32): NullablePointer[Magicset] =>
    @magic_open(flags)

  fun pmagic_close(magic: NullablePointer[Magicset] tag): None =>
    @magic_close(magic)


  fun pmagic_getpath(pparg0: String, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @magic_getpath(pparg0.cstring(), pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun pmagic_file(pparg0: NullablePointer[Magicset] tag, pparg1: String): String =>
    var pcstring: Pointer[U8] = @magic_file(pparg0, pparg1.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun pmagic_descriptor(pparg0: NullablePointer[Magicset] tag, pparg1: I32): String =>
    var pcstring: Pointer[U8] = @magic_descriptor(pparg0, pparg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun pmagic_buffer(pparg0: NullablePointer[Magicset] tag, pparg1: Pointer[None] tag, pparg2: U64): String =>
    var pcstring: Pointer[U8] = @magic_buffer(pparg0, pparg1, pparg2)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun pmagic_error(pparg0: NullablePointer[Magicset] tag): String =>
    var pcstring: Pointer[U8] = @magic_error(pparg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p

  fun pmagic_getflags(pparg0: NullablePointer[Magicset] tag): I32 =>
    @magic_getflags(pparg0)


  fun pmagic_setflags(pparg0: NullablePointer[Magicset] tag, pparg1: I32): I32 =>
    @magic_setflags(pparg0, pparg1)


  fun pmagic_version(): I32 =>
    @magic_version()


  fun pmagic_load(pparg0: NullablePointer[Magicset] tag): I32 =>
    @magic_load(pparg0, Pointer[U8])

  fun pmagic_load_from_file(pparg0: NullablePointer[Magicset] tag, filename: String): I32 =>
    @magic_load(pparg0, filename.cstring())


  fun pmagic_load_buffers(pparg0: NullablePointer[Magicset] tag, pparg1: NullablePointer[Pointer[None]] tag, pparg2: Pointer[U64] tag, pparg3: U64): I32 =>
    @magic_load_buffers(pparg0, pparg1, pparg2, pparg3)


  fun pmagic_compile(pparg0: NullablePointer[Magicset] tag, pparg1: String): I32 =>
    @magic_compile(pparg0, pparg1.cstring())


  fun pmagic_check(pparg0: NullablePointer[Magicset] tag, pparg1: String): I32 =>
    @magic_check(pparg0, pparg1.cstring())


  fun pmagic_list(pparg0: NullablePointer[Magicset] tag, pparg1: String): I32 =>
    @magic_list(pparg0, pparg1.cstring())


  fun pmagic_errno(pparg0: NullablePointer[Magicset] tag): I32 =>
    @magic_errno(pparg0)


  fun pmagic_setparam(pparg0: NullablePointer[Magicset] tag, pparg1: I32, pparg2: Pointer[None] tag): I32 =>
    @magic_setparam(pparg0, pparg1, pparg2)


  fun pmagic_getparam(pparg0: NullablePointer[Magicset] tag, pparg1: I32, pparg2: Pointer[None] tag): I32 =>
    @magic_getparam(pparg0, pparg1, pparg2)


