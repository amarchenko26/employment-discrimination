/*
 Author: Anya Marchenko
 Date: 3 July 2023

 This is the Master .do file which runs XXXX 
 
 */

 
clear all
version 17.0

/*******************************************************************************
Define Globals 
*******************************************************************************/

*****************************
* User 1: Anya Marchenko
*****************************

if "`c(username)'"=="anyamarchenko"{
	gl root = "/Users/anyamarchenko/Documents/GitHub/employment-discrimination"
	gl data = "/Users/anyamarchenko/Documents/GitHub/employment-discrimination/data"
	gl code = "/Users/anyamarchenko/Documents/GitHub/employment-discrimination/code"
	gl leaf = "/Users/anyamarchenko/Dropbox (CEGA)/Apps/Overleaf" 
}

/*******************************************************************************
Import data 
*******************************************************************************/

import delimited "$data/complaints_11_17.txt", varnames(1) clear


/*******************************************************************************
Label variables 
*******************************************************************************/

la var fiscal_year "fiscal year in which a complainant first filed a charge"
la var charge_inquiry_seq "unique identifier for each case (a case is a collection of related charges)"
la var state_code "complainant state"
la var number_of_employees_code "code indicating the approximate number of employees working for respondent employer"
la var number_of_employees "approximate number of employees working for respondent employer"
la var naics_code "North American Industry Classification System code of respondent employer"
la var naics_description "North American Industry Classification System description of respondent company"
la var institution_type_code "classification code of respondent employer"
la var institution_type "classification of respondent employer (e.g., private employer)"
la var date_of_birth "complainant's date of birth"
la var sex_code "complainant's gender"
la var date_first_office "date charge was filed"
la var closure_date "date investigation of case was closed"
la var closure_code "code indicating how case was closed"
la var closure_action "description indicating how case was closed"
la var total_benefit_amount "monetary benefit complainant received"
la var statute_code "code for statute under which charge was filed"
la var statute "statute under which charge was filed (e.g., Americans with Disabilities Act)"
la var basis_code "code for basis of discrimination"
la var basis "basis of discrimination"
la var issue_code "type code for adverse action alleged"
la var issue "adverse action alleged"
la var court_filing_date "date complainant filed a lawsuit"
la var civil_action_number "case number of lawsuit"
la var court "court in which lawsuit was filed"
la var resolution_date "date lawsuit was resolved"
la var case_type "case type of lawsuit"
la var selectsumnvlbackpay0nvlfrontpay0 "monetary damages recovered through lawsuit"


destring total_benefit_amount, replace force 
destring selectsumnvlbackpay0nvlfrontpay0, replace force


save "$data/interim_complaints_11_17.dta", replace
