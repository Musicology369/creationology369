class JAIConsensus:
    """JAI's consensus layer - checks every action against giving economy principles"""
    
    @staticmethod
    async def verify_action(action_description: str) -> bool:
        checks = [
            "give" in action_description.lower() or "circulate" in action_description.lower(),
            "extract" not in action_description.lower(),
            "creator" in action_description.lower() or "benefit" in action_description.lower()
        ]
        if not all(checks):
            raise ValueError("Action violates giving economy principles")
        return True
