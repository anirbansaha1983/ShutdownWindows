# ShutdownWindows

Run `shutdown-windows.bat` to request an immediate, full Windows shutdown. Save
all work first. The script uses:

```bat
shutdown.exe /s /t 0
```

`/s` requests shutdown, and `/t 0` starts it immediately. The script does not
use `/hybrid`, which requests a Fast Startup (hybrid) shutdown. It also omits
`/f`, so apps can ask you to save work or prevent shutdown; respond to any
prompt. Your original command includes `/f`, which can discard unsaved work,
and a nonzero timeout also implies forced closure.

This command cannot guarantee the hardware powers off if Windows, a driver,
firmware, or a peripheral gets stuck. If the disk or keyboard lights remain on:

1. Wait several minutes and check whether Windows is showing a shutdown or
   save-work prompt. Disconnect nonessential peripherals and try again.
2. Update Windows and the laptop manufacturer's chipset, storage and power
   management drivers and BIOS/UEFI. Follow the manufacturer's instructions
   when updating firmware.
3. Check Event Viewer under Windows Logs > System for errors around the shutdown
   time; the laptop manufacturer's support may help interpret them.
4. If the machine remains stuck, hold the power button until it turns off as a
   last resort. This can lose unsaved data or damage files. If the problem
   recurs even with a full shutdown, contact the manufacturer for hardware or
   firmware diagnosis.

Some laptops can leave keyboard lighting or USB power on while shut down; check
the manufacturer's power and firmware settings. A spinning drive, however,
may indicate the system has not actually powered off.
