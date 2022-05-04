# Blue's Magic Morphing Machine

![Platform: Windows](https://img.shields.io/badge/platform-windows-lightgrey) ![License: MIT](https://img.shields.io/github/license/SecureCaptain/blues-magic-morphing-machine)

[AutoHotKey](https://www.autohotkey.com) script to automate morphing personnel in SCP:RP.

This script is intended for use by SCP:SR and other Serious RP factions.

For safety purposes, the script is not distributed compiled and the AutoHotKey EXE file is not included in distribution. By all means, I suggest you **ensure this script is safe** to run before downloading and running it.

## Using the script

Once you have the script executed, you can begin morphing. Pressing "Home" will open up a menu where you can select the desired morph. **Try to only change the dropdown menus in a single category** or it will be confused as to which morph you want to pick. To exit the script, press "F12". Note that pressing these keys may require you to hold down a "fn" or "alt" key on your keyboard depending on its design.

## Downloading the script

On the GitHub page, there should be a button in the top right labeled "**Code**". Click that, and a popup should appear. Click "**Download ZIP**". Alternatively, click [here](https://github.com/SecureCaptain/blues-magic-morphing-machine/archive/refs/heads/main.zip). Once the ZIP file has been downloaded, locate it (probably in your Downloads folder), and extract it (right click the file named "blues-magic-morphing-machine-master" or something similar and click "Extract All"). Somewhere inside the extracted folder there should be a file named "SCPRPMorphsGraphical.ahk" (you may have to open some folders within the folder to find it).

## Running the script

To run the program from source you will need an AutoHotKey installation or executable, both which can be downloaded from the website. Depending on your desired use, you may want a portable installation of AutoHotKey or to install AutoHotKey to your computer. I personally reccomend you acquire a portable installation unless you plan to use AutoHotKey for any other purposes.

#### Portable installation

Go to [this website](https://www.autohotkey.com/download/) and click **"Download AutoHotKey.zip"**, **NOT "Download AutoHotKey Installer"**. Locate the downloaded .ZIP file (probably in your "Downloads" folder) and extract its contents (right click the downloaded file and click "extract all"). Inside the extracted folder, there should be multiple .EXE files (you might not be able to see the ".exe" at the end, these files are named "AutoHotKeyA32", "AutoHotKeyU32", and "AutoHotKeyU64"). 

Depending on your version of Windows, you will need a different EXE file. If your Windows system is 64 bit, you will need "AutoHotKeyU64.exe", if your system is 32 bit, you will need "AutoHotKeyU32.exe". **If you don't know which one your system is**, your system is probably 64 bit if it is a newer PC and possibly 32 if it's older - resources for finding out can be found [**here**](https://support.microsoft.com/en-us/windows/32-bit-and-64-bit-windows-frequently-asked-questions-c6ca9541-8dce-4d48-0415-94a3faa2e13d).

Once you've determined which EXE file you need, either "AutoHotKeyU64.exe" or "AutoHotKeyU32.exe", copy the EXE file and paste it into the same folder with "SCPRPMorphsGraphical.ahk". Then, rename the EXE file to "SCPRPMorphsGraphical" (if your system shows you file extensions make sure the extension stays as .exe). Then, run the EXE to run the program and press the "HOME" button on your keyboard to begin morphing. 

### Global Installation
Go to [this website](https://www.autohotkey.com/download/) and click **"Download AutoHotKey Installer**". Open up the exe file that the installer comes with and follow the instructions, using whatever default suggestions it has. Once the installation has finished, you should be able to simply double click on the "SCPRPMorphsGraphical.ahk" file to run it. Press the "HOME" button on your keyboard to begin morphing.

## Compiling to standalone EXE

If you have AutoHotKey installed on your computer (not a portable installation but actually installed on your computer), you can right click the .ahk file "SCPRPMorphsGraphical.ahk". In the menu that appears, there should be an option to "Compile Script" or "Compile Script (GUI)". Just click "Compile Script" unless you really know what you're doing. It should create a new .exe file (that will delete and replace the other .exe file due to them having the same name) with the name "SCPRPMorphsGraphical". You can simply execute (AND DISTRIBUTE AT YOUR OWN AND USER'S OWN RISK ONLY) this file without having to install AHK at all! If you so choose, you are able to delete the "SCPRPMorphsGraphical.ahk" file at this point as the .exe file is standalone, although you CANNOT move the .exe file from its folder as it depends on the JSON.ahk library to run.
