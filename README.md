# lua-openssl-example

**Example of how to use `openssl` encryption and decryption in Lua.**

## Quickstart

1. Adjust `example.lua` to your liking.

2. Build the `docker` image.

```powershell
docker build --rm --tag lua-openssl-example .
```

3. Run the `docker` container.

```powershell
docker run --rm lua-openssl-example
```

4. Check the output.

```powershell
encrypt(string: 'Hello Lua!', key: '42AFE8F795308BCC6B0BA4C8CC32E9FA') => 'D767915C7DDAD3E0E9DD15FB480287D1'
decrypt(string: 'D767915C7DDAD3E0E9DD15FB480287D1', key: '42AFE8F795308BCC6B0BA4C8CC32E9FA') => 'Hello Lua!'
```