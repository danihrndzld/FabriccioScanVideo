#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"
/usr/bin/env python3 "$DIR/perforation_stabilizer_app.py"
