#!/system/bin/sh

# hax hax hax
# grep the modem partition for baseband version
setprop gsm.version.baseband `strings /dev/block/platform/msm_sdcc.1/by-name/modem | grep "^M9615A\-" | head -1`
