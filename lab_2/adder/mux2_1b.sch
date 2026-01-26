VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S
        SIGNAL A
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL B
        SIGNAL Y
        PORT Input S
        PORT Input A
        PORT Input B
        PORT Output Y
        BEGIN BLOCKDEF nand2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 216 -96 
            CIRCLE N 192 -108 216 -84 
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 nand2
            PIN I0 S
            PIN I1 S
            PIN O XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_3 nand2
            PIN I0 XLXN_16
            PIN I1 XLXN_15
            PIN O Y
        END BLOCK
        BEGIN BLOCK XLXI_4 nand2
            PIN I0 B
            PIN I1 XLXN_13
            PIN O XLXN_16
        END BLOCK
        BEGIN BLOCK XLXI_5 nand2
            PIN I0 S
            PIN I1 A
            PIN O XLXN_15
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2720 1760
        INSTANCE XLXI_2 1200 704 R0
        INSTANCE XLXI_5 1200 512 R0
        BEGIN BRANCH S
            WIRE 976 608 1040 608
            WIRE 1040 608 1104 608
            WIRE 1104 608 1104 640
            WIRE 1104 640 1200 640
            WIRE 1040 448 1200 448
            WIRE 1040 448 1040 608
            WIRE 1104 576 1200 576
            WIRE 1104 576 1104 608
        END BRANCH
        BEGIN BRANCH A
            WIRE 976 384 1200 384
        END BRANCH
        IOMARKER 976 384 A R180 28
        BEGIN BRANCH XLXN_13
            WIRE 1456 608 1472 608
            WIRE 1472 608 1472 672
            WIRE 1472 672 1568 672
        END BRANCH
        INSTANCE XLXI_4 1568 800 R0
        INSTANCE XLXI_3 1904 768 R0
        BEGIN BRANCH XLXN_15
            WIRE 1456 416 1808 416
            WIRE 1808 416 1808 640
            WIRE 1808 640 1904 640
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1824 704 1904 704
        END BRANCH
        BEGIN BRANCH B
            WIRE 976 736 1136 736
            WIRE 1136 736 1568 736
        END BRANCH
        IOMARKER 976 736 B R180 28
        IOMARKER 976 608 S R180 28
        BEGIN BRANCH Y
            WIRE 2160 672 2240 672
            WIRE 2240 672 2336 672
        END BRANCH
        IOMARKER 2336 672 Y R0 28
    END SHEET
END SCHEMATIC
