###############################################################################
# HTG-ZRF16 Constraints
# Part: xczu29dr-ffvf1760-2-e
###############################################################################

###############################################################################
# Clock Constraints
###############################################################################

# System Clock (300 MHz default)
set_property PACKAGE_PIN H26 [get_ports SYS_CLK_DDR4_PL_P]
set_property PACKAGE_PIN G26 [get_ports SYS_CLK_DDR4_PL_N]
set_property IOSTANDARD DIFF_SSTL12 [get_ports SYS_CLK_DDR4_PL_*]
create_clock -period 3.332 -name sys_clk [get_ports SYS_CLK_DDR4_PL_P]

# PL User Clock from SI5341
set_property PACKAGE_PIN G12 [get_ports CLK_PL_USER_P]
set_property PACKAGE_PIN G11 [get_ports CLK_PL_USER_N]
set_property IOSTANDARD LVDS [get_ports CLK_PL_USER_*]
create_clock -period 10.000 -name pl_user_clk [get_ports CLK_PL_USER_P]

# 1-PPS Clock
set_property PACKAGE_PIN D11 [get_ports IRIG_TRIG_OUT]
set_property IOSTANDARD LVCMOS18 [get_ports IRIG_TRIG_OUT]

# LMK04832 Jitter Cleaner Control
set_property PACKAGE_PIN BB10 [get_ports LMK_CS_F]
set_property PACKAGE_PIN AW9 [get_ports LMK_LD1_F]
set_property PACKAGE_PIN BB9 [get_ports LMK_LD2_F]
set_property PACKAGE_PIN BB11 [get_ports LMK_RESET_F]
set_property PACKAGE_PIN AY9 [get_ports LMK_SCL_F]
set_property PACKAGE_PIN BA10 [get_ports LMK_SDIO_F]
set_property PACKAGE_PIN AW11 [get_ports LMK_SEL0_F]
set_property PACKAGE_PIN AY11 [get_ports LMK_SEL1_F]
set_property PACKAGE_PIN AR22 [get_ports SYSREF_FPGA_N]
set_property PACKAGE_PIN AP22 [get_ports SYSREF_FPGA_P]
set_property PACKAGE_PIN AU11 [get_ports FPGA_REFCLK_OUT_N]
set_property PACKAGE_PIN AU12 [get_ports FPGA_REFCLK_OUT_P]
set_property IOSTANDARD LVCMOS18 [get_ports LMK_*]
set_property IOSTANDARD LVDS [get_ports SYSREF_FPGA_*]
set_property IOSTANDARD LVDS [get_ports FPGA_REFCLK_OUT_*]

###############################################################################
# GTY/GTR Transceivers
###############################################################################

# QSFP28 Port A - GTY130
set_property PACKAGE_PIN P34 [get_ports GTY_130_REFCLK_P]
set_property PACKAGE_PIN P35 [get_ports GTY_130_REFCLK_N]

# QSFP28 Port A TX/RX
set_property PACKAGE_PIN L41 [get_ports QSFP28_A_RX1_P]
set_property PACKAGE_PIN L42 [get_ports QSFP28_A_RX1_N]
set_property PACKAGE_PIN G41 [get_ports QSFP28_A_RX2_P]
set_property PACKAGE_PIN G42 [get_ports QSFP28_A_RX2_N]
set_property PACKAGE_PIN J41 [get_ports QSFP28_A_RX3_P]
set_property PACKAGE_PIN J42 [get_ports QSFP28_A_RX3_N]
set_property PACKAGE_PIN F39 [get_ports QSFP28_A_RX4_P]
set_property PACKAGE_PIN F40 [get_ports QSFP28_A_RX4_N]
set_property PACKAGE_PIN K38 [get_ports QSFP28_A_TX1_P]
set_property PACKAGE_PIN K39 [get_ports QSFP28_A_TX1_N]
set_property PACKAGE_PIN H38 [get_ports QSFP28_A_TX2_P]
set_property PACKAGE_PIN H39 [get_ports QSFP28_A_TX2_N]
set_property PACKAGE_PIN J36 [get_ports QSFP28_A_TX3_P]
set_property PACKAGE_PIN J37 [get_ports QSFP28_A_TX3_N]
set_property PACKAGE_PIN G36 [get_ports QSFP28_A_TX4_P]
set_property PACKAGE_PIN G37 [get_ports QSFP28_A_TX4_N]

# QSFP28 Port A Control
set_property PACKAGE_PIN F13 [get_ports QSFP28_A_IntL]
set_property PACKAGE_PIN B16 [get_ports QSFP28_A_LPMode]
set_property PACKAGE_PIN E14 [get_ports QSFP28_A_ModPrsL]
set_property PACKAGE_PIN AT10 [get_ports QSFP28_A_RESET_L]
set_property IOSTANDARD LVCMOS18 [get_ports QSFP28_A_*L]

# QSFP28 Port B - GTY131
set_property PACKAGE_PIN K34 [get_ports GTY_131_REFCLK_P]
set_property PACKAGE_PIN K35 [get_ports GTY_131_REFCLK_N]

# QSFP28 Port B TX/RX
set_property PACKAGE_PIN E41 [get_ports QSFP28_B_RX1_P]
set_property PACKAGE_PIN E42 [get_ports QSFP28_B_RX1_N]
set_property PACKAGE_PIN C41 [get_ports QSFP28_B_RX2_P]
set_property PACKAGE_PIN C42 [get_ports QSFP28_B_RX2_N]
set_property PACKAGE_PIN D39 [get_ports QSFP28_B_RX3_P]
set_property PACKAGE_PIN D40 [get_ports QSFP28_B_RX3_N]
set_property PACKAGE_PIN B39 [get_ports QSFP28_B_RX4_P]
set_property PACKAGE_PIN B40 [get_ports QSFP28_B_RX4_N]
set_property PACKAGE_PIN F34 [get_ports QSFP28_B_TX1_P]
set_property PACKAGE_PIN F35 [get_ports QSFP28_B_TX1_N]
set_property PACKAGE_PIN C36 [get_ports QSFP28_B_TX2_P]
set_property PACKAGE_PIN C37 [get_ports QSFP28_B_TX2_N]
set_property PACKAGE_PIN E36 [get_ports QSFP28_B_TX3_P]
set_property PACKAGE_PIN E37 [get_ports QSFP28_B_TX3_N]
set_property PACKAGE_PIN A36 [get_ports QSFP28_B_TX4_P]
set_property PACKAGE_PIN A37 [get_ports QSFP28_B_TX4_N]

# QSFP28 Port B Control
set_property PACKAGE_PIN E12 [get_ports QSFP28_B_IntL]
set_property PACKAGE_PIN F12 [get_ports QSFP28_B_LPMode]
set_property PACKAGE_PIN B15 [get_ports QSFP28_B_ModPrsL]
set_property PACKAGE_PIN AP10 [get_ports QSFP28_B_RESET_L]
set_property IOSTANDARD LVCMOS18 [get_ports QSFP28_B_*L]

# SATA
set_property PACKAGE_PIN AJ41 [get_ports SATA_RX_P]
set_property PACKAGE_PIN AJ42 [get_ports SATA_RX_N]
set_property PACKAGE_PIN AH35 [get_ports SATA_TX_P]
set_property PACKAGE_PIN AH36 [get_ports SATA_TX_N]

# Display Port
set_property PACKAGE_PIN AE37 [get_ports DP_TX0_P]
set_property PACKAGE_PIN AE38 [get_ports DP_TX0_N]
set_property PACKAGE_PIN AF39 [get_ports DP_TX1_P]
set_property PACKAGE_PIN AF40 [get_ports DP_TX1_N]
set_property PACKAGE_PIN B34 [get_ports MIO27_DP_AUX_OUT]
set_property PACKAGE_PIN A33 [get_ports MIO28_DP_HPD]
set_property PACKAGE_PIN B33 [get_ports MIO29_DP_OE]
set_property PACKAGE_PIN C34 [get_ports MIO30_DP_AUX_IN]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_DP_*]

# USB 3.0
set_property PACKAGE_PIN AH39 [get_ports USB3_RX_P]
set_property PACKAGE_PIN AH40 [get_ports USB3_RX_N]
set_property PACKAGE_PIN AG37 [get_ports USB3_TX_P]
set_property PACKAGE_PIN AG38 [get_ports USB3_TX_N]

###############################################################################
# FMC+ Interface
###############################################################################

# FMC+ Clocks
set_property PACKAGE_PIN AP24 [get_ports FMC_PL_CLK0_M2C_P]
set_property PACKAGE_PIN AR24 [get_ports FMC_PL_CLK0_M2C_N]
set_property IOSTANDARD LVDS [get_ports FMC_PL_CLK0_M2C_*]

# FMC+ Reference Clock
set_property PACKAGE_PIN AP21 [get_ports FMC_PL_REFCLK_M2C_P]
set_property PACKAGE_PIN AR21 [get_ports FMC_PL_REFCLK_M2C_N]
set_property IOSTANDARD LVDS [get_ports FMC_PL_REFCLK_M2C_*]

# FMC+ Sync
set_property PACKAGE_PIN AR20 [get_ports FMC_PL_SYNC_M2C_P]
set_property PACKAGE_PIN AR19 [get_ports FMC_PL_SYNC_M2C_N]
set_property PACKAGE_PIN BB21 [get_ports FMC_PL_SYNC_C2M_P]
set_property PACKAGE_PIN BB20 [get_ports FMC_PL_SYNC_C2M_N]
set_property IOSTANDARD LVDS [get_ports FMC_PL_SYNC_*]

# FMC+ Management
set_property PACKAGE_PIN AV10 [get_ports FMC_PL_PG_M2C]
set_property PACKAGE_PIN AY10 [get_ports FMC_PL_PRSNT_M2C_L]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_PL_PG_M2C]
set_property IOSTANDARD LVCMOS18 [get_ports FMC_PL_PRSNT_M2C_L]

# FMC+ LA Pairs
set_property PACKAGE_PIN AP26 [get_ports FMC_PL_LA00_CC_P]
set_property PACKAGE_PIN AR26 [get_ports FMC_PL_LA00_CC_N]
set_property PACKAGE_PIN AT23 [get_ports FMC_PL_LA01_CC_P]
set_property PACKAGE_PIN AT24 [get_ports FMC_PL_LA01_CC_N]
set_property PACKAGE_PIN AJ22 [get_ports FMC_PL_LA02_P]
set_property PACKAGE_PIN AK22 [get_ports FMC_PL_LA02_N]
set_property PACKAGE_PIN AT22 [get_ports FMC_PL_LA03_P]
set_property PACKAGE_PIN AU22 [get_ports FMC_PL_LA03_N]
set_property PACKAGE_PIN AY22 [get_ports FMC_PL_LA04_P]
set_property PACKAGE_PIN BA22 [get_ports FMC_PL_LA04_N]
set_property PACKAGE_PIN AU23 [get_ports FMC_PL_LA05_P]
set_property PACKAGE_PIN AV23 [get_ports FMC_PL_LA05_N]
set_property PACKAGE_PIN AY24 [get_ports FMC_PL_LA06_P]
set_property PACKAGE_PIN AY25 [get_ports FMC_PL_LA06_N]
set_property PACKAGE_PIN AU25 [get_ports FMC_PL_LA07_P]
set_property PACKAGE_PIN AV25 [get_ports FMC_PL_LA07_N]
set_property PACKAGE_PIN BA23 [get_ports FMC_PL_LA08_P]
set_property PACKAGE_PIN BA24 [get_ports FMC_PL_LA08_N]
set_property PACKAGE_PIN AR25 [get_ports FMC_PL_LA09_P]
set_property PACKAGE_PIN AT25 [get_ports FMC_PL_LA09_N]
set_property PACKAGE_PIN AN24 [get_ports FMC_PL_LA10_P]
set_property PACKAGE_PIN AN25 [get_ports FMC_PL_LA10_N]
set_property PACKAGE_PIN AL24 [get_ports FMC_PL_LA11_P]
set_property PACKAGE_PIN AM25 [get_ports FMC_PL_LA11_N]
set_property PACKAGE_PIN AM26 [get_ports FMC_PL_LA12_P]
set_property PACKAGE_PIN AN26 [get_ports FMC_PL_LA12_N]
set_property PACKAGE_PIN AK25 [get_ports FMC_PL_LA13_P]
set_property PACKAGE_PIN AL25 [get_ports FMC_PL_LA13_N]
set_property PACKAGE_PIN AJ26 [get_ports FMC_PL_LA14_P]
set_property PACKAGE_PIN AK26 [get_ports FMC_PL_LA14_N]
set_property PACKAGE_PIN AJ23 [get_ports FMC_PL_LA15_P]
set_property PACKAGE_PIN AK24 [get_ports FMC_PL_LA15_N]
set_property PACKAGE_PIN AL23 [get_ports FMC_PL_LA16_P]
set_property PACKAGE_PIN AM23 [get_ports FMC_PL_LA16_N]
set_property PACKAGE_PIN AP18 [get_ports FMC_PL_LA17_CC_P]
set_property PACKAGE_PIN AP17 [get_ports FMC_PL_LA17_CC_N]
set_property PACKAGE_PIN AN21 [get_ports FMC_PL_LA18_CC_P]
set_property PACKAGE_PIN AN20 [get_ports FMC_PL_LA18_CC_N]
set_property PACKAGE_PIN AL18 [get_ports FMC_PL_LA19_P]
set_property PACKAGE_PIN AL17 [get_ports FMC_PL_LA19_N]
set_property PACKAGE_PIN AM18 [get_ports FMC_PL_LA20_P]
set_property PACKAGE_PIN AN18 [get_ports FMC_PL_LA20_N]
set_property PACKAGE_PIN AY20 [get_ports FMC_PL_LA21_P]
set_property PACKAGE_PIN BA20 [get_ports FMC_PL_LA21_N]
set_property PACKAGE_PIN BA18 [get_ports FMC_PL_LA22_P]
set_property PACKAGE_PIN BB18 [get_ports FMC_PL_LA22_N]
set_property PACKAGE_PIN AY19 [get_ports FMC_PL_LA23_P]
set_property PACKAGE_PIN BA19 [get_ports FMC_PL_LA23_N]
set_property PACKAGE_PIN AU21 [get_ports FMC_PL_LA24_P]
set_property PACKAGE_PIN AU20 [get_ports FMC_PL_LA24_N]
set_property PACKAGE_PIN AT18 [get_ports FMC_PL_LA25_P]
set_property PACKAGE_PIN AU18 [get_ports FMC_PL_LA25_N]
set_property PACKAGE_PIN AV19 [get_ports FMC_PL_LA26_P]
set_property PACKAGE_PIN AW19 [get_ports FMC_PL_LA26_N]
set_property PACKAGE_PIN AW21 [get_ports FMC_PL_LA27_P]
set_property PACKAGE_PIN AY21 [get_ports FMC_PL_LA27_N]
set_property PACKAGE_PIN AM21 [get_ports FMC_PL_LA28_P]
set_property PACKAGE_PIN AM20 [get_ports FMC_PL_LA28_N]
set_property PACKAGE_PIN AT20 [get_ports FMC_PL_LA29_P]
set_property PACKAGE_PIN AT19 [get_ports FMC_PL_LA29_N]
set_property PACKAGE_PIN AK21 [get_ports FMC_PL_LA30_P]
set_property PACKAGE_PIN AK20 [get_ports FMC_PL_LA30_N]
set_property PACKAGE_PIN AK19 [get_ports FMC_PL_LA31_P]
set_property PACKAGE_PIN AL19 [get_ports FMC_PL_LA31_N]
set_property PACKAGE_PIN AH18 [get_ports FMC_PL_LA32_P]
set_property PACKAGE_PIN AJ18 [get_ports FMC_PL_LA32_N]
set_property PACKAGE_PIN AJ17 [get_ports FMC_PL_LA33_P]
set_property PACKAGE_PIN AK17 [get_ports FMC_PL_LA33_N]
set_property IOSTANDARD LVDS [get_ports FMC_PL_LA*]

# FMC+ HA Pairs
set_property PACKAGE_PIN AT15 [get_ports FMC_PL_HA00_CC_P]
set_property PACKAGE_PIN AU15 [get_ports FMC_PL_HA00_CC_N]
set_property PACKAGE_PIN AT13 [get_ports FMC_PL_HA01_CC_P]
set_property PACKAGE_PIN AU13 [get_ports FMC_PL_HA01_CC_N]
set_property PACKAGE_PIN AN13 [get_ports FMC_PL_HA02_P]
set_property PACKAGE_PIN AP13 [get_ports FMC_PL_HA02_N]
set_property PACKAGE_PIN BB13 [get_ports FMC_PL_HA03_P]
set_property PACKAGE_PIN BB12 [get_ports FMC_PL_HA03_N]
set_property PACKAGE_PIN AY17 [get_ports FMC_PL_HA04_P]
set_property PACKAGE_PIN AY16 [get_ports FMC_PL_HA04_N]
set_property PACKAGE_PIN AY15 [get_ports FMC_PL_HA05_P]
set_property PACKAGE_PIN AY14 [get_ports FMC_PL_HA05_N]
set_property PACKAGE_PIN BA15 [get_ports FMC_PL_HA06_P]
set_property PACKAGE_PIN BA14 [get_ports FMC_PL_HA06_N]
set_property PACKAGE_PIN BA17 [get_ports FMC_PL_HA07_P]
set_property PACKAGE_PIN BB17 [get_ports FMC_PL_HA07_N]
set_property PACKAGE_PIN AR14 [get_ports FMC_PL_HA08_P]
set_property PACKAGE_PIN AT14 [get_ports FMC_PL_HA08_N]
set_property PACKAGE_PIN AW17 [get_ports FMC_PL_HA09_P]
set_property PACKAGE_PIN AW16 [get_ports FMC_PL_HA09_N]
set_property PACKAGE_PIN AM16 [get_ports FMC_PL_HA10_P]
set_property PACKAGE_PIN AN15 [get_ports FMC_PL_HA10_N]
set_property PACKAGE_PIN AR16 [get_ports FMC_PL_HA11_P]
set_property PACKAGE_PIN AR15 [get_ports FMC_PL_HA11_N]
set_property PACKAGE_PIN AN16 [get_ports FMC_PL_HA12_P]
set_property PACKAGE_PIN AP16 [get_ports FMC_PL_HA12_N]
set_property PACKAGE_PIN AL14 [get_ports FMC_PL_HA13_P]
set_property PACKAGE_PIN AM13 [get_ports FMC_PL_HA13_N]
set_property PACKAGE_PIN AJ14 [get_ports FMC_PL_HA14_P]
set_property PACKAGE_PIN AK14 [get_ports FMC_PL_HA14_N]
set_property PACKAGE_PIN AK16 [get_ports FMC_PL_HA15_P]
set_property PACKAGE_PIN AK15 [get_ports FMC_PL_HA15_N]
set_property PACKAGE_PIN AL15 [get_ports FMC_PL_HA16_P]
set_property PACKAGE_PIN AM15 [get_ports FMC_PL_HA16_N]
set_property PACKAGE_PIN AU17 [get_ports FMC_PL_HA17_CC_P]
set_property PACKAGE_PIN AU16 [get_ports FMC_PL_HA17_CC_N]
set_property PACKAGE_PIN AV16 [get_ports FMC_PL_HA18_CC_P]
set_property PACKAGE_PIN AV15 [get_ports FMC_PL_HA18_CC_N]
set_property PACKAGE_PIN BB16 [get_ports FMC_PL_HA19_P]
set_property PACKAGE_PIN BB15 [get_ports FMC_PL_HA19_N]
set_property PACKAGE_PIN AV13 [get_ports FMC_PL_HA20_P]
set_property PACKAGE_PIN AW13 [get_ports FMC_PL_HA20_N]
set_property PACKAGE_PIN BA13 [get_ports FMC_PL_HA21_P]
set_property PACKAGE_PIN BA12 [get_ports FMC_PL_HA21_N]
set_property PACKAGE_PIN AV14 [get_ports FMC_PL_HA22_P]
set_property PACKAGE_PIN AW14 [get_ports FMC_PL_HA22_N]
set_property PACKAGE_PIN AR17 [get_ports FMC_PL_HA23_P]
set_property PACKAGE_PIN AT17 [get_ports FMC_PL_HA23_N]
set_property IOSTANDARD LVDS [get_ports FMC_PL_HA*]

# FMC+ DP Pairs (for GTY128 and GTY129)
set_property PACKAGE_PIN AA36 [get_ports FMC_PL_DP0_C2M_P]
set_property PACKAGE_PIN AA37 [get_ports FMC_PL_DP0_C2M_N]
set_property PACKAGE_PIN AC41 [get_ports FMC_PL_DP0_M2C_P]
set_property PACKAGE_PIN AC42 [get_ports FMC_PL_DP0_M2C_N]
set_property PACKAGE_PIN U36 [get_ports FMC_PL_DP1_C2M_P]
set_property PACKAGE_PIN U37 [get_ports FMC_PL_DP1_C2M_N]
set_property PACKAGE_PIN AB39 [get_ports FMC_PL_DP1_M2C_P]
set_property PACKAGE_PIN AB40 [get_ports FMC_PL_DP1_M2C_N]
set_property PACKAGE_PIN T38 [get_ports FMC_PL_DP2_C2M_P]
set_property PACKAGE_PIN T39 [get_ports FMC_PL_DP2_C2M_N]
set_property PACKAGE_PIN AA41 [get_ports FMC_PL_DP2_M2C_P]
set_property PACKAGE_PIN AA42 [get_ports FMC_PL_DP2_M2C_N]
set_property PACKAGE_PIN R36 [get_ports FMC_PL_DP3_C2M_P]
set_property PACKAGE_PIN R37 [get_ports FMC_PL_DP3_C2M_N]
set_property PACKAGE_PIN Y39 [get_ports FMC_PL_DP3_M2C_P]
set_property PACKAGE_PIN Y40 [get_ports FMC_PL_DP3_M2C_N]
set_property PACKAGE_PIN P38 [get_ports FMC_PL_DP4_C2M_P]
set_property PACKAGE_PIN P39 [get_ports FMC_PL_DP4_C2M_N]
set_property PACKAGE_PIN W41 [get_ports FMC_PL_DP4_M2C_P]
set_property PACKAGE_PIN W42 [get_ports FMC_PL_DP4_M2C_N]
set_property PACKAGE_PIN N36 [get_ports FMC_PL_DP5_C2M_P]
set_property PACKAGE_PIN N37 [get_ports FMC_PL_DP5_C2M_N]
set_property PACKAGE_PIN U41 [get_ports FMC_PL_DP5_M2C_P]
set_property PACKAGE_PIN U42 [get_ports FMC_PL_DP5_M2C_N]
set_property PACKAGE_PIN M38 [get_ports FMC_PL_DP6_C2M_P]
set_property PACKAGE_PIN M39 [get_ports FMC_PL_DP6_C2M_N]
set_property PACKAGE_PIN R41 [get_ports FMC_PL_DP6_M2C_P]
set_property PACKAGE_PIN R42 [get_ports FMC_PL_DP6_M2C_N]
set_property PACKAGE_PIN L36 [get_ports FMC_PL_DP7_C2M_P]
set_property PACKAGE_PIN L37 [get_ports FMC_PL_DP7_C2M_N]
set_property PACKAGE_PIN N41 [get_ports FMC_PL_DP7_M2C_P]
set_property PACKAGE_PIN N42 [get_ports FMC_PL_DP7_M2C_N]

# GTY FMC+ Reference Clocks
set_property PACKAGE_PIN Y34 [get_ports FMC_PL_GBTCLK0_M2C_P]
set_property PACKAGE_PIN Y35 [get_ports FMC_PL_GBTCLK0_M2C_N]
set_property PACKAGE_PIN T34 [get_ports FMC_PL_GBTCLK1_M2C_P]
set_property PACKAGE_PIN T35 [get_ports FMC_PL_GBTCLK1_M2C_N]

###############################################################################
# ADC/DAC RFSoC Interface
###############################################################################

# ADC Clock References
set_property PACKAGE_PIN BA3 [get_ports ADC_224_REFCLK_P]
set_property PACKAGE_PIN BB3 [get_ports ADC_224_REFCLK_N]
set_property PACKAGE_PIN AW4 [get_ports ADC_225_REFCLK_P]
set_property PACKAGE_PIN AY4 [get_ports ADC_225_REFCLK_N]
set_property PACKAGE_PIN BA5 [get_ports ADC_226_REFCLK_P]
set_property PACKAGE_PIN BB5 [get_ports ADC_226_REFCLK_N]
set_property PACKAGE_PIN AW6 [get_ports ADC_227_REFCLK_P]
set_property PACKAGE_PIN AY6 [get_ports ADC_227_REFCLK_N]
set_property IOSTANDARD LVDS [get_ports ADC_*_REFCLK_*]

# DAC Clock References
set_property PACKAGE_PIN B3 [get_ports DAC_228_REFCLK_P]
set_property PACKAGE_PIN A3 [get_ports DAC_228_REFCLK_N]
set_property PACKAGE_PIN D4 [get_ports DAC_229_REFCLK_P]
set_property PACKAGE_PIN C4 [get_ports DAC_229_REFCLK_N]
set_property PACKAGE_PIN B5 [get_ports DAC_230_REFCLK_P]
set_property PACKAGE_PIN A5 [get_ports DAC_230_REFCLK_N]
set_property PACKAGE_PIN D6 [get_ports DAC_231_REFCLK_P]
set_property PACKAGE_PIN C6 [get_ports DAC_231_REFCLK_N]
set_property PACKAGE_PIN D2 [get_ports DAC_228_SYSREF_P]
set_property PACKAGE_PIN D1 [get_ports DAC_228_SYSREF_N]
set_property IOSTANDARD LVDS [get_ports DAC_*_REFCLK_*]
set_property IOSTANDARD LVDS [get_ports DAC_*_SYSREF_*]

# ADC224 Input Ports
set_property PACKAGE_PIN AU5 [get_ports ADC_IN0_224_P]
set_property PACKAGE_PIN AU4 [get_ports ADC_IN0_224_N]
set_property PACKAGE_PIN AU2 [get_ports ADC_IN1_224_P]
set_property PACKAGE_PIN AU1 [get_ports ADC_IN1_224_N]
set_property PACKAGE_PIN AR5 [get_ports ADC_IN2_224_P]
set_property PACKAGE_PIN AR4 [get_ports ADC_IN2_224_N]
set_property PACKAGE_PIN AR2 [get_ports ADC_IN3_224_P]
set_property PACKAGE_PIN AR1 [get_ports ADC_IN3_224_N]
set_property IOSTANDARD LVDS [get_ports ADC_IN*_224_*]

# ADC225 Input Ports
set_property PACKAGE_PIN AN5 [get_ports ADC_IN0_225_P]
set_property PACKAGE_PIN AN4 [get_ports ADC_IN0_225_N]
set_property PACKAGE_PIN AN2 [get_ports ADC_IN1_225_P]
set_property PACKAGE_PIN AN1 [get_ports ADC_IN1_225_N]
set_property PACKAGE_PIN AL5 [get_ports ADC_IN2_225_P]
set_property PACKAGE_PIN AL4 [get_ports ADC_IN2_225_N]
set_property PACKAGE_PIN AL2 [get_ports ADC_IN3_225_P]
set_property PACKAGE_PIN AL1 [get_ports ADC_IN3_225_N]
set_property IOSTANDARD LVDS [get_ports ADC_IN*_225_*]

# ADC226 Input Ports
set_property PACKAGE_PIN AJ5 [get_ports ADC_IN0_226_P]
set_property PACKAGE_PIN AJ4 [get_ports ADC_IN0_226_N]
set_property PACKAGE_PIN AJ2 [get_ports ADC_IN1_226_P]
set_property PACKAGE_PIN AJ1 [get_ports ADC_IN1_226_N]
set_property PACKAGE_PIN AG5 [get_ports ADC_IN2_226_P]
set_property PACKAGE_PIN AG4 [get_ports ADC_IN2_226_N]
set_property PACKAGE_PIN AG2 [get_ports ADC_IN3_226_P]
set_property PACKAGE_PIN AG1 [get_ports ADC_IN3_226_N]
set_property IOSTANDARD LVDS [get_ports ADC_IN*_226_*]

# ADC227 Input Ports
set_property PACKAGE_PIN AE5 [get_ports ADC_IN0_227_P]
set_property PACKAGE_PIN AE4 [get_ports ADC_IN0_227_N]
set_property PACKAGE_PIN AE2 [get_ports ADC_IN1_227_P]
set_property PACKAGE_PIN AE1 [get_ports ADC_IN1_227_N]
set_property PACKAGE_PIN AC5 [get_ports ADC_IN2_227_P]
set_property PACKAGE_PIN AC4 [get_ports ADC_IN2_227_N]
set_property PACKAGE_PIN AC2 [get_ports ADC_IN3_227_P]
set_property PACKAGE_PIN AC1 [get_ports ADC_IN3_227_N]
set_property IOSTANDARD LVDS [get_ports ADC_IN*_227_*]

# DAC228 Output Ports
set_property PACKAGE_PIN Y5 [get_ports DAC_VOUT0_228_P]
set_property PACKAGE_PIN Y4 [get_ports DAC_VOUT0_228_N]
set_property PACKAGE_PIN Y2 [get_ports DAC_VOUT1_228_P]
set_property PACKAGE_PIN Y1 [get_ports DAC_VOUT1_228_N]
set_property PACKAGE_PIN V5 [get_ports DAC_VOUT2_228_P]
set_property PACKAGE_PIN V4 [get_ports DAC_VOUT2_228_N]
set_property PACKAGE_PIN V2 [get_ports DAC_VOUT3_228_P]
set_property PACKAGE_PIN V1 [get_ports DAC_VOUT3_228_N]
set_property IOSTANDARD LVDS [get_ports DAC_VOUT*_228_*]

# DAC229 Output Ports
set_property PACKAGE_PIN T5 [get_ports DAC_VOUT0_229_P]
set_property PACKAGE_PIN T4 [get_ports DAC_VOUT0_229_N]
set_property PACKAGE_PIN T2 [get_ports DAC_VOUT1_229_P]
set_property PACKAGE_PIN T1 [get_ports DAC_VOUT1_229_N]
set_property PACKAGE_PIN P5 [get_ports DAC_VOUT2_229_P]
set_property PACKAGE_PIN P4 [get_ports DAC_VOUT2_229_N]
set_property PACKAGE_PIN P2 [get_ports DAC_VOUT3_229_P]
set_property PACKAGE_PIN P1 [get_ports DAC_VOUT3_229_N]
set_property IOSTANDARD LVDS [get_ports DAC_VOUT*_229_*]

# DAC230 Output Ports
set_property PACKAGE_PIN M5 [get_ports DAC_VOUT0_230_P]
set_property PACKAGE_PIN M4 [get_ports DAC_VOUT0_230_N]
set_property PACKAGE_PIN M2 [get_ports DAC_VOUT1_230_P]
set_property PACKAGE_PIN M1 [get_ports DAC_VOUT1_230_N]
set_property PACKAGE_PIN K5 [get_ports DAC_VOUT2_230_P]
set_property PACKAGE_PIN K4 [get_ports DAC_VOUT2_230_N]
set_property PACKAGE_PIN K2 [get_ports DAC_VOUT3_230_P]
set_property PACKAGE_PIN K1 [get_ports DAC_VOUT3_230_N]
set_property IOSTANDARD LVDS [get_ports DAC_VOUT*_230_*]

# DAC231 Output Ports
set_property PACKAGE_PIN H5 [get_ports DAC_VOUT0_231_P]
set_property PACKAGE_PIN H4 [get_ports DAC_VOUT0_231_N]
set_property PACKAGE_PIN H2 [get_ports DAC_VOUT1_231_P]
set_property PACKAGE_PIN H1 [get_ports DAC_VOUT1_231_N]
set_property PACKAGE_PIN F5 [get_ports DAC_VOUT2_231_P]
set_property PACKAGE_PIN F4 [get_ports DAC_VOUT2_231_N]
set_property PACKAGE_PIN F2 [get_ports DAC_VOUT3_231_P]
set_property PACKAGE_PIN F1 [get_ports DAC_VOUT3_231_N]
set_property IOSTANDARD LVDS [get_ports DAC_VOUT*_231_*]

###############################################################################
# DDR4 Memory Interface
###############################################################################

# DDR4 PL Memory SODIMM
set_property PACKAGE_PIN H26 [get_ports SYS_CLK_DDR4_PL_P]
set_property PACKAGE_PIN G26 [get_ports SYS_CLK_DDR4_PL_N]
set_property IOSTANDARD DIFF_SSTL12 [get_ports SYS_CLK_DDR4_PL_*]

# DDR4 Control Signals
set_property PACKAGE_PIN G22 [get_ports DDR4_PL_ACT_N]
set_property PACKAGE_PIN E22 [get_ports DDR4_PL_ALERT_N]
set_property PACKAGE_PIN J22 [get_ports DDR4_PL_EVENT_N]
set_property PACKAGE_PIN J23 [get_ports DDR4_PL_ODT0]
set_property PACKAGE_PIN L23 [get_ports DDR4_PL_ODT1]
set_property PACKAGE_PIN C25 [get_ports DDR4_PL_PAR]
set_property PACKAGE_PIN P21 [get_ports DDR4_PL_RST_N]

# DDR4 Address Bus
set_property PACKAGE_PIN B25 [get_ports DDR4_PL_A[0]]
set_property PACKAGE_PIN A24 [get_ports DDR4_PL_A[1]]
set_property PACKAGE_PIN B23 [get_ports DDR4_PL_A[2]]
set_property PACKAGE_PIN A25 [get_ports DDR4_PL_A[3]]
set_property PACKAGE_PIN C24 [get_ports DDR4_PL_A[4]]
set_property PACKAGE_PIN F23 [get_ports DDR4_PL_A[5]]
set_property PACKAGE_PIN D24 [get_ports DDR4_PL_A[6]]
set_property PACKAGE_PIN B22 [get_ports DDR4_PL_A[7]]
set_property PACKAGE_PIN A23 [get_ports DDR4_PL_A[8]]
set_property PACKAGE_PIN C23 [get_ports DDR4_PL_A[9]]
set_property PACKAGE_PIN B26 [get_ports DDR4_PL_A[10]]
set_property PACKAGE_PIN F24 [get_ports DDR4_PL_A[11]]
set_property PACKAGE_PIN A22 [get_ports DDR4_PL_A[12]]
set_property PACKAGE_PIN J24 [get_ports DDR4_PL_A[13]]
set_property PACKAGE_PIN G25 [get_ports DDR4_PL_A[14]]
set_property PACKAGE_PIN D26 [get_ports DDR4_PL_A[15]]
set_property PACKAGE_PIN E25 [get_ports DDR4_PL_A[16]]

# DDR4 Bank Address
set_property PACKAGE_PIN C26 [get_ports DDR4_PL_BA[0]]
set_property PACKAGE_PIN E26 [get_ports DDR4_PL_BA[1]]

# DDR4 Bank Group
set_property PACKAGE_PIN E24 [get_ports DDR4_PL_BG[0]]
set_property PACKAGE_PIN D23 [get_ports DDR4_PL_BG[1]]

# DDR4 Clock
set_property PACKAGE_PIN H25 [get_ports DDR4_PL_CK0_C]
set_property PACKAGE_PIN H24 [get_ports DDR4_PL_CK0_T]
set_property PACKAGE_PIN G23 [get_ports DDR4_PL_CK1_C]
set_property PACKAGE_PIN H23 [get_ports DDR4_PL_CK1_T]

# DDR4 Clock Enable
set_property PACKAGE_PIN D22 [get_ports DDR4_PL_CKE0]
set_property PACKAGE_PIN F22 [get_ports DDR4_PL_CKE1]

# DDR4 Chip Select
set_property PACKAGE_PIN F25 [get_ports DDR4_PL_CS0_N]
set_property PACKAGE_PIN K24 [get_ports DDR4_PL_CS1_N]
set_property PACKAGE_PIN K22 [get_ports DDR4_PL_CS2_N]
set_property PACKAGE_PIN L24 [get_ports DDR4_PL_CS3_N]

# DDR4 Data Mask / Data Inversion
set_property PACKAGE_PIN R20 [get_ports DDR4_PL_DM_DBI_N[0]]
set_property PACKAGE_PIN K21 [get_ports DDR4_PL_DM_DBI_N[1]]
set_property PACKAGE_PIN H20 [get_ports DDR4_PL_DM_DBI_N[2]]
set_property PACKAGE_PIN D21 [get_ports DDR4_PL_DM_DBI_N[3]]
set_property PACKAGE_PIN C30 [get_ports DDR4_PL_DM_DBI_N[4]]
set_property PACKAGE_PIN F30 [get_ports DDR4_PL_DM_DBI_N[5]]
set_property PACKAGE_PIN L28 [get_ports DDR4_PL_DM_DBI_N[6]]
set_property PACKAGE_PIN R27 [get_ports DDR4_PL_DM_DBI_N[7]]
set_property PACKAGE_PIN R21 [get_ports DDR4_PL_DM_DBI_N[8]]

# DDR4 Data Bus (72-bit with ECC)
# Byte 0
set_property PACKAGE_PIN P17 [get_ports DDR4_PL_DQ[0]]
set_property PACKAGE_PIN L18 [get_ports DDR4_PL_DQ[1]]
set_property PACKAGE_PIN L20 [get_ports DDR4_PL_DQ[2]]
set_property PACKAGE_PIN N20 [get_ports DDR4_PL_DQ[3]]
set_property PACKAGE_PIN R17 [get_ports DDR4_PL_DQ[4]]
set_property PACKAGE_PIN M18 [get_ports DDR4_PL_DQ[5]]
set_property PACKAGE_PIN N19 [get_ports DDR4_PL_DQ[6]]
set_property PACKAGE_PIN M20 [get_ports DDR4_PL_DQ[7]]

# Byte 1
set_property PACKAGE_PIN G17 [get_ports DDR4_PL_DQ[8]]
set_property PACKAGE_PIN H19 [get_ports DDR4_PL_DQ[9]]
set_property PACKAGE_PIN H21 [get_ports DDR4_PL_DQ[10]]
set_property PACKAGE_PIN J17 [get_ports DDR4_PL_DQ[11]]
set_property PACKAGE_PIN J19 [get_ports DDR4_PL_DQ[12]]
set_property PACKAGE_PIN F17 [get_ports DDR4_PL_DQ[13]]
set_property PACKAGE_PIN J18 [get_ports DDR4_PL_DQ[14]]
set_property PACKAGE_PIN J21 [get_ports DDR4_PL_DQ[15]]

# Byte 2
set_property PACKAGE_PIN F19 [get_ports DDR4_PL_DQ[16]]
set_property PACKAGE_PIN D18 [get_ports DDR4_PL_DQ[17]]
set_property PACKAGE_PIN G21 [get_ports DDR4_PL_DQ[18]]
set_property PACKAGE_PIN E20 [get_ports DDR4_PL_DQ[19]]
set_property PACKAGE_PIN F18 [get_ports DDR4_PL_DQ[20]]
set_property PACKAGE_PIN D19 [get_ports DDR4_PL_DQ[21]]
set_property PACKAGE_PIN E21 [get_ports DDR4_PL_DQ[22]]
set_property PACKAGE_PIN F20 [get_ports DDR4_PL_DQ[23]]

# Byte 3
set_property PACKAGE_PIN B21 [get_ports DDR4_PL_DQ[24]]
set_property PACKAGE_PIN A18 [get_ports DDR4_PL_DQ[25]]
set_property PACKAGE_PIN B20 [get_ports DDR4_PL_DQ[26]]
set_property PACKAGE_PIN A19 [get_ports DDR4_PL_DQ[27]]
set_property PACKAGE_PIN C19 [get_ports DDR4_PL_DQ[28]]
set_property PACKAGE_PIN B18 [get_ports DDR4_PL_DQ[29]]
set_property PACKAGE_PIN A20 [get_ports DDR4_PL_DQ[30]]
set_property PACKAGE_PIN C18 [get_ports DDR4_PL_DQ[31]]

# Byte 4
set_property PACKAGE_PIN A29 [get_ports DDR4_PL_DQ[32]]
set_property PACKAGE_PIN B27 [get_ports DDR4_PL_DQ[33]]
set_property PACKAGE_PIN B31 [get_ports DDR4_PL_DQ[34]]
set_property PACKAGE_PIN B32 [get_ports DDR4_PL_DQ[35]]
set_property PACKAGE_PIN A30 [get_ports DDR4_PL_DQ[36]]
set_property PACKAGE_PIN A27 [get_ports DDR4_PL_DQ[37]]
set_property PACKAGE_PIN B30 [get_ports DDR4_PL_DQ[38]]
set_property PACKAGE_PIN A32 [get_ports DDR4_PL_DQ[39]]

# Byte 5
set_property PACKAGE_PIN D29 [get_ports DDR4_PL_DQ[40]]
set_property PACKAGE_PIN E27 [get_ports DDR4_PL_DQ[41]]
set_property PACKAGE_PIN G28 [get_ports DDR4_PL_DQ[42]]
set_property PACKAGE_PIN G27 [get_ports DDR4_PL_DQ[43]]
set_property PACKAGE_PIN C29 [get_ports DDR4_PL_DQ[44]]
set_property PACKAGE_PIN D27 [get_ports DDR4_PL_DQ[45]]
set_property PACKAGE_PIN F29 [get_ports DDR4_PL_DQ[46]]
set_property PACKAGE_PIN E29 [get_ports DDR4_PL_DQ[47]]

# Byte 6
set_property PACKAGE_PIN K26 [get_ports DDR4_PL_DQ[48]]
set_property PACKAGE_PIN G30 [get_ports DDR4_PL_DQ[49]]
set_property PACKAGE_PIN H29 [get_ports DDR4_PL_DQ[50]]
set_property PACKAGE_PIN K29 [get_ports DDR4_PL_DQ[51]]
set_property PACKAGE_PIN J29 [get_ports DDR4_PL_DQ[52]]
set_property PACKAGE_PIN J26 [get_ports DDR4_PL_DQ[53]]
set_property PACKAGE_PIN H28 [get_ports DDR4_PL_DQ[54]]
set_property PACKAGE_PIN H30 [get_ports DDR4_PL_DQ[55]]

# Byte 7
set_property PACKAGE_PIN M27 [get_ports DDR4_PL_DQ[56]]
set_property PACKAGE_PIN L25 [get_ports DDR4_PL_DQ[57]]
set_property PACKAGE_PIN R26 [get_ports DDR4_PL_DQ[58]]
set_property PACKAGE_PIN N26 [get_ports DDR4_PL_DQ[59]]
set_property PACKAGE_PIN K25 [get_ports DDR4_PL_DQ[60]]
set_property PACKAGE_PIN M26 [get_ports DDR4_PL_DQ[61]]
set_property PACKAGE_PIN R25 [get_ports DDR4_PL_DQ[62]]
set_property PACKAGE_PIN M28 [get_ports DDR4_PL_DQ[63]]

# Byte 8 (ECC)
set_property PACKAGE_PIN N21 [get_ports DDR4_PL_DQ[64]]
set_property PACKAGE_PIN M22 [get_ports DDR4_PL_DQ[65]]
set_property PACKAGE_PIN P23 [get_ports DDR4_PL_DQ[66]]
set_property PACKAGE_PIN N23 [get_ports DDR4_PL_DQ[67]]
set_property PACKAGE_PIN M21 [get_ports DDR4_PL_DQ[68]]
set_property PACKAGE_PIN R22 [get_ports DDR4_PL_DQ[69]]
set_property PACKAGE_PIN M23 [get_ports DDR4_PL_DQ[70]]
set_property PACKAGE_PIN N24 [get_ports DDR4_PL_DQ[71]]

# DDR4 DQS Pairs
# Byte 0
set_property PACKAGE_PIN P19 [get_ports DDR4_PL_DQS_T[0]]
set_property PACKAGE_PIN N18 [get_ports DDR4_PL_DQS_C[0]]

# Byte 1
set_property PACKAGE_PIN H18 [get_ports DDR4_PL_DQS_T[1]]
set_property PACKAGE_PIN G18 [get_ports DDR4_PL_DQS_C[1]]

# Byte 2
set_property PACKAGE_PIN E17 [get_ports DDR4_PL_DQS_T[2]]
set_property PACKAGE_PIN D17 [get_ports DDR4_PL_DQS_C[2]]

# Byte 3
set_property PACKAGE_PIN B17 [get_ports DDR4_PL_DQS_T[3]]
set_property PACKAGE_PIN A17 [get_ports DDR4_PL_DQS_C[3]]

# Byte 4
set_property PACKAGE_PIN B28 [get_ports DDR4_PL_DQS_T[4]]
set_property PACKAGE_PIN A28 [get_ports DDR4_PL_DQS_C[4]]

# Byte 5
set_property PACKAGE_PIN F27 [get_ports DDR4_PL_DQS_T[5]]
set_property PACKAGE_PIN F28 [get_ports DDR4_PL_DQS_C[5]]

# Byte 6
set_property PACKAGE_PIN J27 [get_ports DDR4_PL_DQS_T[6]]
set_property PACKAGE_PIN J28 [get_ports DDR4_PL_DQS_C[6]]

# Byte 7
set_property PACKAGE_PIN N25 [get_ports DDR4_PL_DQS_T[7]]
set_property PACKAGE_PIN M25 [get_ports DDR4_PL_DQS_C[7]]

# Byte 8 (ECC)
set_property PACKAGE_PIN R24 [get_ports DDR4_PL_DQS_T[8]]
set_property PACKAGE_PIN P24 [get_ports DDR4_PL_DQS_C[8]]

# DDR4 I/O Standards
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_A*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_BA*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_BG*]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports DDR4_PL_CK*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_CKE*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_CS*_N]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_ACT_N]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_PAR]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_ODT*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PL_RST_N]
set_property IOSTANDARD LVCMOS12 [get_ports DDR4_PL_ALERT_N]
set_property IOSTANDARD LVCMOS12 [get_ports DDR4_PL_EVENT_N]
set_property IOSTANDARD POD12_DCI [get_ports DDR4_PL_DM_DBI_N*]
set_property IOSTANDARD POD12_DCI [get_ports DDR4_PL_DQ*]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports DDR4_PL_DQS_*]

###############################################################################
# PS DDR4 Memory Interface
###############################################################################

# PS DDR4 Memory Components
set_property PACKAGE_PIN BB35 [get_ports DDR4_PS_A[0]]
set_property PACKAGE_PIN BB38 [get_ports DDR4_PS_A[1]]
set_property PACKAGE_PIN BA37 [get_ports DDR4_PS_A[2]]
set_property PACKAGE_PIN AY37 [get_ports DDR4_PS_A[3]]
set_property PACKAGE_PIN BA35 [get_ports DDR4_PS_A[4]]
set_property PACKAGE_PIN BB37 [get_ports DDR4_PS_A[5]]
set_property PACKAGE_PIN AN34 [get_ports DDR4_PS_A[6]]
set_property PACKAGE_PIN AP38 [get_ports DDR4_PS_A[7]]
set_property PACKAGE_PIN AP37 [get_ports DDR4_PS_A[8]]
set_property PACKAGE_PIN AP36 [get_ports DDR4_PS_A[9]]
set_property PACKAGE_PIN AT34 [get_ports DDR4_PS_A[10]]
set_property PACKAGE_PIN AW37 [get_ports DDR4_PS_A[11]]
set_property PACKAGE_PIN AU36 [get_ports DDR4_PS_A[12]]
set_property PACKAGE_PIN AW36 [get_ports DDR4_PS_A[13]]
set_property PACKAGE_PIN AU37 [get_ports DDR4_PS_A[14]]
set_property PACKAGE_PIN AT37 [get_ports DDR4_PS_A[15]]
set_property PACKAGE_PIN AP34 [get_ports DDR4_PS_A[16]]

set_property PACKAGE_PIN AN35 [get_ports DDR4_PS_ACT_N]
set_property PACKAGE_PIN AR35 [get_ports DDR4_PS_ALERT_N]
set_property PACKAGE_PIN AM32 [get_ports DDR4_PS_BA[0]]
set_property PACKAGE_PIN AN38 [get_ports DDR4_PS_BA[1]]
set_property PACKAGE_PIN AN36 [get_ports DDR4_PS_BG[0]]
set_property PACKAGE_PIN AY35 [get_ports DDR4_PS_CK_C]
set_property PACKAGE_PIN AY36 [get_ports DDR4_PS_CK_T]
set_property PACKAGE_PIN AW38 [get_ports DDR4_PS_CKE]
set_property PACKAGE_PIN BA38 [get_ports DDR4_PS_CS_N]
set_property PACKAGE_PIN BB36 [get_ports DDR4_PS_ODT]
set_property PACKAGE_PIN AM33 [get_ports DDR4_PS_PAR]
set_property PACKAGE_PIN AR37 [get_ports DDR4_PS_RST_N]

# PS DDR4 Data Mask / Data Inversion
set_property PACKAGE_PIN AY29 [get_ports DDR4_PS_DM_DBI_N[0]]
set_property PACKAGE_PIN AY32 [get_ports DDR4_PS_DM_DBI_N[1]]
set_property PACKAGE_PIN AN29 [get_ports DDR4_PS_DM_DBI_N[2]]
set_property PACKAGE_PIN AR32 [get_ports DDR4_PS_DM_DBI_N[3]]
set_property PACKAGE_PIN AM36 [get_ports DDR4_PS_DM_DBI_N[4]]
set_property PACKAGE_PIN AL40 [get_ports DDR4_PS_DM_DBI_N[5]]
set_property PACKAGE_PIN AV40 [get_ports DDR4_PS_DM_DBI_N[6]]
set_property PACKAGE_PIN AP39 [get_ports DDR4_PS_DM_DBI_N[7]]
set_property PACKAGE_PIN AY39 [get_ports DDR4_PS_DM_DBI_N[8]]

# PS DDR4 Data Bus (72-bit with ECC)
# Byte 0
set_property PACKAGE_PIN AV31 [get_ports DDR4_PS_DQ[0]]
set_property PACKAGE_PIN AW31 [get_ports DDR4_PS_DQ[1]]
set_property PACKAGE_PIN AV30 [get_ports DDR4_PS_DQ[2]]
set_property PACKAGE_PIN AV29 [get_ports DDR4_PS_DQ[3]]
set_property PACKAGE_PIN AW29 [get_ports DDR4_PS_DQ[4]]
set_property PACKAGE_PIN BB31 [get_ports DDR4_PS_DQ[5]]
set_property PACKAGE_PIN BA30 [get_ports DDR4_PS_DQ[6]]
set_property PACKAGE_PIN BB30 [get_ports DDR4_PS_DQ[7]]

# Byte 1
set_property PACKAGE_PIN BA32 [get_ports DDR4_PS_DQ[8]]
set_property PACKAGE_PIN BB32 [get_ports DDR4_PS_DQ[9]]
set_property PACKAGE_PIN BB33 [get_ports DDR4_PS_DQ[10]]
set_property PACKAGE_PIN BA33 [get_ports DDR4_PS_DQ[11]]
set_property PACKAGE_PIN AW32 [get_ports DDR4_PS_DQ[12]]
set_property PACKAGE_PIN AW34 [get_ports DDR4_PS_DQ[13]]
set_property PACKAGE_PIN AW33 [get_ports DDR4_PS_DQ[14]]
set_property PACKAGE_PIN AV34 [get_ports DDR4_PS_DQ[15]]

# Byte 2
set_property PACKAGE_PIN AM30 [get_ports DDR4_PS_DQ[16]]
set_property PACKAGE_PIN AN31 [get_ports DDR4_PS_DQ[17]]
set_property PACKAGE_PIN AM31 [get_ports DDR4_PS_DQ[18]]
set_property PACKAGE_PIN AN30 [get_ports DDR4_PS_DQ[19]]
set_property PACKAGE_PIN AU30 [get_ports DDR4_PS_DQ[20]]
set_property PACKAGE_PIN AT30 [get_ports DDR4_PS_DQ[21]]
set_property PACKAGE_PIN AR29 [get_ports DDR4_PS_DQ[22]]
set_property PACKAGE_PIN AT29 [get_ports DDR4_PS_DQ[23]]

# Byte 3
set_property PACKAGE_PIN AU31 [get_ports DDR4_PS_DQ[24]]
set_property PACKAGE_PIN AU32 [get_ports DDR4_PS_DQ[25]]
set_property PACKAGE_PIN AU33 [get_ports DDR4_PS_DQ[26]]
set_property PACKAGE_PIN AV33 [get_ports DDR4_PS_DQ[27]]
set_property PACKAGE_PIN AP31 [get_ports DDR4_PS_DQ[28]]
set_property PACKAGE_PIN AR31 [get_ports DDR4_PS_DQ[29]]
set_property PACKAGE_PIN AP33 [get_ports DDR4_PS_DQ[30]]
set_property PACKAGE_PIN AP32 [get_ports DDR4_PS_DQ[31]]

# Byte 4
set_property PACKAGE_PIN AK38 [get_ports DDR4_PS_DQ[32]]
set_property PACKAGE_PIN AK37 [get_ports DDR4_PS_DQ[33]]
set_property PACKAGE_PIN AL37 [get_ports DDR4_PS_DQ[34]]
set_property PACKAGE_PIN AM37 [get_ports DDR4_PS_DQ[35]]
set_property PACKAGE_PIN AK36 [get_ports DDR4_PS_DQ[36]]
set_property PACKAGE_PIN AL34 [get_ports DDR4_PS_DQ[37]]
set_property PACKAGE_PIN AK34 [get_ports DDR4_PS_DQ[38]]
set_property PACKAGE_PIN AL33 [get_ports DDR4_PS_DQ[39]]

# Byte 5
set_property PACKAGE_PIN AM38 [get_ports DDR4_PS_DQ[40]]
set_property PACKAGE_PIN AL38 [get_ports DDR4_PS_DQ[41]]
set_property PACKAGE_PIN AL41 [get_ports DDR4_PS_DQ[42]]
set_property PACKAGE_PIN AK39 [get_ports DDR4_PS_DQ[43]]
set_property PACKAGE_PIN AL39 [get_ports DDR4_PS_DQ[44]]
set_property PACKAGE_PIN AN42 [get_ports DDR4_PS_DQ[45]]
set_property PACKAGE_PIN AM42 [get_ports DDR4_PS_DQ[46]]
set_property PACKAGE_PIN AL42 [get_ports DDR4_PS_DQ[47]]

# Byte 6
set_property PACKAGE_PIN AU42 [get_ports DDR4_PS_DQ[48]]
set_property PACKAGE_PIN AV41 [get_ports DDR4_PS_DQ[49]]
set_property PACKAGE_PIN AU41 [get_ports DDR4_PS_DQ[50]]
set_property PACKAGE_PIN AT39 [get_ports DDR4_PS_DQ[51]]
set_property PACKAGE_PIN AV39 [get_ports DDR4_PS_DQ[52]]
set_property PACKAGE_PIN AT38 [get_ports DDR4_PS_DQ[53]]
set_property PACKAGE_PIN AU38 [get_ports DDR4_PS_DQ[54]]
set_property PACKAGE_PIN AV38 [get_ports DDR4_PS_DQ[55]]

# Byte 7
set_property PACKAGE_PIN AR40 [get_ports DDR4_PS_DQ[56]]
set_property PACKAGE_PIN AR39 [get_ports DDR4_PS_DQ[57]]
set_property PACKAGE_PIN AT42 [get_ports DDR4_PS_DQ[58]]
set_property PACKAGE_PIN AR42 [get_ports DDR4_PS_DQ[59]]
set_property PACKAGE_PIN AP42 [get_ports DDR4_PS_DQ[60]]
set_property PACKAGE_PIN AN41 [get_ports DDR4_PS_DQ[61]]
set_property PACKAGE_PIN AN39 [get_ports DDR4_PS_DQ[62]]
set_property PACKAGE_PIN AN40 [get_ports DDR4_PS_DQ[63]]

# Byte 8 (ECC)
set_property PACKAGE_PIN BA39 [get_ports DDR4_PS_DQ[64]]
set_property PACKAGE_PIN BB40 [get_ports DDR4_PS_DQ[65]]
set_property PACKAGE_PIN BA40 [get_ports DDR4_PS_DQ[66]]
set_property PACKAGE_PIN AY42 [get_ports DDR4_PS_DQ[67]]
set_property PACKAGE_PIN BA41 [get_ports DDR4_PS_DQ[68]]
set_property PACKAGE_PIN AW41 [get_ports DDR4_PS_DQ[69]]
set_property PACKAGE_PIN AW39 [get_ports DDR4_PS_DQ[70]]
set_property PACKAGE_PIN AW42 [get_ports DDR4_PS_DQ[71]]

# PS DDR4 DQS Pairs
# Byte 0
set_property PACKAGE_PIN AY30 [get_ports DDR4_PS_DQS_T[0]]
set_property PACKAGE_PIN AY31 [get_ports DDR4_PS_DQS_C[0]]

# Byte 1
set_property PACKAGE_PIN AY34 [get_ports DDR4_PS_DQS_T[1]]
set_property PACKAGE_PIN BA34 [get_ports DDR4_PS_DQS_C[1]]

# Byte 2
set_property PACKAGE_PIN AP29 [get_ports DDR4_PS_DQS_T[2]]
set_property PACKAGE_PIN AR30 [get_ports DDR4_PS_DQS_C[2]]

# Byte 3
set_property PACKAGE_PIN AT32 [get_ports DDR4_PS_DQS_T[3]]
set_property PACKAGE_PIN AT33 [get_ports DDR4_PS_DQS_C[3]]

# Byte 4
set_property PACKAGE_PIN AK35 [get_ports DDR4_PS_DQS_T[4]]
set_property PACKAGE_PIN AL35 [get_ports DDR4_PS_DQS_C[4]]

# Byte 5
set_property PACKAGE_PIN AM40 [get_ports DDR4_PS_DQS_T[5]]
set_property PACKAGE_PIN AM41 [get_ports DDR4_PS_DQS_C[5]]

# Byte 6
set_property PACKAGE_PIN AT40 [get_ports DDR4_PS_DQS_T[6]]
set_property PACKAGE_PIN AU40 [get_ports DDR4_PS_DQS_C[6]]

# Byte 7
set_property PACKAGE_PIN AP41 [get_ports DDR4_PS_DQS_T[7]]
set_property PACKAGE_PIN AR41 [get_ports DDR4_PS_DQS_C[7]]

# Byte 8 (ECC)
set_property PACKAGE_PIN AY40 [get_ports DDR4_PS_DQS_T[8]]
set_property PACKAGE_PIN AY41 [get_ports DDR4_PS_DQS_C[8]]

# PS DDR4 I/O Standards
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_A*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_BA*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_BG*]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports DDR4_PS_CK_*]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_CKE]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_CS_N]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_ACT_N]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_PAR]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_ODT]
set_property IOSTANDARD SSTL12_DCI [get_ports DDR4_PS_RST_N]
set_property IOSTANDARD LVCMOS12 [get_ports DDR4_PS_ALERT_N]
set_property IOSTANDARD POD12_DCI [get_ports DDR4_PS_DM_DBI_N*]
set_property IOSTANDARD POD12_DCI [get_ports DDR4_PS_DQ*]
set_property IOSTANDARD DIFF_POD12_DCI [get_ports DDR4_PS_DQS_*]

###############################################################################
# User I/O, LEDs, and Push Buttons
###############################################################################

# User LEDs
set_property PACKAGE_PIN AR10 [get_ports PL_USER_LED1_G]
set_property PACKAGE_PIN AV11 [get_ports PL_USER_LED2_G]
set_property PACKAGE_PIN AR12 [get_ports PL_USER_LED3_R]
set_property PACKAGE_PIN AT12 [get_ports PL_USER_LED4_R]
set_property PACKAGE_PIN H11 [get_ports PL_USER_LED5_R]
set_property PACKAGE_PIN G10 [get_ports PL_USER_LED6_G]
set_property PACKAGE_PIN A10 [get_ports PL_USER_LED7_R]
set_property PACKAGE_PIN B10 [get_ports PL_USER_LED8_G]
set_property IOSTANDARD LVCMOS18 [get_ports PL_USER_LED*]

set_property PACKAGE_PIN AU26 [get_ports MIO13_USER_LED1_G]
set_property PACKAGE_PIN AP27 [get_ports MIO20_USER_LED2_G]
set_property PACKAGE_PIN AN28 [get_ports MIO21_USER_LED3_R]
set_property PACKAGE_PIN AL27 [get_ports MIO22_USER_LED4_R]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_USER_LED*]

# User Push Buttons
set_property PACKAGE_PIN AU10 [get_ports PL_USER_PB]
set_property PACKAGE_PIN AM27 [get_ports MIO23_USER_PB]
set_property PACKAGE_PIN P32 [get_ports PS_PROG_N]
set_property PACKAGE_PIN R31 [get_ports PS_SRST_N]
set_property IOSTANDARD LVCMOS18 [get_ports *_PB]
set_property IOSTANDARD LVCMOS18 [get_ports PS_*_N]

# User DIP Switches
set_property PACKAGE_PIN BA25 [get_ports PL_USER_SW1]
set_property PACKAGE_PIN BB25 [get_ports PL_USER_SW2]
set_property PACKAGE_PIN BB23 [get_ports PL_USER_SW3]
set_property PACKAGE_PIN BB22 [get_ports PL_USER_SW4]
set_property PACKAGE_PIN AY26 [get_ports MIO6_USER_SW1]
set_property PACKAGE_PIN AL28 [get_ports MIO24_USER_SW2]
set_property PACKAGE_PIN AM28 [get_ports MIO25_USER_SW3]
set_property PACKAGE_PIN G31 [get_ports MIO43_USER_SW4]
set_property IOSTANDARD LVCMOS18 [get_ports *_USER_SW*]

# Configuration Mode Switches
set_property PACKAGE_PIN AA32 [get_ports PS_M0]
set_property PACKAGE_PIN AB32 [get_ports PS_M1]
set_property PACKAGE_PIN AB31 [get_ports PS_M2]
set_property PACKAGE_PIN Y31 [get_ports PS_M3]
set_property IOSTANDARD LVCMOS18 [get_ports PS_M*]

# XADC Header
set_property PACKAGE_PIN C13 [get_ports XADC_AD1_F_N]
set_property PACKAGE_PIN D14 [get_ports XADC_AD1_F_P]
set_property PACKAGE_PIN C16 [get_ports XADC_AD2_F_N]
set_property PACKAGE_PIN D16 [get_ports XADC_AD2_F_P]
set_property PACKAGE_PIN E15 [get_ports XADC_AD3_F_N]
set_property PACKAGE_PIN E16 [get_ports XADC_AD3_F_P]
set_property PACKAGE_PIN A14 [get_ports XADC_AD4_F_N]
set_property PACKAGE_PIN A15 [get_ports XADC_AD4_F_P]
set_property PACKAGE_PIN AB18 [get_ports XADC_VN_F]
set_property PACKAGE_PIN AA19 [get_ports XADC_VP_F]
set_property PACKAGE_PIN AH21 [get_ports I2C_SCLK_65]
set_property PACKAGE_PIN AH20 [get_ports I2C_SDA_65]
set_property IOSTANDARD LVCMOS18 [get_ports XADC_*]
set_property IOSTANDARD LVCMOS18 [get_ports I2C_*_65]

# User I/O Headers
set_property PACKAGE_PIN A12 [get_ports PL_USER_IO1]
set_property PACKAGE_PIN B12 [get_ports PL_USER_IO2]
set_property PACKAGE_PIN D12 [get_ports PL_USER_IO3]
set_property PACKAGE_PIN A13 [get_ports PL_USER_IO4]
set_property PACKAGE_PIN B13 [get_ports PL_USER_IO5]
set_property PACKAGE_PIN D13 [get_ports PL_USER_IO6]
set_property PACKAGE_PIN C14 [get_ports PL_USER_IO7]
set_property PACKAGE_PIN C15 [get_ports PL_USER_IO8]
set_property IOSTANDARD LVCMOS18 [get_ports PL_USER_IO*]

# I2C Bus
set_property PACKAGE_PIN AP12 [get_ports I2C_RST_N_PL]
set_property PACKAGE_PIN AR11 [get_ports I2C_SCL_PL]
set_property PACKAGE_PIN AP11 [get_ports I2C_SDA_PL]
set_property PACKAGE_PIN AU27 [get_ports MIO14_I2C0_SCL]
set_property PACKAGE_PIN AT27 [get_ports MIO15_I2C0_SDA]
set_property IOSTANDARD LVCMOS18 [get_ports I2C_*_PL]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_I2C0_*]

# 1-PPS Interface
set_property PACKAGE_PIN B11 [get_ports IRIG_ADC_CS_N]
set_property PACKAGE_PIN F10 [get_ports IRIG_ADC_SCLK]
set_property PACKAGE_PIN C11 [get_ports IRIG_ADC_SDO]
set_property PACKAGE_PIN E11 [get_ports IRIG_COMP_OUT]
set_property PACKAGE_PIN D11 [get_ports IRIG_TRIG_OUT]
set_property IOSTANDARD LVCMOS18 [get_ports IRIG_*]

# UART Ports
set_property PACKAGE_PIN F9 [get_ports UART_PL_CTS]
set_property PACKAGE_PIN E9 [get_ports UART_PL_GPIO0]
set_property PACKAGE_PIN H10 [get_ports UART_PL_GPIO1]
set_property PACKAGE_PIN C10 [get_ports UART_PL_RST_N]
set_property PACKAGE_PIN D9 [get_ports UART_PL_RTS]
set_property PACKAGE_PIN C9 [get_ports UART_PL_RXD]
set_property PACKAGE_PIN A9 [get_ports UART_PL_SUSPEND_N]
set_property PACKAGE_PIN E10 [get_ports UART_PL_TXD]
set_property PACKAGE_PIN H9 [get_ports USB_PL_PERI_PWR]
set_property PACKAGE_PIN AP28 [get_ports MIO18_UART0_RXD]
set_property PACKAGE_PIN AR27 [get_ports MIO19_UART0_TXD]
set_property IOSTANDARD LVCMOS18 [get_ports UART_PL_*]
set_property IOSTANDARD LVCMOS18 [get_ports USB_PL_*]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_UART0_*]

# Fan Control
set_property PACKAGE_PIN AW18 [get_ports FAN_PWM]
set_property IOSTANDARD LVCMOS18 [get_ports FAN_PWM]

# IP Protection Circuit
set_property PACKAGE_PIN AV9 [get_ports IP_PROTECTION]
set_property IOSTANDARD LVCMOS18 [get_ports IP_PROTECTION]

# Status LEDs
set_property PACKAGE_PIN AC30 [get_ports PS_ERR_OUT]
set_property PACKAGE_PIN AC31 [get_ports PS_ERR_STAT]
set_property PACKAGE_PIN P31 [get_ports PS_INIT_B]
set_property PACKAGE_PIN N31 [get_ports PS_DONE]
set_property IOSTANDARD LVCMOS18 [get_ports PS_ERR_*]
set_property IOSTANDARD LVCMOS18 [get_ports PS_INIT_B]
set_property IOSTANDARD LVCMOS18 [get_ports PS_DONE]

# MIO GPIO Header
set_property PACKAGE_PIN AU28 [get_ports MIO16_I2C1_SCL_500]
set_property PACKAGE_PIN AT28 [get_ports MIO17_I2C1_SDA_500]
set_property PACKAGE_PIN D34 [get_ports MIO32_SPI1_SCK_501]
set_property PACKAGE_PIN D32 [get_ports MIO33_SPI1_SS2_501]
set_property PACKAGE_PIN D31 [get_ports MIO34_SPI1_SS1_501]
set_property PACKAGE_PIN C33 [get_ports MIO35_SPI1_SS0_501]
set_property PACKAGE_PIN E31 [get_ports MIO36_SPI1_MISO_501]
set_property PACKAGE_PIN E32 [get_ports MIO37_SPI1_MOSI_501]
set_property PACKAGE_PIN A34 [get_ports MIO26_501]
set_property PACKAGE_PIN D33 [get_ports MIO31_501]
set_property PACKAGE_PIN G32 [get_ports MIO38_501]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_501]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_I2C1_*]
set_property IOSTANDARD LVCMOS18 [get_ports MIO*_SPI1_*]

###############################################################################
# Timing Constraints
###############################################################################

# System/DDR4 Clock
create_clock -period 3.332 -name sys_clk [get_ports SYS_CLK_DDR4_PL_P]

# PL User Clock
create_clock -period 10.0 -name pl_user_clk [get_ports CLK_PL_USER_P]

# Set asynchronous clock groups
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks sys_clk] -group [get_clocks -include_generated_clocks pl_user_clk]

# QSFP28 Reference Clocks
create_clock -period 6.206 -name qsfp28_a_refclk [get_ports GTY_130_REFCLK_P]
create_clock -period 6.206 -name qsfp28_b_refclk [get_ports GTY_131_REFCLK_P]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks qsfp28_a_refclk] -group [get_clocks -include_generated_clocks qsfp28_b_refclk]

# FMC+ Reference Clock
create_clock -period 10.0 -name fmc_refclk [get_ports FMC_PL_REFCLK_M2C_P]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks fmc_refclk]

# ADC/DAC Reference Clocks
create_clock -period 0.407 -name adc224_refclk [get_ports ADC_224_REFCLK_P]
create_clock -period 0.407 -name adc225_refclk [get_ports ADC_225_REFCLK_P]
create_clock -period 0.407 -name adc226_refclk [get_ports ADC_226_REFCLK_P]
create_clock -period 0.407 -name adc227_refclk [get_ports ADC_227_REFCLK_P]
create_clock -period 0.156 -name dac228_refclk [get_ports DAC_228_REFCLK_P]
create_clock -period 0.156 -name dac229_refclk [get_ports DAC_229_REFCLK_P]
create_clock -period 0.156 -name dac230_refclk [get_ports DAC_230_REFCLK_P]
create_clock -period 0.156 -name dac231_refclk [get_ports DAC_231_REFCLK_P]

# Set asynchronous clock groups for ADC/DAC clocks
set_clock_groups -asynchronous \
  -group [get_clocks -include_generated_clocks adc224_refclk] \
  -group [get_clocks -include_generated_clocks adc225_refclk] \
  -group [get_clocks -include_generated_clocks adc226_refclk] \
  -group [get_clocks -include_generated_clocks adc227_refclk] \
  -group [get_clocks -include_generated_clocks dac228_refclk] \
  -group [get_clocks -include_generated_clocks dac229_refclk] \
  -group [get_clocks -include_generated_clocks dac230_refclk] \
  -group [get_clocks -include_generated_clocks dac231_refclk]

# Processor System Clocks (Fixed by hardware design)
create_clock -period 33.33 -name ps_ref_clk [get_pins */PS8_i/PLCLK[0]]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks ps_ref_clk]

# FMC+ GTY Reference Clocks
create_clock -period 6.206 -name fmc_gty0_refclk [get_ports FMC_PL_GBTCLK0_M2C_P]
create_clock -period 6.206 -name fmc_gty1_refclk [get_ports FMC_PL_GBTCLK1_M2C_P]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks fmc_gty0_refclk] -group [get_clocks -include_generated_clocks fmc_gty1_refclk]

# XCVIO I/O Standard
set_property DIFF_TERM_ADV TERM_100 [get_ports FMC_PL_*]
set_property DIFF_TERM_ADV TERM_100 [get_ports SYS_CLK_DDR4_PL_*]
set_property DIFF_TERM_ADV TERM_100 [get_ports CLK_PL_USER_*]
set_property DIFF_TERM_ADV TERM_100 [get_ports *_REFCLK_*]

# False Path Constraints
set_false_path -from [get_ports PL_USER_PB]
set_false_path -from [get_ports PL_USER_SW*]
set_false_path -to [get_ports PL_USER_LED*]
set_false_path -from [get_ports PS_SRST_N]
set_false_path -from [get_ports IRIG_*]
set_false_path -to [get_ports FAN_PWM]
set_false_path -from [get_ports *_PRSNT_*]

# Max Delay Constraints
set_max_delay -from [get_ports I2C_*_PL] -to [get_clocks -of_objects [get_pins */PS8_i/PLCLK[0]]] 10.000
set_max_delay -from [get_clocks -of_objects [get_pins */PS8_i/PLCLK[0]]] -to [get_ports I2C_*_PL] 10.000

# Input/Output Delay Constraints
set_input_delay -clock [get_clocks sys_clk] -max 0.5 [get_ports PL_USER_IO*]
set_output_delay -clock [get_clocks sys_clk] -max 0.5 [get_ports PL_USER_IO*]

###############################################################################
# End of HTG-ZRF16 Constraints
###############################################################################