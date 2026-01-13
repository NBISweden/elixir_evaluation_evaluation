# Methods 3 Phase 1 Processing

The goals of this page is to transparantly process the data from
the 'Methods 3', phase 1. 

The raw data can be found at [`data_set_1_raw.csv`](data_set_1_raw.csv),
where the resulting processed data can be found at
[`data_set_1_merged.csv`](data_set_1_merged.csv),

Filtered out are:

- administrative questions, e.g. email addresses
- duplicates

## Step 1: filtering

Here is are the verbatum suggestions without time stamps, with an identifier added,
where the first number (always a `1` here) denotes the step.
The second number denotes the ID within that step.

ID   |Suggestion
-----|-------------------------------------------------------------------------------------------------------------------------------
1.1  |`STF form here https://docs.google.com/forms/d/e/1FAIpQLSejIRO_EHppHI9vC9QCoXFOM3DsEPU43-Pa-S-Kj5coZTuZtA/viewform?usp=sharing`
1.2  |`For each learning outcome, have the participants self-assess if they were fulfilled`
1.3  |`What is one thing you learned that you didn't expect to?`
1.4  |`What part of the training was most useful for your work/research?`
1.5  |`How did you hear about this workshop? (e.g., email, community website, colleague, social media, denbi event page)`
1.6  |`Was there anything you felt was missing from the workshop? (free text)`
1.7  |`Do you feel you can apply the knowledge gained in your daily work? (Yes, Partially, No) If partially or not, would you be interested in a more advanced workshop focused on a specific topic? (free text)`
1.8  |`The general feeling after the completion, What was difficult to understand, what would you change if you could`
1.9  |`- Was the course well organised?  yes, no or a scale -Was the course content well structured and balanced between theory and hands on?yes, no or a scale -Were the material supporting the course well designed and easy to use? yes, no or a scale -What were the strengths of this course ? free text -What aspects of this course could be improved (changes, additions) ? free text -Do you have any feedback for the trainer(s), which could be positive comments or things to improve? They can be related to the effectiveness of training delivery, oral expression, ability to answer questions, attitudes, domain expertise, ease in facilitating training, or any other.  free text -Were you able to transpose and apply the theorical and practical knowledge into your own research work/scientific question? scale and or free text`
1.10 |`How useful were the training materials (slides, datasets, exercises)? Scale from 1 (not) to 10 (very much)`
1.11 |`What improvements would you suggest for the materials? Free text`
1.12 |`I feel confident applying what I learned in my future work. Scale from 1 (not) to 10 (very much)`
1.13 |`hat would help you apply this training more effectively? Free text`
1.14 |`I suggest to add: 1. Was the theoretical content useful to carry out the exercises? 2. Were there sufficient trainers and helpers to answer your questions?`
1.15 |`The question 'Any (other) feedback?' with a textbox that can be edited freely (i.e. no max count of words)`
1.16 |`For all teachers: 'Say something positive about teacher X' and 'Say something teacher X can improve', both with text boxes that can be edited freely (i.e. no min nor max word count)`
1.17 |`For all learning outcomes:  Give you confidence levels of the following statements, using this scale:  0: I don't know even what this is about ...? 1: I have no confidence I can do this 2: I have low confidence I can do this 3: I have some confidence I can do this 4: I have good confidence I can do this 5: I absolutely can do this!  Then let people pick either no answer or one of these answers.`

The goal of this step is to assign a new ID (starting with a `2`) for:

- each of the questions in the same suggestion 
- each question to assess course quality
  (i.e. filter out administrative questions)

Duplicates will be removed in the next step.

### 1.1

This suggestion contains
[a link to the NBIS Short Term Feedback (STF) survey](https://docs.google.com/forms/d/e/1FAIpQLSejIRO_EHppHI9vC9QCoXFOM3DsEPU43-Pa-S-Kj5coZTuZtA/viewform?usp=sharing).

Here I collect all questions from that survey and determine 

- `[single-line open answer]` Event code.

This is an adminstrative question and will be filtered out.

- Demographics:
    - `[multiple choice question]` What is your career stage?
        - Undergraduate student
        - Masters student
        - PhD candidate
        - Postdoctoral researcher
        - Senior scientist/Principal investigator
        - Research assistant/ Technician / Support staff
        - Research engineer/Staff scientist/Technical scientist
        - Industry scientist
        - Other: `[single-line open answer]`

This is an adminstrative question and will be filtered out.

    - `[multiple checkbox question]` University/Organisation. Please select all relevant choices.
        - Chalmers
        - Göteborgs Universitet
        - Karolinska Institutet
        - Kungliga Tekniska Högskolan, KTH
        - Linköpings Universitet
        - Luleå Universitet
        - Lunds Universitet
        - Naturhistoriska Riksmuseet
        - Örebro Universitet
        - Stockholms Universitet
        - Sveriges lantbruksuniversitet, SLU
        - Umeå Universitet
        - Uppsala Universitet
        - SciLifeLab
        - Other: `[single-line open answer]`

This is an adminstrative question and will be filtered out.

    - `[multiple choice question]` What is your gender?
        - Man
        - Woman
        - Prefer not to say
        - Non-binary
        - Other: `[single-line open answer]`

This is an adminstrative question and will be filtered out.

- Quality Metrics

    - `[multiple choice question]` Have you used the tools/resources covered in the course before?
        - Never - unaware of them
        - Never - used others
        - Never - aware of them, but not used them
        - Occasionally (once in a while to monthly)
        - Frequently (weekly to daily)

This is a question to assess course quality, as it is part of a session
called 'Quality metrics'. It will be labelled `2.1`.

    - `[multiple choice question]` Will you use the tools/resources covered in the course again?
        - Yes
        - No
        - Maybe

This is a question to assess course quality, as it is part of a session
called 'Quality metrics'. It will be labelled `2.2`.

    - `[multiple choice question]` Would you recommend this course?
        - Yes
        - No
        - Maybe

This is a question to assess course quality, as it is part of a session
called 'Quality metrics'. It will be labelled `2.3`.

    - `[multiple choice question]` What is your overall rating for the course?
        - Excellent (5)
        - Very Good (4)
        - Good (3)
        - Satisfactory (2)
        - Poor (1)

This is a question to assess course quality, as it is part of a session
called 'Quality metrics'. It will be labelled `2.4`.

- Additional Questions - Training content/information
    - `[multi-line open answer]` What part of the training did you enjoy the most?

This is a question to assess course quality. It will be labelled `2.5`.

    - `[multi-line open answer]` What part of the training did you enjoy the least?

This is a question to assess course quality. It will be labelled `2.6`.

    - `[multiple choice question]` The balance of theoretical and practical content was
        - Too theoretical
        - Too practical
        - About right

This is a question to assess course quality. It will be labelled `2.7`.

    - `[multiple choice question]` How do you rate the pre-course information given?
        - 1 (Very unsatisfactory/Not useful)
        - 2
        - 3
        - 4
        - 5 (Very good/Very useful)

This is a question to assess course quality. It will be labelled `2.8`.

    - `[multiple choice question]` PLEASE RATE EACH SESSION OF THE COURSE
        - Did not attend
        - Poor (1)
        - Satisfactory (2)
        - Good (3)
        - Very Good (4)
        - Excellent (5)
        - Other: `[single-line open answer]`

This is a question to assess course quality. It will be labelled `2.9`.

    - `[multi-line open answer]` Comments on teaching staff. Help our teaching staff to improve by providing constructive feedback

This is a question to assess course quality. It will be labelled `2.10`.

    - `[multiple choice question]` Was the course held at a teaching level matching your training? Please describe in "Other" if you want to give any additional information to the Course leader(s)
        - Yes
        - No
        - Other: `[single-line open answer]`

This is a question to assess course quality. It will be labelled `2.11`.

    - `[multi-line open answer]` STATEMENTS REGARDING WHAT PARTICIPANTS COULD DO before THE TRAINING EVENT (customised to a specific training)

This is a question to assess course quality. It will be labelled `2.12`.

    - `[multi-line open answer]` STATEMENTS REGARDING WHAT PARTICIPANTS CAN DO after THE TRAINING EVENT (customised to a specific training)

This is a question to assess course quality. It will be labelled `2.13`.

    - `[multi-line open answer]` What other topics would you like to see covered in the future?

This is a question to assess course quality. It will be labelled `2.14`.

    - `[multi-line open answer]` Any other comments?

This is a question to assess course quality. It will be labelled `2.15`.

- Additional Questions - Training logistics

- `[multiple choice question]` What would be the prefered length of the course? 
    - 1 day
    - 2 days
    - 3 days
    - 4 days
    - 5 days

I consider this not to be a question to assess course quality.
It will be filtered out.

- `[multiple choice question]` What is the best format for this course?
    - Onsite
    - Online
    - Online but spaced out
    - Other: `[single-line open answer]`

I consider this not to be a question to assess course quality.
It will be filtered out.

- `[multiple choice question]` How did you like the localities of the course (rooms and surrondings)?
    - 1 (Not at all)
    - 2
    - 3
    - 4
    - 5 (Very much)

I consider this not to be a question to assess course quality.
It will be filtered out.

- `[multiple choice question]` How did you like the lunch(es) and "fika(s)"?

    - 1 (Not at all)
    - 2
    - 3
    - 4
    - 5 (Very much)

I consider this not to be a question to assess course quality.
It will be filtered out.

- `[multi-line open answer]` Any other comments?

I consider this not to be a question to assess course quality,
as it is part of a 'Training logistics' session.
Taking a look at the other questions in that session, this
question is about any other comments on the training logistics.
That means that this is not a question about course quality.
It will be filtered out.

### 1.2

- For each learning outcome, have the participants self-assess if they were fulfilled

This is a question to assess course quality. It is unclear in what form the
question needs to be answered: should it be a yes/no checkbox, or a scale?

It will be labelled `2.16`.

### 1.3

- What is one thing you learned that you didn't expect to?

This is a question to assess course quality. It will be labelled `2.17`.

### 1.4

- What part of the training was most useful for your work/research?`

This is a question to assess course quality. It will be labelled `2.18`.

### 1.5

- How did you hear about this workshop? (e.g., email, community website, colleague, social media, denbi event page)

This is an adminstrative question and will be filtered out.

I do see how this question may indirectly assesses course quality:
if colleagues recommend the course, this may somehow be correlated
to higher course quality.

### 1.6

- Was there anything you felt was missing from the workshop? (free text)

This is a question to assess course quality. It will be labelled `2.19`.

### 1.7

- Do you feel you can apply the knowledge gained in your daily work? (Yes, Partially, No)

This is a question to assess course quality. It will be labelled `2.20`.

- If partially or not, would you be interested in a more advanced workshop focused on a specific topic? (free text)`

This is an adminstrative question and will be filtered out.

I do see how this question may indirectly assesses course quality:
if there is a desire to do a follow-up workshop,
this may somehow be correlated
to higher course quality.

### 1.8

- The general feeling after the completion

This is a question to assess course quality. It will be labelled `2.21`.

- What was difficult to understand

This is a question to assess course quality. It will be labelled `2.22`.

- what would you change if you could

This is a question to assess course quality. It will be labelled `2.23`.

### 1.9

- Was the course well organised?  yes, no or a scale 

This is a question to assess course quality. It will be labelled `2.24`.

- Was the course content well structured and balanced between theory and hands on? yes, no or a scale 

This is a question to assess course quality. It will be labelled `2.25`.

- Were the material supporting the course well designed and easy to use? yes, no or a scale 

This is a question to assess course quality. It will be labelled `2.26`.

- What were the strengths of this course ? free text 

This is a question to assess course quality. It will be labelled `2.27`.

- What aspects of this course could be improved (changes, additions) ? free text 

This is a question to assess course quality. It will be labelled `2.28`.

- Do you have any feedback for the trainer(s), which could be positive comments or things to improve? They can be related to the effectiveness of training delivery, oral expression, ability to answer questions, attitudes, domain expertise, ease in facilitating training, or any other.  free text 

This is a question to assess course quality. It will be labelled `2.29`.

- Were you able to transpose and apply the theorical and practical knowledge into your own research work/scientific question? scale and or free text`

This is a question to assess course quality. It will be labelled `2.30`.

### 1.10

- How useful were the training materials (slides, datasets, exercises)? Scale from 1 (not) to 10 (very much)

This is a question to assess course quality. It will be labelled `2.31`.

### 1.11

- What improvements would you suggest for the materials? Free text

This is a question to assess course quality. It will be labelled `2.32`.

### 1.12

- I feel confident applying what I learned in my future work. Scale from 1 (not) to 10 (very much)

This is a question to assess course quality. It will be labelled `2.33`.

### 1.13

- What would help you apply this training more effectively? Free text

This is a question to assess course quality. It will be labelled `2.34`.

### 1.14

- Was the theoretical content useful to carry out the exercises?

This is a question to assess course quality. It will be labelled `2.35`.

- Were there sufficient trainers and helpers to answer your questions?

This is a question to assess course quality. It will be labelled `2.36`.

### 1.15

- The question 'Any (other) feedback?' with a textbox that can be edited freely (i.e. no max count of words)

This is a question to assess course quality. It will be labelled `2.37`.

### 1.16

- For all teachers: 'Say something positive about teacher X' with text boxes that can be edited freely (i.e. no min nor max word count)

This is a question to assess course quality. It will be labelled `2.38`.

- For all teachers: 'Say something teacher X can improve' with text boxes that can be edited freely (i.e. no min nor max word count)

This is a question to assess course quality. It will be labelled `2.39`.

### 1.17

- `[Multiple choice, no choise is allowed]` For all learning outcomes:  Give you confidence levels of the following statements, using this scale: 
    - 0: I don't know even what this is about ...?
    - 1: I have no confidence I can do this
    - 2: I have low confidence I can do this
    - 3: I have some confidence I can do this
    - 4: I have good confidence I can do this
    - 5: I absolutely can do this! 

This is a question to assess course quality. It will be labelled `2.40`.

## Step 2: remove duplicates


