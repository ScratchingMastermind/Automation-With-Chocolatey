# Automating Programs Installations with Chocolatey

A fresh install of windows is good and all, but this feeling of joy comes to an end, as we realize that we have to download and install all the required programs.

We usually start by opening Edge Browser, installing our favorite browser, and then scavenge all over the internet for the programs we need to install.

This procedure is rather cumbersome. We no longer need to waste time looking for software all over the internet. All of this can be done with a package manager like _Chocolatey_.

# How to use

1. Download the `main_script.ps1` file locally.
1. Populate the `$packagesList` with your desired apps separated with commas. For example:
   ```powershell
   #List of Packages
   $packagesList = "brave,deezer,notepadplusplus,discord,7zip,vscodium"
   ```
1. Save the file.

1. On your current folder, right-click and then click on `Open in terminal`

1. Before running the script:

   1. Check _ExecutionPolicy_ by running:
      `Get-ExecutionPolicy`  
      If it returns `Restricted`, then run `Set-ExecutionPolicy RemoteSigned` or `Set-ExecutionPolicy Bypass -Scope Process`.

1. Then run: `.\main_script.ps1` and sit back.

# Bonus Script

The `bonus.ps1` uses Github API to run this Repo remotely. Extending the capabilities of `main_script.ps1`. For more information refer to the [Automating Programs Installations with Chocolatey - Part 2](https://passivetechie.com/programs-install-with-chocolatey-part-2/)
