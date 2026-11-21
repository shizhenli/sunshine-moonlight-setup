---
title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder – Restore the Stream"
description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder settings on the Sunshine host. Follow these steps to restore streaming."
seo_title: "Moonlight Black Screen After Sleep: Wake, Display, Encoder Fix"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking wake, display, and encoder settings on the Sunshine host. Follow these steps to restore streaming."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-21T15:59:12+08:00
publishDate: 2026-11-21T15:59:12+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You've connected Moonlight to your Sunshine host after sleep, but the screen is black. This guide helps you isolate whether the issue is wake, display, or encoder.

## Check Wake State

First, verify the host actually woke from sleep. On the Sunshine host, open a terminal and run `systemctl status sleep.target` (Linux) or check Event Viewer for power events (Windows). If the host is still asleep, Moonlight may connect to a stale session. Wake the host manually and reconnect. If the screen remains black, proceed.

## Verify Display Output

Next, confirm the host's display is active. Connect a monitor or use remote desktop to check if the desktop appears. If the display is off, adjust power settings to prevent display sleep. On Windows, set "Turn off display" to Never; on Linux, use `xset s off` and `xset -dpms`. Then restart Sunshine and test Moonlight again.

## Inspect Encoder Initialization

If wake and display are fine, the encoder may fail after sleep. Check Sunshine logs for errors like "encoder not initialized" or "failed to create encoder." Restart the Sunshine service to reinitialize the encoder. If the black screen persists, try switching the encoder in Sunshine's configuration (e.g., from NVENC to software) and restart.

## Verification Test

After each change, reconnect Moonlight. A successful fix shows the desktop within 5 seconds. If still black, note the exact log error and revert the last change.

## Rollback and Recovery

If a configuration change causes instability, revert to previous settings. Keep a backup of Sunshine's config file. For persistent issues, consider reinstalling Sunshine or using a different encoder.

For personalized assistance with this **Moonlight Black Screen After Sleep: Wake, Display, Encoder** issue,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
