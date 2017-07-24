*** Settings ***
Documentation   Add New Survey Variable

*** Variables ***
#
${ADD_NEW_SURVEY_BACK_BUTTON}
${ADD_NEW_SURVEY_NEW_PROJECT_LINK}
#
${ADD_NEW_SURVEY_CONTENT_TITLE_BLANK_PROJECT}
${ADD_NEW_SURVEY_CONTENT_TITLE_360_SURVEY_TEMPLATE}
#
${ADD_NEW_SURVEY_BASIC_SURVEY_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_BUTTON}
${ADD_NEW_SURVEY_LEADERSHIP_EFFECTIVENESS_SURVEY_BUTTON}
#BASIC SURVEY
${ADD_NEW_SURVEY_BASIC_SURVEY_SURVEY_LINK}
${ADD_NEW_SURVEY_BASIC_SURVEY_DISTRIBUTIONS_LINK}
${ADD_NEW_SURVEY_BASIC_SURVEY_PROJECT_TITLE_TEXTFIELD}
${ADD_NEW_SURVEY_BASIC_SURVEY_SAVE_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_SAVE_AND_PREVIEW_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_START_BUTTON}
##ICON START MENU
${ADD_NEW_SURVEY_BASIC_SURVEY_ICON_MENU_START_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_CREATE_QUESTION_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_CREATE_QUESTION_MULTIPLE_CHOICES_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_CREATE_QUESTION_CHECKBOX_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_CREATE_QUESTION_TEXTBOX_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_DUPLICATE_QUESTION_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_ADD_HEADING_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_ADD_PAGE_BREAK_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_DELETE_QUESTION_BUTTON}
##MULTIPLE CHOICE
${ADD_NEW_SURVEY_BASIC_SURVEY_MULTIPLE_CHOICES_QUESTION}
${ADD_NEW_SURVEY_BASIC_SURVEY_MULTIPLE_CHOICES_QUESTION_NUMBER}
${ADD_NEW_SURVEY_BASIC_SURVEY_MULTIPLE_CHOICES_QUESTION_NAME_TEXTFIELD}
${ADD_NEW_SURVEY_BASIC_SURVEY_MULTIPLE_CHOICES_ANSWER_TEXTFIELD}
${ADD_NEW_SURVEY_BASIC_SURVEY_MULTIPLE_CHOICES_PLUS_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_MULTIPLE_CHOICES_REQUIRED_BOX}
##CHECKBOX
${ADD_NEW_SURVEY_BASIC_SURVEY_CHECKBOX_QUESTION}
${ADD_NEW_SURVEY_BASIC_SURVEY_CHECKBOX_QUESTION_NUMBER}
${ADD_NEW_SURVEY_BASIC_SURVEY_CHECKBOX_QUESTION_NAME_TEXTFIELD}
${ADD_NEW_SURVEY_BASIC_SURVEY_CHECKBOX_ANSWER_TEXTFIELD}
${ADD_NEW_SURVEY_BASIC_SURVEY_CHECKBOX_PLUS_BUTTON}
${ADD_NEW_SURVEY_BASIC_SURVEY_CHECKBOX_REQUIRED_BOX}
##TEXTBOX
${ADD_NEW_SURVEY_BASIC_SURVEY_TEXTBOX_QUESTION}
${ADD_NEW_SURVEY_BASIC_SURVEY_TEXTBOX_QUESTION_NUMBER}
${ADD_NEW_SURVEY_BASIC_SURVEY_TEXTBOX_QUESTION_NAME_TEXTFIELD}
${ADD_NEW_SURVEY_BASIC_SURVEY_TEXTBOX_COMMENT_AREA}
${ADD_NEW_SURVEY_BASIC_SURVEY_TEXTBOX_REQUIRED_BOX}
##ADD HEADING
${ADD_NEW_SURVEY_BASIC_SURVEY_ADD_HEADING_TITLE_TEXTFIELD}
##ADD PAGE BREAK
${ADD_NEW_SURVEY_BASIC_SURVEY_PAGE_BREAK_TITLE}
#360 SURVEY
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_LINK}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_LINK}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_LINK}
${ADD_NEW_SURVEY_360_SURVEY_DISTRIBUTION_LINK}
${ADD_NEW_SURVEY_360_SURVEY_PROJECT_TITLE_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_START_BUTTON}
#360 Compentencies
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_SAVE_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_START_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_ICON_MENU_START_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_QUESTION}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_QUESTION_NUMBER}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_QUESTION_NAME_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_EXPAND_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_COLLAPSE_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DELETE_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_NEW_COMPENTENCY_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DESCRIPTION_TEXTFIELD}
##BEHAVIOURS
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_BEHAVIOURS_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_BEHAVIOURS_DESCRIPTION_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_BEHAVIOURS_PLUS_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_BEHAVIOURS_CONTENT_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_BEHAVIOURS_X_BUTTON}
##BUILD ON STRENGTHS
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_STRENGTHS_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_STRENGTHS_DESCRIPTION_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_STRENGTHS_PLUS_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_STRENGTHS_CONTENT_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_STRENGTHS_X_BUTTON}
##DEVELOPMENT OPPORTUNITIES
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DEVELOPMENT_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DEVELOPMENT_DESCRIPTION_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DEVELOPMENT_PLUS_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DEVELOPMENT_CONTENT_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_DEVELOPMENT_X_BUTTON}
##RESOURCES
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_RESOURCES_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_RESOURCES_DESCRIPTION_TITLE}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_RESOURCES_PLUS_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_RESOURCES_CONTENT_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_COMPENTENCIES_RESOURCES_X_BUTTON}
#360 LIKERT SCALE
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_AUTOMATIC_OPTIONS_CHECKBOX}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_INCLUDE_DOES_NOT_APPLY_CHECKBOX}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_TEMPLATES_DROPDOWN}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_TOTAL_OPTIONS_DROPDOWN}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_SCALE_OPTIONS_VALUE}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_ASSIGNED_VALUE}
${ADD_NEW_SURVEY_360_SURVEY_LIKERT_SCALE_PLUS_BUTTON}
#360 SURVEY
${ADD_NEW_SURVEY_360_SURVEY_SAVE_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_SAVE_AND_PREVIEW_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_ICON_MENU_START_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_ADD_PAGE_BREAK_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_NEW_OPEN_TEXTBOX_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_DELETE_BUTTON}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_COMPENTENCIES_QUESTION}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_COMPENTENCIES_QUESTION_NUMBER}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_COMPENTENCIES_QUESTION_NAME_TEXTFIELD}
${ADD_NEW_SURVEY_360_SURVEY_SURVEY_COMPENTENCIES_QUESTION_REQUIRED_BOX}

