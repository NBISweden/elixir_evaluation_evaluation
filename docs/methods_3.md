# Methods 3

???- question "Which research question does this answer?"

    This part of the methods is related to RQ3:

    Which ELIXIR evaluation questions are concluded
    from a fully transparent process?

To find out which evaluation questions are concluded
from a fully transparent process,
we use a procedure that involves multiple phases (as shown
in figure `M3-F1`, each having goals as shown
in table `M3-T1`

!!! info "Overview of the procedure"

    ```mermaid
    flowchart TD
      data_set_1[1.All suggested questions]
      data_set_2[2.All suggested and ELIXIR questions]
      data_set_3[3.Reasons for/against each question]
      data_set_4[4.Votes for/against each question]
      data_set_5[5.Useful -sometimes overlapping- questions]
      data_set_6[6.Useful questions]

      data_set_1 --> |merge identical questions| data_set_2
      data_set_2 --> data_set_3
      data_set_2 --> data_set_4
      data_set_3 --> |merge reasons| data_set_4
      data_set_2 --> data_set_5
      data_set_4 --> |follow decision rule| data_set_5
      data_set_5 --> |reduce overlap| data_set_6
    ```

    > Figure `M3-F1`. Overview of the procedure

!!! info "Goals of each phase in the procedure"

    Phase|Goal
    -----|----------------------------------------------------------------------
    1    |Collect all questions that are considered 'good' by at least 1 NBIS trainer
    2    |Collect all questions that are considered 'good' by NBIS and ELIXIR
    3    |Collect all reasons for and against each question
    4    |Rate all questions
    5    |Select the questions that are considered good by the NBIS community
    6    |Merge overlapping questions

    > Table `M3-T1`

Here each step of the procedure is described.

## Phase 1

The goal of phase 1 is to collect all questions that are considered
'good' by at least 1 NBIS trainer.

To do so, trainers need to

- be aweare of this experiment
- know the goals of ELIXIR
- be invited to submit their questions
- do this before a deadline

At an NBIS Training Liaison meeting, introduce this procedure to the people
involved in training, as well as advertise in the relevant communication
channels. Present, or share an online presentation online that shows the
rationale behind this experiment, as well as the goals of ELIXIR.

In an online anonymous survey, repeat the rationale of this experiment,
as well as the ELIXIR goal of the evaluation.

Set a deadline of several weeks. Remind trainers to submit 1 week before
the deadline ends.

Collect all questions that teachers think are useful anonymously,
creating [data_set_1_raw.csv](data_set_1_raw.csv)

???- question "How does that data set look like?"

    Here is an example:

    ```text
    question,reply
    What is your favorite animal?,Open question
    What is your favorite color?,Open question
    What is your favorite colour?,Open question
    What is your favorite color?,orange;red
    What is your favorite animal?,Open question
    ```

As there may be duplicates in the data set,
remove the duplicates transparantly,
creating [data_set_1.csv](data_set_1.csv)
and describe the process to do so in [data_set_1_merge.md](data_set_1_merge.md).

???- question "How does that data set look like?"

    Here is an example:

    ```text
    question,reply
    What is your favorite animal?,Open question
    What is your favorite color?,Open question
    What is your favorite color?,orange;red
    ```

    ???- question "How does the process description look like?"

    Here is an example:

    ``````text
    # Data set 1 merge

    There were 5 questions.

    Of those 5, here are 2 questions with different spelling:

    ```
    What is your favorite color?,Open question
    What is your favorite colour?,Open question
    ```

    RJCB removed the one with `colour`, resulting in 4 questions.

    Of the remaining 4, here are 2 identical questions:

    ```
    What is your favorite animal?,Open question
    What is your favorite animal?,Open question
    ```

    RJCB removed one of these duplicates, resulting in 3 questions.
    ``````

## Phase 2

- Combine `Data Set 1` with the current NBIS questions. Mix these questions
  randomly,
  creating [data_set_2.csv](data_set_2.csv)

???- question "How does that data set look like?"

    Here is an example:

    ```text
    question,reply
    What is your favorite color?,orange;red
    Would you recommend the course?,Yes;No;Maybe
    What is your favorite animal?,Open question
    What is your favorite color?,Open question
    ```

- Per question, as the teachers anonymously for reasons why
  they would be for or against each question.
  The collection of reasonings per questions results in
  [data_set_3.csv](data_set_3.csv)

???- question "How does that data set look like?"

    Here is an example:

    <!-- markdownlint-disable MD013 --><!-- Plain text cannot be split up over lines, hence will break 80 characters per line -->

    ```text
    question,reply,vote,reason
    What is your favorite color?,orange;red,Con,Irrelevant to the course
    Would you recommend the course?,Yes;No;Maybe,Con,This is irrelavant for course quality
    Would you recommend the course?,Yes;No;Maybe,Pro,This is a good proxy for course quality
    What is your favorite animal?,Open question,Con,Irrelevant to the course
    What is your favorite animal?,Open question,Pro,Would be nice to know
    What is your favorite color?,Open question,Con,Irrelevant to the course
    ```

    <!-- markdownlint-enable MD013 -->

- Per question, and its pros and cons, vote anonymously if the question
  is useful enough to be included in a survey. Allow 'no', 'yes' and neutral
  [data_set_4.csv](data_set_4.csv)

???- question "How does that data set look like?"

    Here is an example:

    ```text
    question,reply,vote
    What is your favorite color?,orange;red,No
    What is your favorite color?,orange;red,No
    What is your favorite color?,orange;red,Neutral
    Would you recommend the course?,Yes;No;Maybe,No
    Would you recommend the course?,Yes;No;Maybe,Yes
    Would you recommend the course?,Yes;No;Maybe,Yes
    What is your favorite animal?,Open question,No
    What is your favorite animal?,Open question,No
    What is your favorite animal?,Open question,Yes
    What is your favorite color?,Open question,No
    What is your favorite color?,Open question,No
    What is your favorite color?,Open question,Neutral
    ```

The end product is the set of questions that had more 'yes' than 'no' votes:
these are the questions that this NBIS community thinks are useful.

???- question "How does that data set look like?"

    From the example data, this would be the result:

    ```text
    question,reply,vote
    Would you recommend the course?,Yes;No;Maybe
    ```

The results can be found at [data_set_5.csv](data_set_5.csv).

## RQ4: How different are the newly suggested questions from the current ones?

The results can be found at [RQ4 results](results_4.md).
