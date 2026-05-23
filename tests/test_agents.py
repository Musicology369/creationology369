import pytest
from protocols.consensus_protocol import JAIConsensus

async def test_giving_economy_principles():
    """Ensure every action passes JAI consensus"""
    await JAIConsensus.verify_action("give 96.30% directly to the creator")
    await JAIConsensus.verify_action("circulate value through the community")
    
    # This should fail
    with pytest.raises(ValueError):
        await JAIConsensus.verify_action("extract fees from creators")
