---
title: 'Moonlight Black Screen After Sleep: Wake, Display, Encoder'
description: A host-first check for Moonlight black screens after sleep, including display state, Sunshine encoder, audio, and controller verification.
seo_title: Moonlight Black Screen After Windows Sleep
seo_description: A host-first check for Moonlight black screens after sleep, including display state, Sunshine encoder, audio, and controller verification.
keywords:
- moonlight black screen after sleep
- sunshine not waking
- moonlight no video
date: '2026-11-13'
draft: false
categories:
- Game Streaming
category_slug: game-streaming
---

<p>A black Moonlight frame after sleep is usually a host display or encoder problem, not a client decoder problem. Wake the host and inspect it before reinstalling the client.</p>
<h2>Before you start</h2><ul>
<li>Windows host with Sunshine</li>
<li>One Moonlight client on the same network</li>
<li>Access to the host display and Sunshine logs</li>
<li>A game or desktop test</li>
</ul>
<h2>Step-by-step checks</h2>
<h3>Step 1: Wake and confirm the host display</h3>
<p>Wake the PC manually or with a wake-on-LAN tool, then look at the physical display. If Windows resumed without a display, reconnect the monitor or enable the virtual display before opening Moonlight.</p>
<p><strong>Check:</strong> The host has an active display and Sunshine is running.</p>
<h3>Step 2: Read the Sunshine log after resume</h3>
<p>Note the encoder, capture, and audio messages around the resume time. Compare a working launch before sleep with the failed launch after wake.</p>
<p><strong>Check:</strong> The log identifies the failing capture or encoder stage.</p>
<h3>Step 3: Stabilize the display path</h3>
<p>For a headless or sleeping monitor, configure a persistent virtual display or prevent the display from powering off during the test. Change one display setting at a time.</p>
<p><strong>Check:</strong> The host keeps a display available after the monitor sleeps.</p>
<h3>Step 4: Test picture, sound, and controller</h3>
<p>Connect from the client, start one game or desktop test, and confirm video, audio, and controller input in the same session.</p>
<p><strong>Check:</strong> All three work together, not just the desktop image.</p>
<h3>Step 5: Reconnect after a sleep cycle</h3>
<p>Disconnect, put the host to sleep, wake it, and reconnect. Repeat once to prove the path is stable.</p>
<p><strong>Check:</strong> The second wake also produces a working stream.</p>
<h2>Verify the result</h2>
<p>After a deliberate sleep/wake cycle, Moonlight shows the host picture, plays audio on the client, and accepts controller input.</p>
<h2>Rollback</h2>
<p>Restore the previous display sleep and Sunshine settings. Keep the old configuration export if the virtual display causes side effects.</p>
<p><a href="/#consult">Ask for help with this exact symptom</a> · <a href="/guides/">All troubleshooting guides</a></p>
