---
title: "Moonlight Black Screen After the Host Sleeps: What to Check First"
description: "Project-specific diagnosis and retest steps for sunshine-moonlight-setup."
date: 2026-11-13
---
<p>A black screen in Moonlight after the host sleeps is usually a display/session problem, not a broken encoder. The host may have no active display, may be locked, or may have stopped Sunshine. Test the host locally before changing Moonlight settings.</p>
<h2>1. Confirm the host is awake and has a display</h2>
<p>Move the mouse or press a key on the host. If the monitor is off or the PC is headless, attach a display or a dummy HDMI plug. On Windows, set sleep to Never for the test and disable “turn off display” temporarily. A headless GPU may stop producing a framebuffer.</p>
<h2>2. Check Sunshine locally</h2>
<p>Open the Sunshine web UI on the host (default <code>https://localhost:47990</code>). Confirm the service is running and the Applications list includes Desktop or Steam. Start a local stream once; if the host cannot capture its own desktop, Moonlight cannot either.</p>
<h2>3. Wake path and session</h2>
<p>If you use Wake-on-LAN, wake the host first, wait for Windows to reach the login screen, then connect Moonlight. A locked session can produce a black screen depending on the capture method. Log in locally or configure the host to auto-login for the test only.</p>
<h2>4. Lower one variable at a time</h2>
<p>Set 1080p/60 and 20 Mbps, force the host to the correct GPU, and try the Desktop app instead of a game. Check the Sunshine log for encoder or capture errors. Change one setting, reconnect, and record the result.</p>
<h2>5. Retest after sleep</h2>
<p>Put the host to sleep, wake it, wait 30 seconds, and reconnect. Repeat twice. Acceptance means Moonlight shows the desktop/game after a sleep cycle, controller input works, and audio is present. If it only works before sleep, the fix is not complete.</p>
<h2>6. Rollback</h2>
<p>Restore the original sleep/display settings and remove any temporary dummy plug or auto-login. Keep the Sunshine version and the one setting that fixed the path.</p>
