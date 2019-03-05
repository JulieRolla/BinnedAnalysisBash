#!/bin/bash
#Script for submitting the first stage of analysis (Interferometry) job to OSC 
#Last update: 4 March 2019 by Julie Rolla
#OSU ANITA Binned Analysis Team 

##########################################################################################################################
#
#
# In order to handle the volume of data done in the analysis we break it up into 0-9 parts. We are going to submit jobs for each of these parts separately. This means that we will be using this script to loop M=0-9 times. The output file produced by this analysis stage will be of the following format:
#
#
#
#########################################################################################################################







####### LINES TO CHECK OVER WHEN STARTING A NEW RUN #####################################################################

N=3025                ## Run number
M=9                   ## Data subsections

#########################################################################################################################






########  Initialization of variables  ##################################################################################

# Add all directories and path names hard coded into the interferometry code here, and replace with variable name. 


#########################################################################################################################


######## Submitting a job to Owens ######################################################################################

for i in 'seq 1 $M'
do
    qsub runInterferometry.job
done

########################################################################################################################