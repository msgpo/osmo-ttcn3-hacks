#!/bin/sh

MAIN=BSC_Tests.ttcn

FILES="*.ttcn *.ttcnpp IPA_CodecPort_CtrlFunctDef.cc IPL4asp_PT.cc IPL4asp_discovery.cc TCCConversion.cc TCCInterface.cc SCTPasp_PT.cc RTP_EncDec.cc SDP_EncDec.cc RTP_CodecPort_CtrlFunctDef.cc MGCP_CodecPort_CtrlFunctDef.cc IuUP_EncDec.cc Native_FunctionDefs.cc TELNETasp_PT.cc *.c"

export CPPFLAGS_TTCN3="-DIPA_EMULATION_RSL -DIPA_EMULATION_MGCP"

../regen-makefile.sh $MAIN $FILES
