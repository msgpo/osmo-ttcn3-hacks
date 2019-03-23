#!/bin/sh

FILES="*.ttcn BSSGP_EncDec.cc IPL4asp_PT.cc IPL4asp_discovery.cc TCCConversion.cc TCCInterface.cc NS_CodecPort_CtrlFunctDef.cc RLCMAC_EncDec.cc LLC_EncDec.cc Native_FunctionDefs.cc"

../regen-makefile.sh GbProxy_Tests.ttcn $FILES
