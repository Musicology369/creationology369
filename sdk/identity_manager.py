from bnb_agent_sdk import BNBChainAgent

class IdentityManager:
    """ERC-8004 Identity management for all agents"""
    
    def __init__(self, agent):
        self.agent = agent
        self.bnb = BNBChainAgent()
    
    async def register_identity(self):
        """Register agent on-chain with ERC-8004"""
        identity = await self.bnb.register_erc8004(
            name=self.agent.name,
            description="CREATIONology369 agent - giving economy",
            metadata={"pillar": self.agent.pillar}
        )
        return identity
