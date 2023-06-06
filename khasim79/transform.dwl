%dw 2.0
output application/json
/*
Here I am converting the given payload into expected output as of my output Requirement by using
multivalue selector
*/
---
{
    "descendant": payload..id,
    "multivalue": payload.*id,
    "multivalueSecondLevel": payload.secondLevel.*id,
    "multivalueThirdLevel":payload.secondLevel.thirdLevel.*id,
    "allTheIds" : payload..*id
}

