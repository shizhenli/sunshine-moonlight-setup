---
title: "Moonlight Controller Not Working: Fix Input Delivery Before Streaming"
description: "Stream runs but controller input doesn't reach the host? Follow these checks to fix moonlight controller not working and restore input delivery."
seo_title: "Moonlight Controller Not Working? Fix Input Delivery in Sunshine"
seo_description: "Stream runs but controller input doesn't reach the host? Follow these checks to fix moonlight controller not working and restore input delivery."
keywords:
  - "moonlight controller not working"
date: 2026-11-21T15:56:04+08:00
publishDate: 2026-11-21T15:56:04+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You start a stream in Moonlight, the video looks fine, but your controller does nothing—this guide walks you through a controlled diagnosis to get input flowing again.

## Check the client-side controller connection

First, confirm Moonlight recognizes the controller before streaming. On the client device, open Moonlight's settings and look for the controller status. If it shows "not detected," reconnect the controller (USB or Bluetooth) and try again. If detected but still unresponsive in-stream, proceed to the host.

## Verify Sunshine's input handling

On the Sunshine host, open the Sunshine web UI and check the Input section. Ensure the correct input driver is selected (e.g., ViGEm for virtual gamepads). If the driver shows an error or is missing, reinstall it. Also, confirm no other software (like Steam Input or DS4Windows) is intercepting the controller—disable them temporarily.

## Test with a simple input monitor

On the host, open a text editor or a gamepad tester (e.g., joy.cpl on Windows). Start the stream and press buttons. If the tester shows no input, the issue is between Moonlight and Sunshine. If it shows input but the game doesn't respond, the problem is in the game's controller settings.

If input still fails, restart both Sunshine and Moonlight, then re-pair the client. This often resolves **moonlight controller not working** issues caused by stale sessions. As a rollback, revert any recent changes to Sunshine's input settings or driver versions.

## Final verification

After adjustments, launch a stream and test all buttons and axes in the host's tester. If everything registers, the fix is complete. If not,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your logs for further diagnosis.
