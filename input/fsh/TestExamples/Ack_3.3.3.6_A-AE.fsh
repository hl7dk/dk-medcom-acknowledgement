Instance: 674340f6-3a29-4c7a-afe4-12cac260a980
InstanceOf: MedComAcknowledgementMessage
Title: "Ack_3.3.3.6 - Example Acknowledgement message - Fatal error"
Description: "Ack_3.3.3.6 - Example Acknowledgement message - Fatal error"
* type = $BundleType#message
* timestamp = 2024-12-05T11:09:00Z
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/MessageHeader/ec5802cb-0229-4156-ad20-e05c952af9ff"
* entry[=].resource = ec5802cb-0229-4156-ad20-e05c952af9ff
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/59db7751-a217-4cb0-a9f4-87a21097b6de"
* entry[=].resource = 59db7751-a217-4cb0-a9f4-87a21097b6de
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Provenance/a55e63cc-8a88-45b7-8e8a-882f6cb36e14"
* entry[=].resource = a55e63cc-8a88-45b7-8e8a-882f6cb36e14
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/cf76194d-914f-45c3-89e3-7ec596d05713"
* entry[=].resource = cf76194d-914f-45c3-89e3-7ec596d05713
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/Organization/fa5eba7a-8bfc-4226-8473-1065b0c6562d"
* entry[=].resource = fa5eba7a-8bfc-4226-8473-1065b0c6562d
* entry[+].fullUrl = "https://medcomfhir.dk/ig/acknowledgement/OperationOutcome/28ca031e-294c-4471-b5bc-bde7aa20df3c"
* entry[=].resource = 28ca031e-294c-4471-b5bc-bde7aa20df3c

Instance: ec5802cb-0229-4156-ad20-e05c952af9ff
InstanceOf: MedComAcknowledgementMessageHeader
Title: "Ack_3.3.3.6 - Acknowledgement MessageHeader - fatal-error message"
Description: "Acknowledgement MessageHeader - fatal-error message. Valid only if used in a Bundle (message)."
Usage: #example
* destination[primary].extension[use] = b4e7e16b-9658-4172-acd7-5e7193f2cc5f
* eventCoding = $MessageEvents#acknowledgement-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=265161000016000"
* destination[primary].receiver = Reference(fa5eba7a-8bfc-4226-8473-1065b0c6562d)
* sender = Reference(cf76194d-914f-45c3-89e3-7ec596d05713)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=953741000016009"
* response.identifier = "53128d9b-cede-4c7f-8904-809eab322d7d"
* response.code = $AcknowledgementCode#fatal-error
* response.details = Reference(28ca031e-294c-4471-b5bc-bde7aa20df3c)
* definition = "http://medcomfhir.dk/ig/acknowledgement/medcom-acknowledgement-message-definition|2.0.0"


// provernance
Instance: 59db7751-a217-4cb0-a9f4-87a21097b6de
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.3.6 - CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
Description: "CareCommunication example. The Provenance instance is only valid if used in a bundle (message) - new message"
* target = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)
* occurredDateTime = 2024-12-05T11:09:20+01:00
* recorded = 2024-12-05T11:09:20Z
* activity.coding = $ActivityCode#new-message
* agent.who = Reference(cf76194d-914f-45c3-89e3-7ec596d05713)

Instance: a55e63cc-8a88-45b7-8e8a-882f6cb36e14
InstanceOf: MedComMessagingProvenance
Title: "Ack_3.3.3.6 - Provenance information for an Acknowledgement message - CareCommunication. Valid only if used in a bundle (message)"
Description: "Provenance information for an Acknowledgementmessage - CareCommunication. Valid only if used in a bundle (message)."
* target = Reference(ec5802cb-0229-4156-ad20-e05c952af9ff)
* occurredDateTime = 2024-12-05T11:09:20+01:00
* recorded = 2024-12-05T11:09:20Z
* activity.coding = $ActivityCode#acknowledgement
* agent.who = Reference(fa5eba7a-8bfc-4226-8473-1065b0c6562d)
* entity.role = #revision
* entity.what = Reference(42cb9200-f421-4d08-8391-7d51a2503cb4)


// Reciever instance
Instance: fa5eba7a-8bfc-4226-8473-1065b0c6562d
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.3.6 - Example of a reciever organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "265161000016000" 
* identifier[EAN-ID].value = "5790000209354" 
* name = "Receiver Organization"

// Sender instance
Instance: cf76194d-914f-45c3-89e3-7ec596d05713
InstanceOf: MedComMessagingOrganization
Title: "Ack_3.3.3.6 - Example of a sender organization with a SOR and an EAN identifier."
Description: "Example of an organization with a SOR and an EAN identifier."
* identifier[SOR-ID].value = "953741000016009"
* identifier[EAN-ID].value = "5790001348120"
* name = "Sender Organization"

Instance: 28ca031e-294c-4471-b5bc-bde7aa20df3c
InstanceOf: MedComAcknowledgementOperationOutcome
Title: "Ack_3.3.3.6 - MedComAcknowledgementOperationOutcome - Severity is 'error'"
Description: "Example of an error operationOutcome. Valid only if used in a Bundle (message)."
Usage: #example
* issue.severity = $ServerityCode#error
* issue.code =  $CodeCode#structure
* issue.details.coding = $IssueCodes#MSG_VALUESET_VALUE_UNKNOWN	// Vary between code and text