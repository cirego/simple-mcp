#!/usr/bin/env bash

set -euo pipefail

pushd server
cargo build
popd

npx @modelcontextprotocol/inspector ./server/target/debug/simple-mcp-server
