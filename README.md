# Job Portal Recruitment System - Salesforce

A complete Hiring Management System built on Salesforce Developer Edition.

## Project Overview
This project automates the end-to-end recruitment process — from job posting to candidate selection — using Salesforce CRM, Apex, Flows, and Aura Components.

## Tech Stack
- Salesforce CRM (Developer Edition)
- Apex Triggers & Classes
- Record-Triggered Flows
- Aura Components
- SOQL
- Reports & Dashboards

## Features

### Custom Objects
- **Job_Posting__c** — Stores job openings with title, department, status, skills required
- **Candidate__c** — Stores candidate details with status tracking
- **Interview__c** — Tracks interview rounds, feedback, and scores

### Automation (Flows)
- Auto creates Onboarding Task when candidate is Selected
- Sends email notification when candidate is Selected
- Sends rejection email when candidate is Rejected

### Apex
- **CandidateStatusTrigger** — Auto fills Rejection Reason when status = Rejected
- **CandidateHelper** — SOQL class to count candidates per job posting

### Aura Component
- **candidateStatusCard** — Displays candidate info on record page

### Validation Rules
- Email required when status is In Review
- Skills required when applying

### Reports & Dashboard
- Candidate Status Report
- Hiring Dashboard with Donut Chart showing pipeline

## Objects Relationship
Job Posting → Candidate (Lookup)
Candidate → Interview (Lookup)

## How to Run
1. Login to Salesforce Developer Edition
2. Navigate to Hiring Management System app
3. Create Job Postings
4. Add Candidates linked to Job Postings
5. Schedule Interviews
6. Update Candidate Status to trigger automations

## Author
Sakshi Madne
Raj Surve
Dnyaneshwar Tate
BTech Computer Science | 2026