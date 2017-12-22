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
```
sudo apt-get install zlib1g zlib1g-dev
sudo apt-get install build-essential
sudo apt-get install ettercap-gtk
```
If you get an error, look up the install code for your Linux OS.

### Mac:

To install on Mac OS you need to use Homebrew. Install Homebrew with this code:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
Then, install Ettercap with Homebrew:
```
brew install ettercap
```
If you want the GUI version of Ettercap, use this code (we only need the standard version for
this attack):
```
brew install ettercap --with-gtk+
```

Ok, now that we have Ettercap installed, let's proceed.

## Setting it up

Modify the "DosAttack.elt" file with any text editor. Where it says "TARGET IP" twice, change with
your victim's local IP. I recommend using nmap to find the IP.

```
if (ip.src == 'TARGET IP' || ip.dst == 'TARGET IP')
```

## Running

Once you have finished editing the file, open the terminal and navigate to the cloned repository's directory.
Then, execute this code:

```
./DosAttackAutorun
```
This will run the script. It will compile the file that we edited before and start the attack.
It will ask you for the target IP again, input the same one you put in the file. It will then ask
you for your network interface. To find out what interface you have, use the "ifconfig" command.
It is usually "wlan0" or "eth0", or if you are using mac, "en0", but check anyway.

## Results

The script will make Ettercap send a ton of packets to the target device, and it will deny it's service
(that's what DoS stands for).

## Version and Contributing

Current version is v1.01

If you want to contribute create a pull request on whatever you want to modify and i will
get back as soon as i can.

## License

This project is licensed under the Apache 2 License - see the [LICENSE](LICENSE) file for details

By Marti157
