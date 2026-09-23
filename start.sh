#!/usr/bin/env bash

set -e

open_browser() {
	for _ in {1..30}; do
		if curl -sSf http://localhost:8080/ >/dev/null 2>&1; then
			open http://localhost:8080/
			return
		fi
		sleep 1
	done
}

open_browser &
npm run watch
