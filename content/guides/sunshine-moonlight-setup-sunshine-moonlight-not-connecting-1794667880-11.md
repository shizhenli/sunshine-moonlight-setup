---
title: "Moonlight Can't Find Host? Diagnose Sunshine Discovery Before Pairing"
description: "Moonlight shows no host or won't pair? Diagnose Sunshine discovery step-by-step, verify with a ping test, and recover safely if changes fail."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery"
seo_description: "Moonlight shows no host or won't pair? Diagnose Sunshine discovery step-by-step, verify with a ping test, and recover safely if changes fail."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-24T10:06:53+08:00
publishDate: 2026-11-24T10:06:53+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're running Sunshine on your host and Moonlight on your client, but Moonlight sits at the "cannot find the host" step and never reaches pairing. This is a discovery failure, not a streaming failure, so we'll isolate it before changing anything.

## Confirm both devices are on the same network path

On the host, open a terminal and run `ipconfig` (Windows) or `ip addr` (Linux). Note the IPv4 address and subnet mask. On the client, run the same command. If the first three octets differ (e.g., 192.168.1.x vs 192.168.2.x), they're on separate subnets. Result: Moonlight's automatic discovery won't cross that boundary. Fix the network first, then retest.

## Check Sunshine is actually listening

On the host, run `netstat -an | findstr 47989` (Windows) or `ss -tlnp | grep 47989` (Linux). You should see a LISTEN line. If nothing appears, Sunshine isn't running or crashed. Restart the Sunshine service and recheck. If it listens only on 127.0.0.1, it's bound to loopback and remote clients can't see it; change the bind address in Sunshine's config to the LAN interface.

## Test reachability before touching Moonlight

From the client, ping the host's IPv4 address. A reply means the path is open; timeouts mean a firewall or AP isolation is blocking traffic. On the host firewall, allow TCP 47984-47990 and UDP 47998-48010. This is the most common cause of **sunshine moonlight not connecting** at the discovery stage.

## Verification test

Return to Moonlight and refresh the host list. The host should appear within a few seconds. If it does, proceed to pairing. If it still doesn't, add the host manually by IP in Moonlight; a successful manual add confirms discovery broadcast is the only broken piece.

## Rollback note

If firewall or bind changes break other services, revert them to the previous values and retest ping before adjusting again. Keep a note of each change so you can undo one step at a time.

Still stuck after these checks?

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult).
