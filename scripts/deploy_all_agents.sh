#!/bin/bash
echo "🚀 Deploying CREATIONology369 agents on BNB Agent Launch..."

# Example for Pillar 1 agents (expand as needed)
for agent in MUSICO TAURO CREA; do
  npx @fetchai/agent-launch-cli deploy \
    --name "$agent" \
    --cost 369 \
    --template "creationology-$agent" \
    --chain bsc
done

echo "✅ All agents deployed. Remember: Every agent must serve the giving economy."
