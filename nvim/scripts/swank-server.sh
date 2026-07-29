#!/usr/bin/env bash
# Start a Swank server for Conjure (Common Lisp).
# Default: 127.0.0.1:4005 — matches Conjure's common-lisp client.
set -euo pipefail

HOST="${SWANK_HOST:-127.0.0.1}"
PORT="${SWANK_PORT:-4005}"

if command -v ss >/dev/null 2>&1; then
  if ss -ltn "sport = :${PORT}" 2>/dev/null | grep -q ":${PORT}"; then
    echo "Swank already listening on ${HOST}:${PORT}"
    exit 0
  fi
elif command -v lsof >/dev/null 2>&1; then
  if lsof -iTCP:"${PORT}" -sTCP:LISTEN >/dev/null 2>&1; then
    echo "Swank already listening on ${HOST}:${PORT}"
    exit 0
  fi
fi

echo "Starting Swank on ${HOST}:${PORT} (SBCL)…"
exec sbcl --noinform \
  --eval "(ql:quickload :swank :silent t)" \
  --eval "(swank:create-server :interface \"${HOST}\" :port ${PORT} :dont-close t)" \
  --eval "(format t \"~&;; Swank ready on ${HOST}:${PORT}~%\")" \
  --eval "(loop (sleep 3600))"
