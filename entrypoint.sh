#!/bin/bash

# Exit on any error
set -e

# Default to cpu if no target is specified
TARGET=${TARGET:-cpu}

echo "🚀 Starting GPU Parallelism container..."
echo "🎯 Target: $TARGET"
echo "📦 Running uv sync to install dependencies..."

# Run uv sync to install dependencies
uv sync --extra $TARGET

echo "✅ Dependencies installed successfully!"
echo "🐍 Starting interactive shell..."
echo ""

# Start an interactive shell
exec /bin/bash 