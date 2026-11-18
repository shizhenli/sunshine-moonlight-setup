---
title: "Controller Input Not Reaching Host in Moonlight Stream: Fix the Delivery Path"
description: "Stream runs but controller input doesn't reach the host? Follow these step-by-step checks to restore controller delivery in Sunshine and Moonlight."
seo_title: "Moonlight Controller Not Working in Stream: Fix Input Delivery"
seo_description: "Stream runs but controller input doesn't reach the host? Follow these step-by-step checks to restore controller delivery in Sunshine and Moonlight."
keywords:
  - "moonlight controller not working"
date: 2026-11-18T09:06:51+08:00
publishDate: 2026-11-18T09:06:51+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're streaming from your Sunshine host to Moonlight, the picture is fine, but your controller presses never reach the game—this is the input delivery failure we'll fix here.

## Check the client-side controller mapping

Open Moonlight's settings and find the input or controller section. Confirm your controller is detected and assigned to the correct player slot. If it shows as unassigned or as a generic device, reassign it. Then, in the same menu, verify that the controller is not set to a mode that only sends keyboard/mouse events. Result interpretation: if the controller appears but is unassigned, that alone explains the dead input.

## Verify the host sees the controller

On the Sunshine host, open the operating system's game controller panel (for example, the USB game controllers dialog on Windows). Press buttons and watch for the device to respond. If nothing lights up, the host never received the device—check the physical connection or wireless pairing on the host side, not in Moonlight.

## Test input with a simple target

Launch a basic input tester or a game with an on-screen prompt on the host, then stream it. Press a button and observe. If the tester reacts on the host's own screen but not through the stream, the problem is in the streaming input path; if it never reacts even locally, fix the host's controller driver first.

## Rollback and recovery

If you changed controller settings during these steps, revert them to the previous configuration before retrying, so you don't stack a new misconfiguration on top of the original issue.

If the controller still doesn't work after these checks, the **moonlight controller not working** symptom may need a closer look at your specific setup.

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) and include your host OS, client device, and controller model.
