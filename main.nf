#!/usr/bin/env nextflow
/*
========================================================================================
    nf-core/bacass
========================================================================================
    Github : https://github.com/nf-core/bacass
    Website: https://nf-co.re/bacass
    Slack  : https://nfcore.slack.com/channels/bacass
----------------------------------------------------------------------------------------
*/

nextflow.enable.dsl = 2

/*
========================================================================================
    VALIDATE & PRINT PARAMETER SUMMARY
========================================================================================
*/

WorkflowMain.initialise(workflow, params, log)

/*
========================================================================================
    NAMED WORKFLOW FOR PIPELINE
========================================================================================
*/

include { BACASS } from './workflows/bacass'

//
// WORKFLOW: Run main nf-core/bacass analysis pipeline
//
workflow NFCORE_BACASS {
    BACASS ()
}

/*
========================================================================================
    RUN ALL WORKFLOWS
========================================================================================
*/

//
// WORKFLOW: Execute a single named workflow for the pipeline
// See: https://github.com/nf-core/rnaseq/issues/619
//
workflow {
    NFCORE_BACASS ()
}

/*
========================================================================================
    THE END
========================================================================================
*/
