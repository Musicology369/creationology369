#!/bin/bash
echo "🚀 Launching CREATIONology369 agents on BNB Agent Launch..."

# Example launch for one agent
npx @fetchai/agent-launch-cli deploy \
  --name MUSICO \
  --cost 369 \
  --template music-royalties \
  --chain bsc

echo "✅ Agent launched. Remember: Every agent must serve the giving economy."
