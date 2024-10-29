**Setting Background and Lock Screen with Microsoft 365 Business Premium and Intune**

Setting up a custom background image and lock screen through Intune’s Settings Catalog is straightforward for Windows Enterprise users. However, companies using Microsoft 365 Business Premium don’t have that direct option in Intune. Fortunately, there’s a workaround: you can use a Win32 package to manually set these features without needing a web server for the image storage. Here’s a guide to help.

---

### Table of Contents

1. Description
2. Set Background and Lock Screen
3. Update Background or Lock Screen
4. Remove Background and Lock Screen
5. Summary

---

**Description**

With this Win32 package, you can configure a desktop background and/or lock screen on Windows 10/11 devices using images (JPG or PNG) included in the package, which can then be distributed via Intune. The package and an example are available on GitHub.

**Step-by-Step Guide to Adjust Background and Lock Screen**

1. **Add Your Image Files**  
   - Place your desired images in the “Data” folder.
   - Update `install.ps1` in lines 6 and 7 with the image names.

2. **Create the Intunewin Package**
   - Download the Microsoft Win32 Content Prep Tool.
   - Run `IntuneWinAppUtil.exe`, input the package path, specify `install.ps1`, and create the `.intunewin` file.
   - Upload the `.intunewin` file to Intune: **Intune > Apps > Windows apps > +Add**.

3. **Configure Installation Commands**  
   - **Install Command:**  
     `%SystemRoot%\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -command .\install.ps1`
   - **Uninstall Command:**  
     `%SystemRoot%\sysnative\WindowsPowerShell\v1.0\powershell.exe -executionpolicy bypass -command .\uninstall.ps1`

4. **Detection Rules**  
   - Upload `check.ps1` as the detection rule.

5. **Assign to Device Groups**  
   - Assign the app to your desired device group. Once installed, the wallpaper and lock screen will be set and unchangeable by users.

**Updating Background or Lock Screen**

To update the package, adjust the version in `install.ps1` and `check.ps1`, recreate the `.intunewin`, and replace the existing package in Intune.

**Removing Background and Lock Screen**

To remove, change the app’s assignment to “Uninstall” under the “Assignments” section in Intune.

---

**Summary**

Setting a custom wallpaper and lock screen for devices with Microsoft 365 Business Premium is possible with a Win32 package. Though not as seamless as an Enterprise license, this workaround avoids needing a web server to host images. Once configured, it’s effective and can easily be managed through Intune.