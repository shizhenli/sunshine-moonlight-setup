---
title: "Sunshine Host Not Found: A Practical Troubleshooting Guide"
description: "Moonlight cannot find your Sunshine host? Follow these practical checks to diagnose discovery and pairing issues."
seo_title: "Sunshine Host Not Found: Fix Moonlight Discovery"
seo_description: "Moonlight cannot find your Sunshine host? Follow these practical checks to diagnose discovery and pairing issues."
keywords:
  - "sunshine host not found"
date: 2026-11-23T08:06:52+08:00
publishDate: 2026-11-23T08:06:52+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You are trying to connect Moonlight to your Sunshine host, but Moonlight shows no host or cannot pair, leaving you stuck before any controlled diagnosis.

## Check the Basics First

Confirm both devices are on the same local network. A common mistake is having the host on Ethernet and the client on a guest Wi-Fi network. Open a terminal on the host and run `ipconfig` (Windows) or `ifconfig` (Linux/macOS) to note the IP address. On the Moonlight client, verify it is connected to the same subnet—for example, both should start with 192.168.1.x. If they differ, fix the network first.

## Verify Sunshine Is Running and Discoverable

On the host, open the Sunshine web interface (usually https://localhost:47990). Check that the service is active and that the "Enable" toggle is on. Look for the "Pairing" section—if it shows a PIN prompt, the host is reachable. Next, ensure your firewall allows inbound traffic on ports 47984-47989 (TCP) and 47998-48000 (UDP). Temporarily disable the firewall to test; if Moonlight then finds the host, re-enable it and add the rules.

## Test Discovery Directly

On the Moonlight client, use the "Add Host" option and manually enter the host's IP address. If Moonlight connects and prompts for a PIN, the automatic discovery (mDNS) is blocked. This is your verification test: manual IP works but auto-discovery fails. In that case, check that your router does not isolate clients (AP isolation) and that mDNS (Bonjour) is not blocked.

## Rollback and Recovery

If you changed firewall or network settings, revert them one at a time to isolate the cause. Keep a note of the original configuration so you can restore it if needed. After any change, restart the Sunshine service and refresh Moonlight's host list.

If the issue persists,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) for a guided diagnosis. Remember, a **sunshine host not found** error usually points to network isolation or firewall rules, not a broken installation.
