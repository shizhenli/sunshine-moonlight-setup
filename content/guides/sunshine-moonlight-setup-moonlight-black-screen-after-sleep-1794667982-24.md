---
title: "Moonlight Black Screen After Sleep: A Step-by-Step Host Frame Diagnosis"
description: "Troubleshoot Moonlight black screen after sleep by checking the host's display state, encoder activity, and frame output with a controlled test."
seo_title: "Moonlight Black Screen After Sleep: Fix the Host Frame"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking the host's display state, encoder activity, and frame output with a controlled test."
keywords:
  - "moonlight black screen after sleep"
date: 2026-11-25T12:06:54+08:00
publishDate: 2026-11-25T12:06:54+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake your Sunshine host from sleep, reconnect Moonlight, and get a black frame even though the stream says it is connected.

## Check the host display state
On the host, open a terminal and run `xrandr --query` (Linux) or check Display settings (Windows). Look for an active output with a resolution and refresh rate. If the only output is disconnected or shows `1920x1080+0+0` as off, the host has no active display to capture. Result: Sunshine sends a black frame because there is no framebuffer. Re-enable the display or set a dummy plug, then restart Sunshine.

## Check encoder activity
With the stream running, run `nvidia-smi` (NVIDIA) or `vainfo` (Intel/AMD) on the host. You want to see an encoder session listed. If no session appears, Sunshine is not encoding; the black frame is a capture failure, not a client issue. Restart the Sunshine service and confirm the encoder session appears within 10 seconds.

## Verification test
Stop the stream, put the host to sleep, wake it, and wait 15 seconds before reconnecting. If the first frame is still black, switch the host to a static desktop and reconnect. A visible desktop means the issue is the host's post-sleep display initialization; a black frame again means the encoder did not resume. This isolates the **moonlight black screen after sleep** to either display or encoder.

## Rollback and recovery
If changes make it worse, revert the display mode and restart Sunshine to its previous state. Keep a known-good dummy plug or virtual display configuration so you can restore streaming without rebooting.

If the checks point to a configuration you cannot resolve,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your host OS, GPU, and the output of the commands above.
