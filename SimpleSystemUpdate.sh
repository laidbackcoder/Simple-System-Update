#! /bin/sh

#-------------------------------------------------------------------
# FILE NAME: SimpleSystemUpdate.sh
# VERSION:   2.1.0
# RELEASED:  30-APR-2020
# URL:       https://github.com/laidbackcoder/Simple-System-Update
#-------------------------------------------------------------------


clear


echo "\e[1;32m "
echo "SIMPLE"
echo "  _____   _____ _____ ___ __  __   _   _ ___ ___   _ _____ ___ "
echo " / __\\ \\ / / __|_   _| __|  \\/  | | | | | _ \\   \\ /_\\_   _| __|"
echo " \\__ \\\\\ V /\\__ \\ | | | _|| |\\/| | | |_| |  _/ |) / _ \\| | | _| "
echo " |___/ |_| |___/ |_| |___|_|  |_|  \\___/|_| |___/_/ \\_\\_| |___|"
echo "                                                               " 
echo "VERSION: 2.1.0 (30-APR-2020)"


#----------------------------------
# 1. Update Repository Listings
#----------------------------------
echo "\e[1;34m"
echo "\nUpdating Repository Listings..."
echo "\e[0m"
sudo apt-get update


#----------------------------------
# 2. Upgrade Packages
#----------------------------------
echo "\e[1;34m"
echo "\nUpgrading Packages..."
echo "\e[0m"
sudo apt-get upgrade -y


#----------------------------------
# 3. Upgrade Distribution
#----------------------------------
echo "\e[1;34m"
echo "\nUpgrading Distribution..."
echo "\e[0m"
sudo apt-get dist-upgrade -y


#----------------------------------
# 4. Remove Unused Packages
# 
# NOTE: No -y so as to prompt user 
# to confirm removal of packages.
#----------------------------------
echo "\e[1;34m"
echo "\nRemoving Unused Packages..."
echo "\e[0m"
sudo apt-get autoremove


#----------------------------------
# 5. Update Snaps
#----------------------------------
echo "\e[1;34m"
echo "\nUpdating Snaps..."
echo "\e[0m"
sudo snap refresh


#----------------------------------
# 6. Upgrade OS Version
#
# NOTE: The current version needs 
# to be up-to-date before the OS 
# version can be upgraded - i.e. 
# steps 1-3.
#----------------------------------
echo "\e[1;34m"
echo "\nUpgrading OS Version..."
echo "\e[0m"
sudo do-release-upgrade