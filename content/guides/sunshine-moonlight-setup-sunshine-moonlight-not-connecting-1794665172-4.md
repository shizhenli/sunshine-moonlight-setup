---
title: "Sunshine Moonlight Not Connecting: Clear the Host Discovery Block"
description: "Moonlight can't find your Sunshine host? Follow these practical checks to clear host discovery and pairing issues before a controlled diagnosis."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery"
seo_description: "Moonlight can't find your Sunshine host? Follow these practical checks to clear host discovery and pairing issues before a controlled diagnosis."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-21T15:52:56+08:00
publishDate: 2026-11-21T15:52:56+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are running Sunshine on your host and Moonlight on your client, but Moonlight shows no host or fails to pair, leaving you stuck at the moonlight cannot find the host step.

## Check the Basics First

Start with the host machine. Confirm Sunshine is actually running and listening. Open a terminal on the host and run `netstat -an | findstr :47989` (Windows) or `ss -tuln | grep 47989` (Linux). If nothing appears, Sunshine is not listening on the default port. Restart Sunshine and check again. A result showing LISTEN on 47989 means the service is up.

Next, verify both devices are on the same subnet. On the host, note the IP address (e.g., 192.168.1.50). On the Moonlight client, open a command prompt and ping that address. If ping fails, you have a network isolation issue—check router client isolation or VLAN settings.

## Test Discovery Directly

In Moonlight, use the "Add Host" option and enter the host IP manually. If the host appears when added by IP but not automatically, the problem is broadcast discovery, not Sunshine itself. This is a common cause of **sunshine moonlight not connecting** during the find-host step. Ensure your firewall allows UDP port 47998 and TCP 47989 on the host. On Windows, check that the Sunshine firewall rule is enabled for both Private and Public networks.

## Verification Test

After adjusting firewall or adding the host by IP, restart Moonlight and check if the host now appears automatically. Then attempt a pairing request. A successful PIN prompt on the host confirms discovery and pairing are working.

## Rollback Note

If manual IP entry works but automatic discovery still fails, revert any firewall changes you made and use the manual IP method as a stable workaround. Document the host IP so you can reconnect without discovery.

If these steps do not resolve the issue,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) with your network details and Sunshine logs.
