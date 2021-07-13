use "magic"

actor Main
  new create(env: Env) =>
    try
      let magic: PonyMagic = PonyMagic(MagicFlags
                             .>set(MagicApple)
      )?
      let s: String = magic.file("../../../ROCKET.jpg")
      env.out.print(s)
    else
      env.out.print("I failed somewhere - oopsie")
    end


