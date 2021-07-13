use "collections"

type MagicFlags is Flags[(MagicNone|MagicDebug|MagicSymlink|MagicCompress|MagicDevices|MagicMimetype|MagicContinue|MagicCheck|MagicPreserveATime|MagicRaw|MagicError|MagicMimeEncoding|MagicMime|MagicApple|MagicExtension|MagicCompressTransp|MagicNoDesc|MagicNoCheckCompress|MagicNoCheckTar|MagicNoCheckSoft|MagicNoCheckApptype|MagicNoCheckElf|MagicNoCheckText|MagicNoCheckCdf|MagicNoCheckCsv|MagicNoCheckTokens|MagicNoCheckEncoding|MagicNoCheckJson), U32]
primitive MagicNone            fun value(): U32 => 0x0000000 /* No flags */
primitive MagicDebug           fun value(): U32 => 0x0000001 /* Turn on debugging */
primitive MagicSymlink         fun value(): U32 => 0x0000002 /* Follow symlinks */
primitive MagicCompress        fun value(): U32 => 0x0000004 /* Check inside compressed files */
primitive MagicDevices         fun value(): U32 => 0x0000008 /* Look at the contents of devices */
primitive MagicMimetype        fun value(): U32 => 0x0000010 /* Return the MIME type */
primitive MagicContinue        fun value(): U32 => 0x0000020 /* Return all matches */
primitive MagicCheck           fun value(): U32 => 0x0000040 /* Print warnings to stderr */
primitive MagicPreserveATime   fun value(): U32 => 0x0000080 /* Restore access time on exit */
primitive MagicRaw             fun value(): U32 => 0x0000100 /* Don't convert unprintable chars */
primitive MagicError           fun value(): U32 => 0x0000200 /* Handle ENOENT etc as real errors */
primitive MagicMimeEncoding    fun value(): U32 => 0x0000400 /* Return the MIME encoding */
primitive MagicMime            fun value(): U32 => (MagicMimetype.value() or MagicMimeEncoding.value())
primitive MagicApple           fun value(): U32 => 0x0000800 /* Return the Apple creator/type */
primitive MagicExtension       fun value(): U32 => 0x1000000 /* Return a /-separated list of * extensions */
primitive MagicCompressTransp  fun value(): U32 => 0x2000000 /* Check inside compressed files * but not report compression */
primitive MagicNoDesc          fun value(): U32 => (MagicExtension.value() or MagicMime.value() or MagicApple.value())
primitive MagicNoCheckCompress fun value(): U32 => 0x0001000 /* Don't check for compressed files */
primitive MagicNoCheckTar      fun value(): U32 => 0x0002000 /* Don't check for tar files */
primitive MagicNoCheckSoft     fun value(): U32 => 0x0004000 /* Don't check magic entries */
primitive MagicNoCheckApptype  fun value(): U32 => 0x0008000 /* Don't check application type */
primitive MagicNoCheckElf      fun value(): U32 => 0x0010000 /* Don't check for elf details */
primitive MagicNoCheckText     fun value(): U32 => 0x0020000 /* Don't check for text files */
primitive MagicNoCheckCdf      fun value(): U32 => 0x0040000 /* Don't check for cdf files */
primitive MagicNoCheckCsv      fun value(): U32 => 0x0080000 /* Don't check for CSV files */
primitive MagicNoCheckTokens   fun value(): U32 => 0x0100000 /* Don't check tokens */
primitive MagicNoCheckEncoding fun value(): U32 => 0x0200000 /* Don't check text encodings */
primitive MagicNoCheckJson     fun value(): U32 => 0x0400000 /* Don't check for JSON files */

