# App
## General
- inputs:
  - Company Name
  - Project title
  - Prepared By
- Buttons:
  - New sheet
  - Report sheet (pdf)
  - load from excel
  - Exit sheet
## Excavation
### Materials
- inputs:
  - Mud/shale/clay
  - Marl
  - stone
  - Phosphate
- outputs:
  - Revenue/t
  - Productions cost/t
  - stripping cost/t
## Roster
- inputs:
  - number days
  - hour shift
- outputs:
  - SR/m3
  - BESR
## Haulage & excavation system
### Equipment
- inputs:
  - Bulldozer
  - excavator
  - wheel loader
>> it should be a list of the available models
- inputs(equipment cycle time):
  - capacity (Dumper truck, actros, etc)
  - time to go and back (Dumper truck, actros, etc)
  - loading and unloading time (Dumper truck, actros, etc)
- outputs:
  - for each truck, show the output in m3/h (should choose the truck type to show its outputs)
  - Equipment overburden for each truck
  - Equipment phosphate for each truck
  - total equipment for each truck(Equipment overburden, Equipment phosphate)
  - show some empty slots so that the site engineer can take a decision and add it. This decision is the one that will be put in the report. 

