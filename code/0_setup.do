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
