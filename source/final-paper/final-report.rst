Final paper information
=======================

*The project paper description below is subject to change, but should give you a general idea of what is needed*.

The final task for the course is to write a formal scientific paper about the results of Exercises 6 and 7.
Please use either the :doc:`template Jupyter notebook for the final paper <template>` or a word processor of your choice (MS Word, LibreOffice Writer, etc.) to create the report.
If you use a word processor, please use 12 pt Times New Roman (or a similar font) for your report with single spacing between lines.
The report should not be longer than 6-8 pages including text and figures (references and the appendix can be on additional pages, if needed).

**AI-LLM OK** - Use of AI large language models, such as ChatGPT, is OK for this assignment. Details can be found below under the heading "**Use of AI-LLM tools in this exercise**".

- You can find a short introduction on how to use ChatGPT for programming in Python on the `Geo-Python course website <https://geo-python-site.readthedocs.io/en/latest/notebooks/L4/use-of-ai.html>`__.

**The final paper is due by 17:00 on 12.1.2024**.

Use of AI-LLM tools for this assignment
---------------------------------------

The use of artificial intelligence large language model (AI-LLM) tools (e.g., ChatGPT) is allowed in this exercise. If you choose to use such tools, you must also:

#. Clearly acknowledge which tool(s) and versions of such tools were utilized to complete the exercise in a section of your notebook titled **Acknowledgements**.
#. Describe how the tool(s) was/were used to complete the exercise in a section titled **Use of AI tools** with enough detail that your results could be reproduced. For example, this would include:

   - Explaining how the tools have been used in general terms, such as descibing whether they have been used to generate draft text explaining what you have done for the exercise or to produce code you have used.
   - Listing all prompts that were used to produce code as well as the code that was produced (only the final code is needed if multiple prompts were used) for any sections where code has been generated using an AI tool.

     - Please also note if the generated code was modified by you and how.

Failure to acknowledge or describe your use of AI tools in this assignment (if used) is considered cheating and will be handled accordingly. Also, please be aware that although an AI tool may have been used to produce parts of your exercise, you are responsible for the results that are produced.

Paper sections
--------------

The research paper should include the following:

Abstract
~~~~~~~~

- A summary of the exercise and your results not longer than 250 words.

Introduction (2-4 paragraphs)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Clearly state the problem you are addressing (or hypothesis being tested) and it’s significance.
  This should be at least 1 paragraph long.
- Provide background information on the topic (e.g., from lecture notes and other sources including the reference papers).
  This should be at least 1 paragraph long.
- Provide 1 short paragraph about how this exercise contributes to understanding the stated problem.

Geological background (1-3 paragraphs)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Include a general overview of the main features of the study region, such as the major faults, rock units, variations in rainfall, etc.
- The goal here is to provide enough information to understand the main “drivers” of uplift and erosion of the thermochronometer data you’re studying.

Methods (at least 1 paragraph)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Clearly state the different methods used for each part of the exercise.
- For example, what equations are you solving in each part of the report, what are the variables or free parameters in each equation, how did you calculate the solution.
  Most probably you will want to have one paragraph to describe the thermal model and another to describe how thermochronometer ages are calculated.

**Use of AI tools (optional)**

- Optional sub section of Methods.
- Describe how the any AI tool(s) was/were used to complete this assignment here with enough detail that your results could be reproduced. This could include:

  - Explaining how the tools have been used in general terms, such as descibing whether they have been used to generate draft text explaining what you have done for the exercise or to produce code you have used.
  - Listing all prompts that were used to produce code for any sections where code has been generated using an AI tool. The code that was produced (only the final code is needed if multiple prompts were used) should be provided in the Appendix as either a code block or link.

    - Please also note if the generated code was modified by you and how.

Results (at least 1 paragraph)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- This part describes the results from your experiments (such as the exhumation rate that provide a minimum goodness-of-fit to the data).
  Include selected figures from Exercises 6 and 7.
  You should provide figure captions and at least 1 paragraph of text that describes each figure.

  .. note::

    The results section should *only* contain observations that resulted from your experiment.
    No interpretations of the results should be included in this section.

Discussion (several paragraphs)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- This part of the report discusses your results.
  It can have multiple subsections if you desire.
  Any interpretation you make from your plots/calculations should be presented here.
- Example discussion section topics include:

  - How do the exhumation rates that provide a minimum misfit to the different thermochronometer age systems vary?
  - How well do the model predictions compare to the measured ages?
  - What are the limitations of the modeling approach and how do they affect the results?
  - What are the implications of your results for the problem/hypothesis you stated in the introduction?
  - Have you sufficiently tested your hypothesis or are more experiments needed?
  - Any other topics you feel should be discussed about the implications of the model results.

Conclusions/Summary (1-2 paragraphs)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

- This should summarize the main findings of your exercise.

Acknowledgements (optional)
~~~~~~~~~~~~~~~~~~~~~~~~~~~

- Optional and a few sentences in length.
- If you have used an AI large language model (e.g., ChatGPT) for this assignment you should acknowledge which tool and version of the tool was used in this section.

References
~~~~~~~~~~

- Include a list of cited references from your report.
  This list should include at least 5 primary sources.

Appendices
~~~~~~~~~~

- If using a word processor, include a copy (copy/paste) of your ``introqg_functions.py`` script here.
  This can be in 8 point Courier font.
- If you have used an AI large language model, also include any code generated by an AI-LLM tool here.

Grading rubric
--------------

An overview of how the final papers will be assessed can be found in the `final paper grading table (PDF) <../_static/docs/IntroQG_final_project_grade_table.pdf>`__.
