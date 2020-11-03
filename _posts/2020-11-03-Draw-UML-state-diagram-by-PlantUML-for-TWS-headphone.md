---
layout: post
categories: tech
title: Draw UML state diagram by PlantUML for TWS headphone
typora-root-url: ../
---
## Draw UML state diagram by PlantUML for TWS headphone

```bash
@startuml inline_umlgraph_1.png
start
    if (IsInCase()) then (yes)
        :Earbud is in case, do nothing;
        end
    endif
    if (IsPairedWithHandset()) then (yes)
        :Already paired with handset, do nothing;
        end
    endif
    if (IsPeerPairing()) then (yes)
        :Peer is already pairing, do nothing;
        end
    endif
    if (IsPeerPairWithHandset()) then (yes)
        :Peer is already paired with handset, do nothing;
        end
    endif
    if (IsPeerInCase()) then (yes)
        :Start pairing, peer is in case;
        stop
    endif

    :Both Earbuds are out of case;
    if (IsPeerLeftEarbud) then (yes)
        stop
    else (no)
        end
    endif
@enduml
@startuml inline_umlgraph_2.png
start
    if (IsPairedWithPeer()) then (yes)
        :Forward any link-keys to peer;
        stop
    else (no)
        :Not paired;
        end
@enduml
@startuml inline_umlgraph_3.png
start
if (IsAvStreaming()) then (yes)
    :Run rule, as out of ear with A2DP streaming;
    stop
endif
end
@enduml
@startuml inline_umlgraph_4.png
start
if (IsScoActive()) then (yes)
    :Run rule, as out of ear with SCO active;
    stop
endif
end
@enduml
@startuml inline_umlgraph_5.png
start
if (Not IsLedsInEarEnabled()) then (yes)
    :Run rule, as out of ear and LEDs were disabled in ear;
    stop
endif
end
@enduml
@startuml inline_umlgraph_6.png
start
if (Not IsLedsInEarEnabled()) then (yes)
    :Run rule, as in ear and LEDs are disabled in ear;
    stop
endif
end
@enduml
@startuml inline_umlgraph_7.png
start
if (IsInCase() and DfuUpgradePending()) then (yes)
    :DFU upgrade can start as it was pending and now in case;
    stop
endif
end
@enduml
@startuml inline_umlgraph_8.png
start
if (IsInCase() and DfuUpgradePending()) then (yes)
    :DFU upgrade can start as it was pending and now in case;
    stop
endif
end
@enduml
@startuml inline_umlgraph_9.png
note "For clarity not all state transitions shown" as N1
note "For clarity TERMINATING substate is not shown in all parent states" as N2
note top of STARTUP
  _IDLE is any of the idle states
    IN_CASE_IDLE
    OUT_OF_CASE_IDLE
    IN_EAR_IDLE
end note

[*] -down-> INITIALISING : Power On
INITIALISING : App module and library init
INITIALISING --> DFU_CHECK : Init Complete

DFU_CHECK : Is DFU in progress?
DFU_CHECK --> STARTUP : No DFU in progress

STARTUP : Check for paired peer earbud
STARTUP : Attempt peer synchronisation
STARTUP : After attempt go to _IDLE
STARTUP --> PEER_PAIRING : No paired peer

FACTORY_RESET : Disconnect links, deleting all pairing, reboot
FACTORY_RESET : Only entered from _IDLE
FACTORY_RESET -r-> INITIALISING : Reboot

PEER_PAIRING : Pair with peer earbud
PEER_PAIRING --> STARTUP
HANDSET_PAIRING : Pair with handset
HANDSET_PAIRING : Return to _IDLE state

state IN_CASE #LightBlue {
    IN_CASE : Charger Active
    IN_CASE : Buttons Disabled
    DFU : Device Upgrade
    DFU --> IN_CASE_IDLE #LightGreen : DFU Complete
    DFU_CHECK --> DFU : DFU in progress
    IN_CASE_IDLE : May have BT connection(s)
    IN_CASE_IDLE -up-> DFU : Start DFU
}

state OUT_OF_CASE #LightBlue {
    OUT_OF_CASE_IDLE : May have BT connection(s)
    OUT_OF_CASE_IDLE : Start dormant timer
    OUT_OF_CASE_SOPORIFIC : Allow sleep
    OUT_OF_CASE_SOPORIFIC_TERMINATING : Disconnect links
    OUT_OF_CASE_SOPORIFIC_TERMINATING : Inform power prepared to sleep
    OUT_OF_CASE_IDLE #LightGreen --> IN_CASE_IDLE : In Case
    IN_CASE_IDLE --> OUT_OF_CASE_IDLE : Out of Case
    OUT_OF_CASE_IDLE -u-> OUT_OF_CASE_SOPORIFIC : Idle timeout
    OUT_OF_CASE_SOPORIFIC -->  OUT_OF_CASE_SOPORIFIC_TERMINATING : POWER_SLEEP_PREPARE_IND
    OUT_OF_CASE_IDLE --> HANDSET_PAIRING : User or Auto pairing
    OUT_OF_CASE_BUSY : Earbud removed from ear
    OUT_OF_CASE_BUSY : Audio still playing
    OUT_OF_CASE_BUSY #LightGreen --> OUT_OF_CASE_IDLE : Out of ear audio timeout
    OUT_OF_CASE_BUSY --> OUT_OF_CASE_IDLE : Audio Inactive
}

state IN_EAR #LightBlue {
    IN_EAR_IDLE : May have BT connection(s)
    IN_EAR_IDLE #LightGreen -l-> OUT_OF_CASE_IDLE : Out of Ear
    IN_EAR_IDLE -u-> IN_EAR_BUSY : Audio Active
    OUT_OF_CASE_IDLE --> IN_EAR_IDLE : In Ear
    IN_EAR_BUSY : Streaming Audio Active (A2DP or SCO)
    IN_EAR_BUSY : Tones audio available in other states
    IN_EAR_BUSY #LightGreen -d-> IN_EAR_IDLE : Audio Inactive
    IN_EAR_BUSY -l-> OUT_OF_CASE_BUSY : Out of Ear
    OUT_OF_CASE_BUSY -l-> IN_EAR_BUSY : In Ear
    IN_EAR_IDLE --> HANDSET_PAIRING : User or Auto pairing
}
@enduml
@startuml inline_umlgraph_10.png
note "For clarity not all state transitions shown" as N1
note "For clarity TERMINATING substate is not shown in all parent states" as N2
note top of STARTUP
  _IDLE is any of the idle states
    IN_CASE_IDLE
    OUT_OF_CASE_IDLE
    IN_EAR_IDLE
end note

[*] -down-> INITIALISING : Power On
INITIALISING : App module and library init
INITIALISING --> DFU_CHECK : Init Complete

DFU_CHECK : Is DFU in progress?
DFU_CHECK --> STARTUP : No DFU in progress

STARTUP : Check for paired peer earbud
STARTUP : Attempt peer synchronisation
STARTUP : After attempt go to _IDLE
STARTUP --> PEER_PAIRING : No paired peer

FACTORY_RESET : Disconnect links, deleting all pairing, reboot
FACTORY_RESET : Only entered from _IDLE
FACTORY_RESET -r-> INITIALISING : Reboot

PEER_PAIRING : Pair with peer earbud
PEER_PAIRING --> STARTUP
HANDSET_PAIRING : Pair with handset
HANDSET_PAIRING : Return to _IDLE state

state IN_CASE #LightBlue {
    IN_CASE : Charger Active
    IN_CASE : Buttons Disabled
    DFU : Device Upgrade
    DFU --> IN_CASE_IDLE #LightGreen : DFU Complete
    DFU_CHECK --> DFU : DFU in progress
    IN_CASE_IDLE : May have BT connection(s)
    IN_CASE_IDLE -up-> DFU : Start DFU
}

state OUT_OF_CASE #LightBlue {
    OUT_OF_CASE_IDLE : May have BT connection(s)
    OUT_OF_CASE_IDLE : Start dormant timer
    OUT_OF_CASE_SOPORIFIC : Allow sleep
    OUT_OF_CASE_SOPORIFIC_TERMINATING : Disconnect links
    OUT_OF_CASE_SOPORIFIC_TERMINATING : Inform power prepared to sleep
    OUT_OF_CASE_IDLE #LightGreen --> IN_CASE_IDLE : In Case
    IN_CASE_IDLE --> OUT_OF_CASE_IDLE : Out of Case
    OUT_OF_CASE_IDLE -u-> OUT_OF_CASE_SOPORIFIC : Idle timeout
    OUT_OF_CASE_SOPORIFIC -->  OUT_OF_CASE_SOPORIFIC_TERMINATING : POWER_SLEEP_PREPARE_IND
    OUT_OF_CASE_IDLE --> HANDSET_PAIRING : User or Auto pairing
    OUT_OF_CASE_BUSY : Earbud removed from ear
    OUT_OF_CASE_BUSY : Audio still playing
    OUT_OF_CASE_BUSY #LightGreen --> OUT_OF_CASE_IDLE : Out of ear audio timeout
    OUT_OF_CASE_BUSY --> OUT_OF_CASE_IDLE : Audio Inactive
}

state IN_EAR #LightBlue {
    IN_EAR_IDLE : May have BT connection(s)
    IN_EAR_IDLE #LightGreen -l-> OUT_OF_CASE_IDLE : Out of Ear
    IN_EAR_IDLE -u-> IN_EAR_BUSY : Audio Active
    OUT_OF_CASE_IDLE --> IN_EAR_IDLE : In Ear
    IN_EAR_BUSY : Streaming Audio Active (A2DP or SCO)
    IN_EAR_BUSY : Tones audio available in other states
    IN_EAR_BUSY #LightGreen -d-> IN_EAR_IDLE : Audio Inactive
    IN_EAR_BUSY -l-> OUT_OF_CASE_BUSY : Out of Ear
    OUT_OF_CASE_BUSY -l-> IN_EAR_BUSY : In Ear
    IN_EAR_IDLE --> HANDSET_PAIRING : User or Auto pairing
}
@enduml

```

