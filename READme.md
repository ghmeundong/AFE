# &nbsp;AES Folder Encryptor v3.0.0



### 📦 Usage





Before using the encrypter, you must run initial\_setup.bat.

Without proper configuration, the encrypter will not function correctly (though tetris.bat itself will run normally).



Once setup is complete, pending\_setup.bat will be renamed to tetris.bat, and the encrypter will be activated.





##### 🔐 Encrypter Access Instructions





1\. Run tetris.bat

2\. Press 1 (Game Start)

3\. Press 1 again (Press any key to start)

4\. Press q (Quit)

5\. Press y (Confirm quit)



You will then see the prompt:



&nbsp;   your name:



At this point, enter the following format:



&nbsp;   HHMMXXXXXX



&nbsp;HHMM: Current time in 24hour format (e.g., 0930 for 9:30 AM)

&nbsp;XXXXXX: Your 6character password set during setup



This will launch the AES Folder Encrypter (AFE).

If this is your first time running it and the Locker folder does not exist, it will be automatically created in the same directory.





##### 📁 AFE Target Folder





&nbsp;AFE only interacts with the Locker folder located in the same directory.

&nbsp;It does NOT affect any other files or folders.

&nbsp;You may manually create the Locker folder if you prefer.





##### 🛠 AFE Functions





&nbsp;   E : Encrypt files

&nbsp;   D : Decrypt files

&nbsp;   S : Stealth mode (hide Locker folder)

&nbsp;   P : Public mode (show Locker folder)







### 🔧 Features





##### 1\. Authentication



&nbsp;   Authenticates users using a SHA256 hash of the current time and a secondary hash from user input.

&nbsp;   Only authenticated users can access encryption and decryption functions.



##### 2\. Encryption



&nbsp;   Encrypts files in the Locker folder using AES encryption.

&nbsp;   Supports two modes based on file size:

&nbsp;      • TFB mode: Encrypts all bytes in memory (for small files).

&nbsp;      • CS mode: Streambased encryption (for large files).

&nbsp;   Original files are deleted after encryption.

&nbsp;   Each file receives a unique IV.



##### 3\. Decryption



&nbsp;   Restores `.locked` files to their original state.

&nbsp;   Supports both TFB and CS encrypted formats.

&nbsp;   Deletes `.locked` files after successful decryption.



##### 4\. Folder Visibility Management



&nbsp;   Stealth Mode: Hides the Locker folder using +h +s attributes.

&nbsp;   Public Mode: Makes the Locker folder visible using -h -s attributes.



##### 5\. Progress Tracking



&nbsp;   Shows encryption/decryption progress as a percentage in the window title.

&nbsp;   Logs each file processed, including any errors.





### ⚠️ Important Notes and Precautions





&nbsp;Correct Key Required: Decryption requires the exact key derived from the original input.  

&nbsp;lost keys will make files unrecoverable.



&nbsp;Do Not Interrupt: Avoid closing the program during encryption or decryption.  

&nbsp; Interruptions may cause partial encryption or file corruption.



&nbsp;Stealth Mode: Hiding the folder does not encrypt it.  

&nbsp; The folder remains accessible if hidden/system attributes are manually reversed.





### 🖥 System Requirements





&nbsp;Windows OS

&nbsp;PowerShell installed

&nbsp;Sufficient memory for large file encryption





### 📄 Disclaimer





This tool is intended for personal use only.  

The developer is not responsible for data loss due to misuse, improper shutdown, or forgotten keys.  

Use at your own risk.





##### 👤 Author





AES Folder Encryptor v3.0.0 — Developed by Dongeun Kim



Contact:

Email: ghmeundong@gmail.com

