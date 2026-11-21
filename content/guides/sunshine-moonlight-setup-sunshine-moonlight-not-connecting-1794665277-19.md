---
title: "Sunshine Moonlight Not Connecting: Clear the Discovery Block Before Pairing"
description: "Moonlight can't find your Sunshine host? Work through these targeted checks to clear the discovery block, verify the fix, and recover safely if needed."
seo_title: "Sunshine Moonlight Not Connecting: Fix Host Discovery Before Pairing"
seo_description: "Moonlight can't find your Sunshine host? Work through these targeted checks to clear the discovery block, verify the fix, and recover safely if needed."
keywords:
  - "sunshine moonlight not connecting"
date: 2026-11-21T15:59:12+08:00
publishDate: 2026-11-21T15:59:12+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're on the Moonlight client, the host list is empty, and you can't even reach the pairing screen because Sunshine never appears. Here's how to clear that discovery block without guessing.

## Confirm the host is actually advertising

On the Sunshine host, open the web UI and check that the service is running. Then look at the log for the line that announces the host on the local network. If you see no advertisement line, Sunshine isn't broadcasting, and Moonlight has nothing to find. Restart the Sunshine service once and watch for that line to reappear.

## Check the network path before touching Moonlight

Both devices must be on the same subnet for automatic discovery. Compare the first three octets of each device's IP address. If they differ, discovery will fail silently. Also confirm the host firewall allows inbound traffic on the Sunshine ports; a blocked port looks identical to an absent host from Moonlight's side.

## Rule out a stale client cache

Close Moonlight completely, then reopen it. If the host still doesn't appear, use the manual add option and enter the host's IP address directly. If manual entry works but discovery doesn't, the problem is local broadcast traffic, not Sunshine itself. This is the most common form of **sunshine moonlight not connecting** that users hit before pairing.

## Verification test

After the fixes, return to the Moonlight host screen and wait up to thirty seconds. Success means the host appears automatically and the pair button becomes available. If it appears only via manual IP, discovery is still blocked and you should revisit the subnet and firewall checks.

## Rollback note

If a firewall or network change makes things worse, revert that single change and retest before adjusting anything else. Keep a note of the original settings so you can restore them cleanly.

Still stuck after these checks?

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) and include your host log excerpt and both IP addresses.
