# Robot Framework in Vagrant

## Requirements

 * [VirtualBox](https://www.virtualbox.org)
 * [Vagrant](https://www.vagrantup.com)
 * [XQuartz](http://xquartz.macosforge.org/) (Mac OS X only)
 * [Xming](http://www.straightrunning.com/XmingNotes/) (Windows only)

## Usage

``` console
$ cd vagrant-robot-framework

$ vagrant up
# Starts the VM, maybe take a long time.

$ vagrant ssh
# Log into the VM

$ vagrant ssh -c 'pybot -d src src/example/example.robot'
# Run example test

$ vagrant ssh -c 'pybot -d src src/example/example.robot' -- -x
# Run example test in headless mode

$ vagrant ssh -c 'ride.py'
# Open Ride

$ vagrant ssh -c 'firefox'
# Open Firefox

$ vagrant ssh -c 'gedit'
# Open Text Editor

$ vagrant ssh -c 'nautilus'
# Open File Browser

```

## What's Inside?

 * Python 2.7
 * pip
 * VirtualEnv
 * Robot Framework 2.8.6
 * Selenium2Library 1.6.0
 * Firefox
 * Xvfb
 * wxgtk
 * Geckodriver 0.21.0 - Firefox Selenium Web Driver
 * RIDE - Robot IDE
 * Gedit
 * Nautilus - File Browser

