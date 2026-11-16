---
title: "Moonlight Controller Not Working: The Input Bridge Check"
description: "Controller input not reaching Sunshine host? Follow this focused diagnosis to restore moonlight controller not working in stream, with a verification test and rollback steps."
seo_title: "Moonlight Controller Not Working? Fix Input Delivery in Stream"
seo_description: "Controller input not reaching Sunshine host? Follow this focused diagnosis to restore moonlight controller not working in stream, with a verification test and rollback steps."
keywords:
  - "moonlight controller not working"
date: 2026-11-16T10:06:40+08:00
publishDate: 2026-11-16T10:06:40+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are streaming from Sunshine to Moonlight, the video runs smoothly, but your controller presses never reach the host. This is a common input delivery failure, and we can isolate it without guessing.

## Check the client-side input path

First, confirm Moonlight is actually receiving the controller. Connect the controller, open Moonlight's settings, and look at the input device list. If the controller appears, Moonlight sees it; if not, the problem is before streaming. Try a different USB port or re-pair Bluetooth, then relaunch Moonlight. A controller that appears but still does nothing points to the host side.

## Verify Sunshine's input handling

On the host, open the Sunshine web UI and check the paired client's permissions. Ensure the input forwarding option is enabled for that client. Also confirm no other application (like Steam Input or a virtual controller driver) is intercepting the device. Disable overlays temporarily. If the controller works in the host's own gamepad tester but not in Moonlight, the issue is in the stream session, not the hardware.

## Run a controlled verification test

Start a stream and open a simple gamepad tester on the host. Press each button and stick. If inputs register on the host, the **moonlight controller not working** symptom is resolved. If not, note which inputs fail—this tells you whether it is a mapping or connection issue.

## Rollback and recovery

If changes make things worse, revert the Sunshine input settings to their previous state and restart the Sunshine service. Re-pair the client if needed. Keep a note of working configurations before experimenting.

If the controller still does not reach the host after these checks,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your Moonlight and Sunshine versions and the tester results.
