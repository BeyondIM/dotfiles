#!/usr/bin/env bash
#Enable Audio codec power management
echo '1' > '/sys/module/snd_hda_intel/parameters/power_save'
#Enable SATA link power management for host1
echo 'min_power' > '/sys/class/scsi_host/host1/link_power_management_policy'
#Enable SATA link power management for host2
echo 'min_power' > '/sys/class/scsi_host/host2/link_power_management_policy'
#Enable SATA link power management for host0
echo 'min_power' > '/sys/class/scsi_host/host0/link_power_management_policy'
#VM writeback timeout
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'
#NMI watchdog should be turned off
echo '0' > '/proc/sys/kernel/nmi_watchdog'
#Autosuspend for USB device USB Optical Mouse [PixArt]
#echo 'auto' > '/sys/bus/usb/devices/1-3/power/control'
#Runtime PM for I2C Adapter i2c-3 (i915 gmbus dpd)
echo 'auto' > '/sys/bus/i2c/devices/i2c-3/device/power/control'
#Autosuspend for unknown USB device 1-8 (8087:0a2a)
echo 'auto' > '/sys/bus/usb/devices/1-8/power/control'
#Runtime PM for I2C Adapter i2c-1 (i915 gmbus dpc)
echo 'auto' > '/sys/bus/i2c/devices/i2c-1/device/power/control'
#Runtime PM for I2C Adapter i2c-2 (i915 gmbus dpb)
echo 'auto' > '/sys/bus/i2c/devices/i2c-2/device/power/control'
#Autosuspend for unknown USB device 1-9 (138a:0011)
echo 'auto' > '/sys/bus/usb/devices/1-9/power/control'
#Runtime PM for PCI Device Intel Corporation Device 5916
echo 'auto' > '/sys/bus/pci/devices/0000:00:02.0/power/control'
#Runtime PM for PCI Device Intel Corporation Device 9d71
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.3/power/control'
#Runtime PM for PCI Device Intel Corporation Device 5904
echo 'auto' > '/sys/bus/pci/devices/0000:00:00.0/power/control'
#Runtime PM for PCI Device Intel Corporation Sunrise Point-LP Thermal subsystem
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.2/power/control'
#Runtime PM for PCI Device Intel Corporation Sunrise Point-LP USB 3.0 xHCI Controller
echo 'auto' > '/sys/bus/pci/devices/0000:00:14.0/power/control'
#Runtime PM for PCI Device Intel Corporation Sunrise Point-LP SATA Controller [AHCI mode]
echo 'auto' > '/sys/bus/pci/devices/0000:00:17.0/power/control'
#Runtime PM for PCI Device Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control'
#Runtime PM for PCI Device Intel Corporation Device 9d58
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.0/power/control'
#Runtime PM for PCI Device Intel Corporation Wireless 3165
echo 'auto' > '/sys/bus/pci/devices/0000:02:00.0/power/control'
#Runtime PM for PCI Device Intel Corporation Skylake Processor Thermal Subsystem
echo 'auto' > '/sys/bus/pci/devices/0000:00:04.0/power/control'
#Runtime PM for PCI Device Intel Corporation Sunrise Point-LP CSME HECI #1
echo 'auto' > '/sys/bus/pci/devices/0000:00:16.0/power/control'
#Runtime PM for PCI Device NVIDIA Corporation GM108M [GeForce 940MX]
#echo 'auto' > '/sys/bus/pci/devices/0000:01:00.0/power/control'
#Runtime PM for PCI Device Intel Corporation Sunrise Point-LP PMC
echo 'auto' > '/sys/bus/pci/devices/0000:00:1f.2/power/control'
#Wake-on-lan status for device enp3s0
ethtool -s enp3s0 wol d
