#!/bin/bash

while :; do
        mem_used="$(free -m | grep Mem | awk '{print$3}')"
        mem_free="$(free -m | grep Mem | awk '{print$4}')"
        mem_avail="$(free -m | grep Mem | awk '{print$4}')"
        logger -t MemWatcher "Used: ${mem_used}. Free: ${mem_free}. Available: ${mem_avail}.";
        sleep 2; done

