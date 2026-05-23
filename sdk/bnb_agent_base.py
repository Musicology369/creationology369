from uagents import Agent
from bnb_agent_sdk import BNBChainAgent

class GivingEconomyAgent(Agent):
    """Base class that forces every agent to embody the giving economy."""
    
    def __init__(self, name, seed):
        super().__init__(name=name, seed=seed)
        self.bnb = BNBChainAgent()
        self.consensus_check = lambda action: "Does this give more than it extracts?" in action

    async def verify_circular(self, action):
        # JAI consensus hook
        if not self.consensus_check(action):
            raise ValueError("Action violates giving economy principles")
        return True
