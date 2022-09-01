#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Sep  2 03:54:45 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v15.20-p005_1 (64bit) 11/11/2015 11:16 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 15.20-p005_1 NR151028-1715/15_20-UB (database version 2.30, 298.6.1) {superthreading v1.26}
#@(#)CDS: AAE 15.20-p002 (64bit) 11/11/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 15.20-p001_1 () Oct 29 2015 01:50:39 ( )
#@(#)CDS: SYNTECH 15.20-b002_1 () Oct 20 2015 02:35:29 ( )
#@(#)CDS: CPE v15.20-p002
#@(#)CDS: IQRC/TQRC 15.1.2-s269 (64bit) Mon Aug 24 18:22:18 PDT 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_gnd_net VSS
set init_lef_file {std_cells/lef/tsmc13fsg_6lm_tech.lef std_cells/lef/tsmc13_m_macros.lef system_top.lef}
set init_verilog ../DFT/netlists/system_top.v
set init_mmmc_file MMC.tcl
set init_top_cell system_top
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file {std_cells/lef/tsmc13fsg_6lm_tech.lef std_cells/lef/tsmc13_m_macros.lef system_top.lef}
set init_verilog ../DFT/netlists/system_top.v
set init_mmmc_file MMC.tcl
set init_top_cell system_top
set init_pwr_net VDD
init_design
floorPlan -d 240.47 160 0.0 0.0 0.0 0.0
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
fit
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer METAL6 -type core_rings -jog_distance 0.205 -threshold 0.205 -nets {VDD VSS} -follow io -stacked_via_bottom_layer METAL1 -layer {bottom METAL5 top METAL5 right METAL4 left METAL4} -width 1 -spacing 0.5 -offset 0.25
editPushUndo
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea false -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit METAL5 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL3 -set_to_set_distance 40 -skip_via_on_pin Standardcell -stacked_via_top_layer METAL6 -padcore_ring_top_layer_limit METAL5 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL4 -block_ring_bottom_layer_limit METAL3 -width 1 -nets {VDD VSS} -stacked_via_bottom_layer METAL1
editPushUndo
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea false -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { METAL1 METAL6 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { METAL1 METAL6 } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { METAL1 METAL6 }
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
verifyConnectivity -type all -error 1000 -warning 50
zoomBox 136.782 9.404 108.237 -4.189
zoomBox 124.053 1.337 120.545 -1.268
selectMarker 0.0000 -0.1300 240.6700 0.1300 -1 3 7
deselectAll
selectMarker 0.0000 -0.1300 240.6700 0.1300 -1 3 7
deselectAll
selectMarker 0.0000 -0.1300 240.6700 0.1300 -1 3 7
deselectAll
selectMarker 0.0000 -0.1300 240.6700 0.1300 -1 3 7
deleteSelectedFromFPlan
selectWire 0.0000 -0.1300 240.6700 0.1300 1 VDD
deleteSelectedFromFPlan
fit
verifyConnectivity -type all -error 1000 -warning 50
clearDrc
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea false -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
setLayerPreference allM0 -isVisible 0
setLayerPreference allM1Cont -isVisible 0
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
zoomBox 249.058 161.099 196.590 130.923
zoomBox 243.602 159.047 233.575 155.316
panPage 0 1
panPage 0 -1
panPage 0 1
setDrawView ameba
setDrawView fplan
uiSetTool obstruct
createPlaceBlockage -box 0.005 158.035 240.680 159.871
uiSetTool select
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
fit
zoomBox -4.038 8.588 49.517 -3.102
uiSetTool obstruct
createPlaceBlockage -box 0.088 0.011 240.728 2.688
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 1
panPage 0 -1
panPage 0 1
uiSetTool obstruct
createPlaceBlockage -box 237.234 2.995 240.505 157.898
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage -1 0
panPage 0 1
panPage 1 0
panPage 0 -1
createPlaceBlockage -box 0.161 2.999 2.800 158.099
uiSetTool select
fit
selectObstruct 236.9800 2.8700 240.6700 157.8500 defScreenName
setSelectedDensityArea 236.98 2.87 237.39 157.85 100 defScreenName Hard Undefined {}
deselectAll
selectWire 0.0000 94.5800 240.6700 94.8400 1 VSS
deselectAll
selectObstruct 0.0000 2.8700 2.8700 157.8500 defScreenName
setSelectedDensityArea 0.0 2.87 0.41 157.85 100 defScreenName Hard Undefined {}
zoomBox 259.117 101.562 205.833 60.784
uiSetTool move
deselectAll
selectObstruct 236.9800 2.8700 237.3900 157.8500 defScreenName
setObjFPlanBox LayerShape (473960,5740,474780,315700) 240.257 2.744 240.667 157.724
uiSetTool select
deselectAll
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
fit
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getCTSMode -engine -quiet
setPlaceMode -fp false
placeDesign
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
setDrawView place
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
saveNetlist export/system_top.v
saveNetlist export/system_top_pg.v -includePowerGround
report_area > report/area.rpt
report_power -outfile report/power.rpt
streamOut export/system_top.gds -mapFile gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
addFiller -cell {FILL1M FILL2M FILL4M FILL8M FILL16M FILL32M FILL64M} -prefix FILLER -markFixed
saveNetlist export/system_top.v
saveNetlist export/system_top_pg.v -includePowerGround
report_area > report/area.rpt
report_power -outfile report/power.rpt
streamOut export/system_top.gds -mapFile gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_preCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -hold -idealClock -pathReports -slackReports -numPaths 50 -prefix system_top_preCTS -outDir timingReports
setLayerPreference allM0 -isVisible 1
setLayerPreference allM1Cont -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
saveNetlist system_top.v
save_global system_top.globals
init_design
