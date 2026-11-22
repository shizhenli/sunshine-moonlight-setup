---
title: "Moonlight Controller Not Working: Fix Input Delivery in Stream"
description: "Stream runs but controller input doesn't reach the host? Follow these checks to diagnose and fix moonlight controller not working in Sunshine/Moonlight."
seo_title: "Moonlight Controller Not Working? Fix In-Stream Input Delivery"
seo_description: "Stream runs but controller input doesn't reach the host? Follow these checks to diagnose and fix moonlight controller not working in Sunshine/Moonlight."
keywords:
  - "moonlight controller not working"
date: 2026-11-22T08:06:53+08:00
publishDate: 2026-11-22T08:06:53+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're streaming from Sunshine to Moonlight, the video plays fine, but your controller presses never reach the host. This is a focused input-delivery failure, not a general setup problem.

## Check the client-side controller handoff

First, confirm Moonlight sees the controller. In Moonlight, open Settings > Input and look at the connected devices list. If your controller isn't listed, the client never captured it—reconnect the controller, then reopen Moonlight. If it is listed, proceed.

Next, verify the stream is set to forward input. In Moonlight's stream settings, ensure "Gamepad" or "Controller" input is enabled and not set to "Local only." A common mistake is leaving input mode on keyboard/mouse emulation; switch it to gamepad and restart the stream.

## Check the host-side input path

On the Sunshine host, open the Sunshine web UI and go to Configuration > Input. Confirm "Gamepad" is set to the correct virtual controller type (e.g., Xbox 360). If it's set to "Disabled" or an unsupported type, Moonlight's input is dropped silently. Change it, save, and restart the Sunshine service.

If you're on Windows, open Device Manager and look under "Xbox peripherals" or "Human Interface Devices" for a virtual gamepad created by Sunshine. If it's missing or shows a warning, reinstall the ViGEmBus driver—this is the usual cause of **moonlight controller not working** when video is fine.

## Verification test

Launch a simple game or the Steam Big Picture controller test. Press a button and watch for a response. If the host reacts, input delivery is restored. If not, note whether the client list still shows the controller—if it vanished, the issue is client-side; if it remains, the host driver is the suspect.

## Rollback and recovery

If changes break streaming, revert the Sunshine input setting to its previous value and restart the service. Keep a note of the original controller type so you can restore it.

Still stuck?

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your client and host input settings.
