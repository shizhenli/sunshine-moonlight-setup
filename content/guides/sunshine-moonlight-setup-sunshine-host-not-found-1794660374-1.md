---
title: "Sunshine Host Not Found: Is the Host Actually Reachable?"
description: "Moonlight shows no host or cannot pair with Sunshine? Work through reachability checks, interpret each result, and verify discovery without guessing."
seo_title: "Sunshine Host Not Found: Check Reachability Before Pairing"
seo_description: "Moonlight shows no host or cannot pair with Sunshine? Work through reachability checks, interpret each result, and verify discovery without guessing."
keywords:
  - "sunshine host not found"
date: 2026-11-15T19:00:17+08:00
publishDate: 2026-11-15T19:00:17+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are at the Moonlight client, and the host list stays empty or pairing fails, so you need to confirm whether the Sunshine host is reachable before changing anything else.

## Check the Host Is Running and Listening

On the Sunshine host, confirm the service is active and the web UI opens locally. If the UI loads on the host but not from another device, the problem is network reachability, not Sunshine itself. Note the exact port shown in the Sunshine configuration; a mismatch here produces a **sunshine host not found** result even when the service is healthy.

## Test Reachability From the Client Side

From the Moonlight device, open a browser and try the host's local IP and port. A login page means the host is reachable and discovery is the failing layer. A timeout means the client cannot route to the host at all. Also check that both devices are on the same subnet and that the host firewall allows the Sunshine port for private networks.

## Interpret the Results

If the browser test succeeds but Moonlight still lists nothing, restart the Moonlight client and refresh the host list once. If the list populates, stop here. If it stays empty, add the host manually by IP in Moonlight and attempt pairing. A pairing prompt appearing on the host confirms the path works and only automatic discovery is broken.

## Verification Test

After any change, close Moonlight completely, reopen it, and check whether the host appears without manual entry. Then attempt one pairing request. Success means discovery is restored; a repeat failure means the client and host are on different networks or a firewall rule is still blocking the port.

## Rollback and Recovery

If manual entry or firewall changes make things worse, revert the last change and return to the browser reachability test to re-establish a known state before trying again. If the host remains unreachable from every client,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with the browser test result and the exact port number.
