# lua-openssl-example

**Example of how to use `openssl` encryption and decryption in Lua.**

## Quickstart

1. Clone the repository.

```powershell
git clone https://github.com/hellohq-io/lua-openssl-example
cd lua-openssl-example
```

2. Choose between [`luacrypto`](https://github.com/mkottman/luacrypto) and [`luaossl`](https://github.com/wahern/luaossl).

```powershell
cd luaossl
```

3. Adjust `example.lua` to your liking.

4. Build the `docker` image.

```powershell
docker build --rm --tag lua-openssl-example .
```

5. Run the `docker` container.

```powershell
docker run --rm lua-openssl-example
```

6. Check the output.

```powershell
encrypt(
  type: 'aes-256-cbc',
  key: 'super-very-secret-encryption-key',
  plaintext: 'Hello Lua!'
) => 'B0F4D33A5450AFF1169A082AF693EB70AB1B5B46CCC96996B1B3C2B21A358305'

decrypt(
  type: 'aes-256-cbc',
  key: 'super-very-secret-encryption-key',
  encrypted: 'B0F4D33A5450AFF1169A082AF693EB70AB1B5B46CCC96996B1B3C2B21A358305'
) => 'Hello Lua!'
```