# This message is to notify the traffic light of a transition to a different phase in the countdown sequence.
# Though this only sends an unsigned byte, this message was defined for the sake of using ROS constants.

uint8 CONFIRMATION=1
uint8 NONE=2
uint8 GREEN=3
uint8 YELLOW=4
uint8 RED=5
uint8 EXPIRED=6

# Meta values
uint8 META_BEGIN=1
uint8 META_END=7
uint8 META_COUNT=6

uint8 state
