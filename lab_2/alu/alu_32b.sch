VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_11(15:0)
        SIGNAL XLXN_12(15:0)
        SIGNAL XLXN_13(7:0)
        SIGNAL XLXN_14(15:0)
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL XLXN_44(31:0)
        SIGNAL XLXN_63(31:0)
        SIGNAL XLXN_65(31:0)
        SIGNAL XLXN_5(7:0)
        SIGNAL S(31:0)
        SIGNAL XLXN_10(15:0)
        SIGNAL M(1)
        SIGNAL XLXN_76
        SIGNAL M(2)
        SIGNAL XLXN_27(7:0)
        SIGNAL XLXN_29(15:0)
        SIGNAL XLXN_15(15:0)
        SIGNAL XLXN_16(15:0)
        SIGNAL XLXN_87(31:0)
        SIGNAL M(0)
        SIGNAL XLXN_89(31:0)
        SIGNAL XLXN_95(0)
        SIGNAL XLXN_95(31:0)
        SIGNAL B(30:0)
        SIGNAL XLXN_103
        SIGNAL C(2)
        SIGNAL XLXN_109
        SIGNAL C(0)
        SIGNAL C(1)
        SIGNAL M(2:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output S(31:0)
        PORT Input M(2:0)
        BEGIN BLOCKDEF mux2_32b
            TIMESTAMP 2026 1 24 23 47 42
            RECTANGLE N 64 -192 192 -64 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 128 -64 128 0 
            LINE N 192 -128 256 -128 
            RECTANGLE N 192 -140 256 -116 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2_32b
            TIMESTAMP 2026 1 24 23 52 7
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF adder_32b
            TIMESTAMP 2026 1 24 23 51 2
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 60 -128 
            LINE N 256 -96 208 -96 
            ARC N -40 -152 72 -40 48 -48 44 -144 
            ARC N -24 -152 88 -40 64 -48 64 -144 
            LINE N 128 -144 64 -144 
            LINE N 128 -48 64 -48 
            ARC N 44 -144 220 32 208 -96 128 -144 
            ARC N 44 -224 220 -48 128 -48 208 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCK XLXI_19 mux2_32b
            PIN A(31:0) XLXN_5(7:0)
            PIN B(31:0) XLXN_10(15:0)
            PIN S M(2)
            PIN Y(31:0) S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_24 adder_32b
            PIN Cin XLXN_109
            PIN A(7:0) A(31:0)
            PIN B(31:0) XLXN_27(7:0)
            PIN Cout
            PIN S(31:0) XLXN_5(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 mux2_32b
            PIN A(31:0) XLXN_29(15:0)
            PIN B(31:0) M(0)
            PIN S M(1)
            PIN Y(31:0) XLXN_27(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_23 xor2_32b
            PIN A(31:0)
            PIN B(31:0) B(31:0)
            PIN C(31:0) XLXN_29(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 mux2_32b
            PIN A(31:0) XLXN_15(15:0)
            PIN B(31:0) XLXN_16(15:0)
            PIN S M(1)
            PIN Y(31:0) XLXN_10(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 mux2_32b
            PIN A(31:0)
            PIN B(31:0)
            PIN S
            PIN Y(31:0) XLXN_16(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 mux2_32b
            PIN A(31:0) XLXN_95(31:0)
            PIN B(31:0)
            PIN S M(0)
            PIN Y(31:0) XLXN_15(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_46 gnd
            PIN G XLXN_95(0)
        END BLOCK
        BEGIN BLOCK XLXI_49 xor2
            PIN I0 C(1)
            PIN I1 C(0)
            PIN O XLXN_103
        END BLOCK
        BEGIN BLOCK XLXI_52 and2b1
            PIN I0 C(2)
            PIN I1 XLXN_103
            PIN O XLXN_109
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2720 1760
        BEGIN BRANCH XLXN_5(7:0)
            WIRE 880 1248 880 1280
            WIRE 880 1280 1376 1280
            WIRE 1376 1280 1376 1296
        END BRANCH
        BEGIN BRANCH S(31:0)
            WIRE 1408 1552 1408 1616
        END BRANCH
        BEGIN BRANCH XLXN_10(15:0)
            WIRE 1440 1280 1440 1296
            WIRE 1440 1280 2000 1280
            WIRE 2000 1248 2000 1280
        END BRANCH
        BEGIN INSTANCE XLXI_19 1536 1296 M90
        END INSTANCE
        BEGIN BRANCH A(31:0)
            WIRE 816 768 816 864
            BEGIN DISPLAY 816 768 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M(1)
            WIRE 1200 672 1216 672
            WIRE 1216 624 1216 672
            WIRE 1216 624 1248 624
            WIRE 1248 624 1280 624
            BEGIN DISPLAY 1248 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M(2)
            WIRE 1536 1424 1632 1424
            BEGIN DISPLAY 1632 1424 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_24 976 864 M90
        END INSTANCE
        BEGIN BRANCH XLXN_27(7:0)
            WIRE 880 816 1072 816
            WIRE 880 816 880 864
            WIRE 1072 800 1072 816
        END BRANCH
        BEGIN BRANCH XLXN_29(15:0)
            WIRE 1040 512 1040 544
        END BRANCH
        BEGIN INSTANCE XLXI_15 1200 544 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_23 944 128 R90
        END INSTANCE
        BEGIN BRANCH B(31:0)
            WIRE 976 64 976 96
            WIRE 976 96 976 128
            BEGIN DISPLAY 976 96 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1408 1616 S(31:0) R0 28
        BEGIN BRANCH XLXN_15(15:0)
            WIRE 1808 928 1808 960
            WIRE 1808 960 1968 960
            WIRE 1968 960 1968 992
        END BRANCH
        BEGIN BRANCH XLXN_16(15:0)
            WIRE 2032 960 2032 992
            WIRE 2032 960 2256 960
            WIRE 2256 928 2256 960
        END BRANCH
        BEGIN INSTANCE XLXI_16 2128 992 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_18 2384 672 M90
        END INSTANCE
        BEGIN BRANCH M(1)
            WIRE 2128 1120 2176 1120
            WIRE 2176 1120 2192 1120
            BEGIN DISPLAY 2176 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_17 1936 672 M90
        END INSTANCE
        BEGIN BRANCH M(0)
            WIRE 1936 800 1952 800
            WIRE 1952 800 2000 800
            BEGIN DISPLAY 1952 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_46 1472 480 R90
        BEGIN BRANCH XLXN_95(0)
            WIRE 1600 544 1632 544
            WIRE 1632 544 1680 544
            BEGIN DISPLAY 1640 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_95(31:0)
            WIRE 1776 352 1776 432
            WIRE 1776 432 1776 544
            WIRE 1776 544 1776 672
        END BRANCH
        BUSTAP 1776 544 1680 544
        BUSTAP 1776 432 1680 432
        BEGIN BRANCH B(30:0)
            WIRE 1504 432 1552 432
            WIRE 1552 432 1680 432
            BEGIN DISPLAY 1552 432 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M(0)
            WIRE 1104 528 1248 528
            WIRE 1104 528 1104 544
            WIRE 1248 320 1248 528
            BEGIN DISPLAY 1248 320 ATTR Name
                ALIGNMENT SOFT-VLEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_103
            WIRE 1328 1024 1344 1024
        END BRANCH
        BEGIN BRANCH C(2)
            WIRE 1328 1088 1360 1088
            WIRE 1360 1088 1360 1152
            WIRE 1360 1152 1360 1184
            BEGIN DISPLAY 1360 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_52 1328 1152 M0
        INSTANCE XLXI_49 1600 1120 M0
        BEGIN BRANCH XLXN_109
            WIRE 944 848 944 864
            WIRE 944 848 1056 848
            WIRE 1056 848 1056 1056
            WIRE 1056 1056 1072 1056
        END BRANCH
        BEGIN BRANCH C(0)
            WIRE 1600 992 1632 992
            WIRE 1632 992 1680 992
            BEGIN DISPLAY 1632 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C(1)
            WIRE 1600 1056 1632 1056
            WIRE 1632 1056 1680 1056
            BEGIN DISPLAY 1632 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 528 464 688 464
        END BRANCH
        BEGIN BRANCH M(2:0)
            WIRE 528 592 688 592
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 528 528 688 528
        END BRANCH
        IOMARKER 528 464 A(31:0) R180 28
        IOMARKER 528 592 M(2:0) R180 28
        IOMARKER 528 528 B(31:0) R180 28
    END SHEET
END SCHEMATIC
