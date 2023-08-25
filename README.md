# Handlerify
Working dog training journal. Development using Flutter for multi-platform releases. 

# Building
Run `flutter packages pub run build_runner build` to generate code for dependency injection and database after adding any new injectable annotations or database changes.


# Progress
- [x] Basic UI layout with navigation implemented for Train & Statistics pages
- [x] Train page
    - [ ] Display daily statistics: number of sessions, elapsed time, and distance
    - [x] Display list of sessions for the day
    - [x] Allow a new training session to be started
- [x] Statistics page
    - [ ] Display statistics by time scale
    - [ ] Display list of sessions all sessions that is filterable
- [ ] New training session / activity page
  - [ ] Record audio from microphone for duration of session and save m4a to device
  - [ ] Save start time
  - [ ] Display timer hh:mm:ss.ms updated every 100ms while session is active
  - [ ] Save geolocation data for computing distance traveled
  - [ ] Option to enter one or more note tags
- [ ] Pause in-progress training session / activity
  - [ ] Option to delete session
  - [ ] Option to save session
  - [ ] Option to enter a custom name for session otherwise defaults to 'Month Day Session X'
  - [ ] Option to enter one or more location tags such as 'Home', 'Dog park' etc.
  - [ ] Automatic editable tagging of location based on GPS coordinates and existing tag information

# Machine Learning Ideas
## Handler Voice commands
### Markers
- Yes
- Good
- Free
- Ok
- Wrong
- No
- Eh
- Tsh
- Hey
- Clicker sound
- Clap sound

### Obedience
- Sit
- Down
- Stay
- Stand
- Heel
- Center
- Through
- Pad
- Place
- Bed
- Here
- Come
- Get it
- Enough
- Look
- Up
- Your seat
- Inside
- Custom command creation

## Canine vocalization
- Whining
- Barking
- Growling
- Sniffing
- Howling
- Panting
- Yelping
- Volume - handler's dog vs other dog

### Speaking Notes
- Behavior Reactive Lunging
- Behavior Redirection
- Behavior Frustration
- Behavior Fixation

### Structure
- Wait and give attention until released at thresholds
- Wait and give attention until release to eat food in bowl

### Tricks
- Speak
- Spin
- Touch

## Behavior Modification
- Reactive lunging
    - Fear based
    - Excitement
- Reactive Barking
- Reactive aggressive display
- Redirection
    - Handler
    - Other animal
- Unprovoked aggression

## Reward Schedule
- Always
- Variable
- Random

## Handler Emotional State
- Confident
- Frustrated
- Angry
- Anxious
- Relaxed

## Command Sentiment
- Commanding / Authoritative
- Asking / Passive
- Encouraging


## Micromanagement
- Commands per unit time
- Too much talking
- Repeated commands

## Canine Emotional State
- Anxious
- Excited
- Fearful
- Confident
- Restless
- Frustrated
- Angry

## Premack
- Order Event recommendation

## Excercise / Work
- Walk
- Run
- Play
- Agility
- Flirt pole
- Tug
- Spring pole
- Wall climb
- Bite work
- Nosework

## Tools
- Flat collar
- Slip lead
- Martingale collar
- Prong collar
- E-Collar
- Harness
- Head halter
- Long line

## Statistics

- Command Reliability
    - % of commands completed without intervention
- Reward Schedule
    - % of commands rewarded
- Positive Reinforcement vs Positive Punishment Ratio
    - Maybe operant conditioning chart
- Excercise time
- Training time
- Number of adverse behavioral events
- Number of preemptive interventions for adverse behavioral events
- Premack impact training events
- Command duration

## Recommender
- More/less excercise
- More/less structure
- Reward schedule
