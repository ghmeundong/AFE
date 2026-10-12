AES Folder Encryptor v3.0.0

📦 Usage

Before using the encrypter, you must run initial_setup.bat.

Without proper configuration, the encrypter will not function correctly (though tetris.bat itself will run normally).

Once setup is complete, pending_setup.bat will be renamed to tetris.bat, and the encrypter will be activated.

🔐 Encrypter Access Instructions

1. Run tetris.bat

2. Press 1 (Game Start)

3. Press 1 again (Press any key to start)

4. Press q (Quit)

5. Press y (Confirm quit)

You will then see the prompt:

	   your name:

At this point, enter the following format:

	   HHMMXXXXXX

HHMM: Current time in 24hour format (e.g., 0930 for 9:30 AM)

XXXXXX: Your 6character password set during setup

This will launch the AES Folder Encrypter (AFE).

If this is your first time running it and the Locker folder does not exist, it will be automatically created in the same directory.

 📁 AFE Target Folder

AFE only interacts with the Locker folder located in the same directory.

It does NOT affect any other files or folders.

You may manually create the Locker folder if you prefer.

 🛠 AFE Functions

   E : Encrypt files

   D : Decrypt files

   S : Stealth mode (hide Locker folder)

   P : Public mode (show Locker folder)

 🔧 Features

 1. Authentication

   Authenticates users using a SHA256 hash of the current time and a secondary hash from user input.

   Only authenticated users can access encryption and decryption functions.

 2. Encryption

   Encrypts files in the Locker folder using AES encryption.

   Supports two modes based on file size:

      • TFB mode: Encrypts all bytes in memory (for small files).

      • CS mode: Streambased encryption (for large files).

   Original files are deleted after encryption.

   Each file receives a unique IV.

 3. Decryption

   Restores `.locked` files to their original state.

   Supports both TFB and CS encrypted formats.

   Deletes `.locked` files after successful decryption.

 4. Folder Visibility Management

   Stealth Mode: Hides the Locker folder using +h +s attributes.

   Public Mode: Makes the Locker folder visible using -h -s attributes.

 5. Progress Tracking

   Shows encryption/decryption progress as a percentage in the window title.

   Logs each file processed, including any errors.

 ⚠️ Important Notes and Precautions

Correct Key Required: Decryption requires the exact key derived from the original input.  

Lost keys will make files unrecoverable.

Do Not Interrupt: Avoid closing the program during encryption or decryption.  

 Interruptions may cause partial encryption or file corruption.

Stealth Mode: Hiding the folder does not encrypt it.  

 The folder remains accessible if hidden/system attributes are manually reversed.

 🖥 System Requirements

Windows OS

PowerShell installed

Sufficient memory for large file encryption

 📄 Disclaimer

This tool is intended for personal use only.  

The developer is not responsible for data loss due to misuse, improper shutdown, or forgotten keys.  

Use at your own risk.







Author

AES Folder Encryptor v3.0.0 — Developed by Dongeun Kim


Contact:

Instagram: @kxznv.7  

Email: ghmeundong@gmail.com

