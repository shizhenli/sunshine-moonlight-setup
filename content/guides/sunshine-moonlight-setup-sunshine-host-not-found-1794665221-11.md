---
title: "Moonlight Can't Find Sunshine Host: A Step-by-Step Discovery Fix"
description: "Moonlight shows no host or won't pair with Sunshine? Follow these practical checks to diagnose and restore host discovery, then verify the connection."
seo_title: "Sunshine Host Not Found: Fix Moonlight Discovery"
seo_description: "Moonlight shows no host or won't pair with Sunshine? Follow these practical checks to diagnose and restore host discovery, then verify the connection."
keywords:
  - "sunshine host not found"
date: 2026-11-21T15:56:04+08:00
publishDate: 2026-11-21T15:56:04+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're running Sunshine on your PC and Moonlight on your client device, but Moonlight shows no host or fails to pair, leaving you stuck at the discovery step. Let's walk through a controlled diagnosis to get Moonlight seeing Sunshine again.

## Confirm Sunshine Is Actually Running and Listening

On the host machine, open Sunshine's web UI (usually https://localhost:47990). Check that the status shows it is running and the PIN is available. If the page doesn't load, Sunshine isn't running—restart the Sunshine service or application. A running service is the first requirement for discovery.

## Check Network Visibility

Ensure both devices are on the same local network and that the host's firewall allows Sunshine. On Windows, verify that Sunshine has a rule for inbound TCP 47989 and UDP 47998-48010. If you recently changed networks or VPNs, toggle them off and retry. A quick test: from the client device, ping the host's IP address. If ping fails, the devices can't see each other, and Moonlight won't either.

## Verify Moonlight's Host List

In Moonlight, refresh the host list. If the host still doesn't appear, add it manually by IP address using the "Add Host" option. If manual addition works but auto-discovery doesn't, the issue is likely broadcast traffic being blocked—check that your router isn't isolating clients (AP isolation) and that both devices are on the same subnet.

## The Verification Test

After these checks, restart Sunshine and Moonlight. In Moonlight, the host should appear within a few seconds. Select it and attempt to pair. If the PIN prompt appears, discovery is fixed. If you still see **sunshine host not found**, note whether the manual IP entry also fails—that tells you whether the problem is name resolution or full network isolation.

## Rollback and Recovery

If changes to firewall or network settings didn't help, revert them to their previous state to avoid breaking other services. Then document the exact error and your network setup before seeking further help. For guided diagnosis,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
