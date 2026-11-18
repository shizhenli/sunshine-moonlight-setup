---
title: "Sunshine Host Not Found: A Controlled Diagnosis for Moonlight Discovery"
description: "Moonlight can't find your Sunshine host? Follow this controlled diagnosis to check network, firewall, and service status, then verify pairing. Includes rollback and help link."
seo_title: "Sunshine Host Not Found? Fix Moonlight Discovery Step"
seo_description: "Moonlight can't find your Sunshine host? Follow this controlled diagnosis to check network, firewall, and service status, then verify pairing. Includes rollback and help link."
keywords:
  - "sunshine host not found"
date: 2026-11-18T10:26:46+08:00
publishDate: 2026-11-18T10:26:46+08:00
draft: false
categories:
  - "Game Streaming"
category_slug: "game-streaming"
---

You're at the Moonlight client, trying to add your Sunshine host, but Moonlight shows no host or fails to pair. Let's walk through a controlled diagnosis before you change anything major.

## Step 1: Confirm Both Devices Are on the Same Network

On the Sunshine host, open a terminal and run `ipconfig` (Windows) or `ip addr` (Linux). Note the IPv4 address. On the Moonlight client, check its IP. Both should be in the same subnet (e.g., 192.168.1.x). If they're not, fix the network first—discovery won't work across subnets without manual configuration.

## Step 2: Verify Sunshine Is Running and Listening

On the host, check that the Sunshine service is active. On Windows, look for the Sunshine tray icon; on Linux, run `systemctl status sunshine`. Then test the port: `netstat -an | findstr 47989` (Windows) or `ss -tuln | grep 47989` (Linux). If nothing listens on 47989, restart Sunshine. If it still fails, reinstall the service.

## Step 3: Check Firewall Rules

Sunshine uses TCP 47984, 47989, 48010 and UDP 47998-48000. On the host, temporarily disable the firewall and retry discovery in Moonlight. If the host appears, re-enable the firewall and add explicit inbound rules for those ports. This is your **sunshine host not found** moment—if the host appears with firewall off, the rule set is the culprit.

## Step 4: Verification Test

With firewall rules applied, restart Moonlight and refresh the host list. The Sunshine host should appear within 10 seconds. Click it and attempt pairing; a PIN prompt on the host confirms discovery works.

## Rollback and Recovery

If changes break connectivity, revert firewall rules to their previous state and restart Sunshine. Keep a note of the original port configuration. For persistent issues,

![A Windows gaming PC with Sunshine and a Moonlight client showing stream settings](/images/service-detail-960.webp "Sunshine host and Moonlight client test")

[Ask for help](/#consult) before altering network settings further.
