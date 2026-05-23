class GreenfieldStorage:
    """BNB Greenfield memory & storage integration."""
    
    async def store_agent_memory(self, key, data):
        """Stores agent memory on BNB Greenfield."""
        # Persistent, decentralized memory for agent learning
        return await self.bnb.store(key, data)
