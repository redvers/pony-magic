class PonyMagic
  var magicset: NullablePointer[Magicset]

  new create(flags: MagicFlags) ? =>
    magicset = PMagic.pmagic_open(flags.value())
    let i: I32 = PMagic.pmagic_load(magicset)
    if (i != 0) then
      error
    else
      return
    end

  new create_with_file(flags: MagicFlags, magicfile: String) ? =>
    magicset = PMagic.pmagic_open(flags.value())
    let i: I32 = PMagic.pmagic_load_from_file(magicset, magicfile)
    if (i != 0) then
      error
    else
      return
    end

  fun close() =>
    PMagic.pmagic_close(magicset)

  fun file(filename: String): String =>
    PMagic.pmagic_file(magicset, filename)

  fun perror(): String =>
    PMagic.pmagic_error(magicset)


