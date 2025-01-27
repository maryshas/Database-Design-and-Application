# Database-Design-and-Application

Your team is hired by Dr. Hope Smilow. She is opening her own dental practice “Smilow
Dentistry” and needs a database to hold all required data. Her office needs to maintain a list of
accepted insurance policy types, a list of standard dental procedures and standard per unit
charges for those procedures for each insurance plan. The office will employ various medical
professionals such as other dentists, hygienists, dental assistants, receptionists, etc., and will
need to maintain standard employee info and licensure details where applicable for billing and
medical documentation needs. 

They need to keep careful track of patients, their complete
demographics, emergency contacts, insurance info, medical history, and appointments.

In addition to storing basic demographics info, the system needs to keep track of if and when a
patient signed HIPAA form, date of last x-ray, medications, and allergy information and allow
to check that the information is still current.

Any time a patient has an appointment, a billing record needs to be generated with the date,
doctor / supervising doctor/ medical professional, and procedures performed. They will also
keep track of patient payments. Each payment consists of an amount, a date, and a type of
payment (cash, check, credit card), and invoices it is applied to. The system should allow to
store patients’ payment information and use it when instructed.

Each appointment can involve multiple treatments/procedures. We can assume that the entire
invoice is billed under one main supervising dentist’s name. There will be one invoice (bill) per
appointment. Not all patients will have insurance coverage, and some may pay out of pocket.
For patients who have insurance coverage, insurance payments are applied first, and the patient
is billed for the remainder when applicable. We will assume that each patient can have only one
insurance plan. We are not going to worry about secondary coverage at this time. Cancelled
appointments are not billed. Specific procedures can be performed by certain licensed medical
professionals.
