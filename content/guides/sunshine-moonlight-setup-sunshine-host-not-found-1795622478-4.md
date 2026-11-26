---
title: "Sunshine Host Not Found: A Step-by-Step Discovery Fix"
description: "Troubleshoot Moonlight's inability to find your Sunshine host with practical checks, exact result interpretation, and a verification test."
seo_title: "Sunshine Host Not Found: Fix Moonlight Discovery"
seo_description: "Troubleshoot Moonlight's inability to find your Sunshine host with practical checks, exact result interpretation, and a verification test."
keywords:
  - "sunshine host not found"
date: 2026-11-26T10:14:11+08:00
publishDate: 2026-11-26T10:14:11+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are running Sunshine on your host PC and Moonlight on your client, but Moonlight shows no host or cannot pair, and you are stuck at the "cannot find the host" step.

## Check the Basics First

On the host, open Sunshine's web UI (usually https://localhost:47990). Confirm the server is running and note the IP address shown. On the client, ensure both devices are on the same local network. If Moonlight shows an empty host list, that means discovery packets are not reaching the client. If it shows a host but pairing fails, the issue is likely firewall or port blocking.

## Verify Network and Firewall

On the host, check that Windows Firewall (or your OS firewall) allows Sunshine. The default ports are 47984-47990 TCP and 47998-48000 UDP. If you recently changed networks, the firewall profile may have switched to Public, blocking discovery. Set the network to Private and allow Sunshine through. Also confirm no VPN is active on either device, as VPNs can isolate local traffic.

## Test Discovery Manually

On the client, try adding the host by IP address in Moonlight instead of relying on auto-discovery. If manual addition works, the problem is broadcast discovery, often caused by router settings like AP isolation or IGMP snooping. Disable AP isolation on your router and retest.

## Verification Test

Restart Sunshine on the host, then refresh Moonlight. The host should appear within 30 seconds. If it does, pair and start a stream to confirm. If it still does not appear, check the Sunshine log for discovery errors.

## Rollback Note

If you changed firewall or router settings, revert them one at a time and retest to isolate the cause. If the issue persists, this **sunshine host not found** error may require deeper network inspection. For personalized diagnostics,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
