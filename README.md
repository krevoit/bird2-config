# Bird-config remastered for BIRD2

## Main changes 
- Fully inspected and modified for BIRD2 support
- Added an RPKI validator and filters out all invalids on exports
- Added IRR verification for specific networks
  - I created a short script that bases on AS-SET or ASN and creates a file with a variable name, that is injected into bird.conf
  - This only uses reputable IRR sources (no RADB etc.)
  - It splits it based on IPv4/IPv6
- Added better definitions for functions and filters

### Requirements
- GoRTR (I used the docker image)
- BGPQ3 or BGPQ4
- Bird2 (obviously)
- Crontab (or a similar program to execute a bash script task daily)

### Notes
- This is a slightly complicated configuration
- This is using my variables, and your environment will be different
- This configuration has not been checked, and even though it was working in my case, it may not be right for you.

## Future refinements
- Have peers in better templates and separate them from the main bird.conf file
- Once I get a better understanding of prepending, I will make some changes to the import and export filters
- Have alternate configs for only accepting RPKI valid
- Graceful restart function?
- Pull prefix limits from peeringdb :O
- Create a bash script to autogenerate the bird config based on your requirements - touch and go type setup
##### (The last 2 will take a long time)
##
### Notable commands
- TBA

#### Sources
- Rappet (The configuration he had was for Bird1 and is no longer available)
