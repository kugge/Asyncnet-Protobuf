#
# Licence at
# https://github.com/Kugge/Helium
#

# This can be imported or included.
# Imported is better since we don't need readbyte.

## This act as an Asyncnet extension for Protocol Buffer (Big Endian)
import asyncnet
import asyncdispatch


proc readByte(client: AsyncSocket): Future[int] {.async.} =
  ## Read a single byte from client
  ## Args:
  ## - **client**: AsyncSocket from asyncnet
  let raw: string = await client.recv(1)
  return int(raw[0])

proc readInt*(client: AsyncSocket): Future[int] {.async.} =
  ## Read an int stored in both VarInt and VarLong format using decoding
  ## *[Google Protocol Buffers](http://code.google.com/apis/protocolbuffers/docs/encoding.html)*
  ## Args:
  ## - **client**: AsyncSocket from asyncnet
  var decoded: int = 0 # The number
  for i in 0..10:
    let b: int = await client.readByte() # Buffer
    decoded += (b and 0x7F) shl (7 * i)
    if (b and 0x80) == 0: break
  return decoded

proc readString*(client: AsyncSocket): Future[string] {.async.} =
  ## Read a string with its VarInt length
  ## Args:
  ## - **client**: AsyncSocket from asyncnet
  return await client.recv(await client.readInt())

proc readUShort*(client: AsyncSocket): Future[int] {.async.} =
  ## Read an unsigned short
  ## Args:
  ## - **client**: AsyncSocket from asyncnet
  let raw: string = await client.recv(2) # Receive 2 bytes: int8 x int8
  return (int(raw[0]) shl 8) or int(raw[1])

proc readLong*(client: AsyncSocket): Future[int] {.async.} =
  ## Read a Long (int64)
  ## Args:
  ## - **client**: AsyncSocket from asyncnet
  let raw: string = await client.recv(8) # Receive 8 bytes: int64
  return 0 #TODO

func writeInt*(value: int): string =
  ## Write an int stored in VarInt/VarLong format using encoding
  ## *[Google Protocol Buffers](http://code.google.com/apis/protocolbuffers/docs/encoding.html)*
  ## Args:
  ## - **value**: Decoded Number
  if value <= 0:
    return ""
  else:
    let eval: int = if (value shr 7) > 0: 0x80 else: 0
    return $char(value and 0x7F + eval) &  writeInt(value shr 7)

template writeString*(text: string): string =
  ## Write a string with its VarInt length
  ## Args:
  ## - **text**: Decoded text
  writeInt(text.len) & text

template writeUShort*(short: int): string =
  ## Convert an unsigned short to bytes
  ## Args:
  ## - **short**: Decoded Unsigned Short
  $char((short shr 8) and 0xFF) & $char(short and 0xFF)

template writeLong*(long: int): string =
  ## Convert a Long to bytes
  ## Args:
  ## - **long**: Decoded Long
  "00000000" #TODO

template writeJson*(json: JsonNode): string =
  ## Convert a `JsonNode` to bytes
  ## Args:
  ## - **json**: JsonNode object
  $json
