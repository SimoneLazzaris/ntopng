#!/bin/sh
/usr/bin/redis-server &
/usr/bin/ntopng $@
