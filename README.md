# XOR Text Encryptor (Assembly)

A simple **XOR-based text encryption and decryption** program written in **x86 Assembly**, designed to run in **EMU8086**.  

This project was completed as a **school assignment** to practice low-level programming, string manipulation, and basic encryption.

---

## Features

- Reads user input from the console using DOS interrupts.
- Encrypts the input text using a XOR key.
- Displays encrypted text.
- Decrypts the text back to its original form.
- Fully compatible with EMU8086.

---

## How it Works

1. **Get Input**: Uses DOS interrupt `21h` (AH=0Ah) to read a buffered string.
2. **Encrypt**: XOR each character with a secret key.
3. **Show Encrypted Text**: Prints the encrypted string.
4. **Pause**: Waits for a key press using BIOS interrupt `16h`.
5. **Decrypt**: Applies XOR again with the same key to restore the original text.
6. **Show Decrypted Text**: Prints the original message.

---

## Usage

1. Open the `.asm` file in **EMU8086**.  
2. Assemble and run the program.  
3. Follow on-screen prompts to encrypt and decrypt text.  

---

## Learning Outcome

- Hands-on experience with **x86 Assembly** and DOS interrupts.  
- Deep understanding of **XOR logic** for symmetric encryption.  
- Practice with **buffers, loops, and character manipulation** at the byte level. 
