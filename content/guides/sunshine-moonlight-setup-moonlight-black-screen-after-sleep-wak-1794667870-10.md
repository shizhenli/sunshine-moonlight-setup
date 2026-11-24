---
title: "Moonlight Black Screen After Sleep: Encoder Recovery Without Re-pairing"
description: "Troubleshoot Moonlight black screen after sleep by checking host wake, display output, and encoder state. Step-by-step diagnosis with verification and rollback."
seo_title: "Moonlight Black Screen After Sleep: Fix Wake, Display, Encoder"
seo_description: "Troubleshoot Moonlight black screen after sleep by checking host wake, display output, and encoder state. Step-by-step diagnosis with verification and rollback."
keywords:
  - "Moonlight Black Screen After Sleep: Wake, Display, Encoder"
date: 2026-11-24T09:06:54+08:00
publishDate: 2026-11-24T09:06:54+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You wake your Sunshine host from sleep, reconnect Moonlight, and get a black frame even though the stream connects. This is a common **Moonlight Black Screen After Sleep: Wake, Display, Encoder** issue, and it usually comes down to one of three things: the host didn't fully wake, the display didn't reinitialize, or the encoder is stuck on a stale session.

## Check 1: Confirm the host actually woke

On the Sunshine host, open a terminal and run `who` or check the login screen. If the host is still asleep or locked at the firmware level, Moonlight can connect to a black frame. Press a key on the host keyboard and wait 10 seconds. If the screen stays off, wake it manually. A host that responds to input but still shows black points to display or encoder, not wake.

## Check 2: Verify display output

Look at the physical monitor connected to the host. If it shows the desktop, the display is fine. If it shows no signal, the GPU didn't reinitialize after sleep. Unplug and replug the monitor cable, or toggle the display input. Then reconnect Moonlight. If the physical screen stays dark, stop here and fix display output first.

## Check 3: Reset the encoder session

In Sunshine, stop the current stream from the web UI, then restart the Sunshine service. On Windows, restart the Sunshine service from Services; on Linux, run `systemctl restart sunshine`. Wait 5 seconds, then reconnect Moonlight. This clears a stale encoder that survived sleep.

## Verification test

After each check, reconnect Moonlight and confirm you see the host desktop, not a black frame. If the stream shows the desktop, the fix worked. If it stays black after all three checks, note which check failed and

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).

## Rollback note

If restarting Sunshine breaks pairing, re-pair the client once. If display changes caused the issue, revert to the previous resolution or cable before further testing.
