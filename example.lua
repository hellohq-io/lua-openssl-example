-- https://github.com/wahern/luaossl/blob/master/doc/luaossl.pdf

local cipher = require "openssl.cipher"
local rand = require "openssl.rand"

local cipher_type = "aes-256-ecb"

function binary_to_hex(string)
  return (string:gsub('.', function (char)
    return string.format('%02X', string.byte(char))
  end))
end

function hex_to_binary(string)
  return (string:gsub('..', function (char)
    return string.char(tonumber(char, 16))
  end))
end

function encrypt(string, key)
  return binary_to_hex(
    cipher.new(cipher_type)
    :encrypt(key)
    :final(string))
end

function decrypt(string, key)
  return cipher.new(cipher_type)
    :decrypt(key)
    :final(hex_to_binary(string))
end

local string = "Hello Lua!"
local key = binary_to_hex(rand.bytes(16))

local encrypted_string = encrypt(string, key)
local decrypted_string = decrypt(encrypted_string, key)

print(string.format("encrypt(string: '%s', key: '%s') => '%s'", string, key, encrypted_string))
print(string.format("decrypt(string: '%s', key: '%s') => '%s'", encrypted_string, key, decrypted_string))