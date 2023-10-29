# Handlerify
Dog training journal. AKC FIT DOG title activity tracking. Development using Flutter for multi-platform releases. 

# Building
Run `flutter packages pub run build_runner build` to generate code for dependency injection and database after adding any new injectable annotations or database changes.


# Progress
- [x] Basic UI layout with navigation implemented for Train & Statistics pages ![](https://img.shields.io/badge/MVP-blue)
- [x] Train page ![](https://img.shields.io/badge/MVP-blue)
    - [ ] Display daily statistics:
      - [ ] number of sessions ![](https://img.shields.io/badge/MVP-blue)
      - [ ] elapsed time ![](https://img.shields.io/badge/MVP-blue)
      - [ ] distance
    - [x] Display list of sessions for the day ![](https://img.shields.io/badge/MVP-blue)
    - [x] Allow a new training session to be started ![](https://img.shields.io/badge/MVP-blue)
- [x] Statistics page ![](https://img.shields.io/badge/MVP-blue)
    - [ ] Display statistics by time scale
    - [x] Display list of sessions all sessions ![](https://img.shields.io/badge/MVP-blue)
    - [ ] Allow filtering of list based on datetime range
- [ ] New training session / activity page ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Record audio from microphone for duration of session and save m4a to device ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Save start time ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Display timer hh:mm:ss.ms updated every 100ms while session is active ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Save geolocation data for computing distance traveled
  - [ ] Option to enter one or more note tags ![](https://img.shields.io/badge/MVP-blue)
- [ ] Pause in-progress training session / activity ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Option to delete session ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Option to save session ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Option to enter a custom name for session otherwise defaults to 'Month Day Session X' ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Option to enter one or more location tags such as 'Home', 'Dog park' etc. ![](https://img.shields.io/badge/MVP-blue)
  - [ ] Automatic editable tagging of location based on GPS coordinates and existing tag information
  - [ ] Option to edit end time in case forgot to end session when done
    - [ ] Show map with waypoints and times to help figure out end time

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
