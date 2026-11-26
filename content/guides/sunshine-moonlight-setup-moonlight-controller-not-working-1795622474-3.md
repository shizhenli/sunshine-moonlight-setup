---
title: "Controller Input Lost in Moonlight Stream: A Step-by-Step Diagnosis"
description: "Stream runs but controller input doesn't reach the host? Follow these checks to restore controller function in Moonlight."
seo_title: "Moonlight Controller Not Working: Fix Input Delivery in Stream"
seo_description: "Stream runs but controller input doesn't reach the host? Follow these checks to restore controller function in Moonlight."
keywords:
  - "moonlight controller not working"
date: 2026-11-26T09:14:09+08:00
publishDate: 2026-11-26T09:14:09+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're streaming from Sunshine to Moonlight, but your controller's input never reaches the host. Let's diagnose this systematically.

## Check the controller in Moonlight's input settings
Open Moonlight's settings and navigate to the Input section. Ensure your controller is detected and selected as the active input device. If it's not listed, try reconnecting it or using a different USB port. A controller that appears here but still doesn't work points to a host-side issue.

## Verify Sunshine's input handling
On the host, open Sunshine's web interface and go to the Input tab. Confirm that gamepad input is enabled and that the correct controller type is selected. If you see no input activity when pressing buttons, the host isn't receiving the signal. Restart the Sunshine service after making changes.

## Test with a different controller or cable
Swap to another controller or cable to rule out hardware failure. If the new controller works, the original may be faulty. Also, check that no other software (like Steam Input or DS4Windows) is intercepting the controller exclusively.

## Run a verification test
Launch a simple game or a controller tester on the host. Press buttons and observe if inputs register. If they do, the issue is resolved. If not, proceed to the next step.

## Rollback and recovery
If you recently updated Sunshine or Moonlight, roll back to the previous version. Reinstall the controller drivers on the host. As a last resort, reset Moonlight's settings to default.

If the problem persists,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) for further assistance.

Remember, a **moonlight controller not working** often stems from misconfigured input settings or interference from other software.
