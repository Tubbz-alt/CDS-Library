library ImmunosuppressiveDrugsRule version '0.1.0'
using FHIR version '4.0.0'
include FHIRHelpers version '4.0.0' called FHIRHelpers

parameter Patient Patient
parameter medication_request MedicationRequest

define RULE_APPLIES:
    true

define PRIORAUTH_REQUIRED:
  false

define DOCUMENTATION_REQUIRED:
  true

define RESULT_Summary:
  'Documentation Required.'

define RESULT_Details:
  'Documentation Required, please complete form via Smart App link.'

define RESULT_InfoLink:
    'https://www.cms.gov/Outreach-and-Education/Medicare-Learning-Network-MLN/MLNProducts/Downloads/ProviderComplianceTipsforHospitalBedsandAccessories-ICN909476.pdf'

define RESULT_QuestionnaireOrderUri:
    'Questionnaire/ImmunosuppressiveDrugs'

define RESULT_QuestionnaireProgressNoteUri:
    'Questionnaire/ImmunosuppressiveDrugsProgressNote'

define RESULT_requestId:
  medication_request
