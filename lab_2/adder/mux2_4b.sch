VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3
        SIGNAL XLXN_11
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL XLXN_21
        SIGNAL S
        SIGNAL Y(3:0)
        SIGNAL B(3:2)
        SIGNAL B(1:0)
        SIGNAL A(3:2)
        SIGNAL A(1:0)
        SIGNAL Y(3:2)
        SIGNAL Y(1:0)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Input S
        PORT Output Y(3:0)
        BEGIN BLOCKDEF mux2_2b
            TIMESTAMP 2026 1 24 22 19 59
            RECTANGLE N 64 -192 192 -64 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 192 -128 256 -128 
            RECTANGLE N 192 -140 256 -116 
            LINE N 128 -64 128 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_11 mux2_2b
            PIN A(1:0) A(1:0)
            PIN B(1:0) B(1:0)
            PIN Y(1:0) Y(1:0)
            PIN S S
        END BLOCK
        BEGIN BLOCK XLXI_12 mux2_2b
            PIN A(1:0) A(3:2)
            PIN B(1:0) B(3:2)
            PIN Y(1:0) Y(3:2)
            PIN S S
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(3:0)
            WIRE 944 1072 944 1536
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 1072 1072 1072 1536
        END BRANCH
        BEGIN BRANCH S
            WIRE 1376 1744 1584 1744
            WIRE 1584 1744 1760 1744
            WIRE 1584 1280 1760 1280
            WIRE 1760 1280 1760 1744
            WIRE 1584 1504 1584 1744
        END BRANCH
        BEGIN BRANCH Y(3:0)
            WIRE 2000 1120 2000 1152
            WIRE 2000 1152 2000 1376
            WIRE 2000 1376 2000 1440
        END BRANCH
        BUSTAP 1072 1408 1168 1408
        BEGIN BRANCH B(3:2)
            WIRE 1168 1408 1248 1408
            WIRE 1248 1408 1456 1408
            BEGIN DISPLAY 1248 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1184 1168 1184
        BEGIN BRANCH B(1:0)
            WIRE 1168 1184 1248 1184
            WIRE 1248 1184 1456 1184
            BEGIN DISPLAY 1248 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1344 1040 1344
        BEGIN BRANCH A(3:2)
            WIRE 1040 1344 1248 1344
            WIRE 1248 1344 1456 1344
            BEGIN DISPLAY 1248 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1120 1040 1120
        BEGIN BRANCH A(1:0)
            WIRE 1040 1120 1248 1120
            WIRE 1248 1120 1456 1120
            BEGIN DISPLAY 1248 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 1376 1904 1376
        BEGIN BRANCH Y(3:2)
            WIRE 1712 1376 1808 1376
            WIRE 1808 1376 1904 1376
            BEGIN DISPLAY 1808 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2000 1152 1904 1152
        BEGIN BRANCH Y(1:0)
            WIRE 1712 1152 1808 1152
            WIRE 1808 1152 1904 1152
            BEGIN DISPLAY 1808 1152 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 944 1072 A(3:0) R270 28
        IOMARKER 1072 1072 B(3:0) R270 28
        IOMARKER 1376 1744 S R180 28
        IOMARKER 2000 1120 Y(3:0) R270 28
        BEGIN INSTANCE XLXI_11 1456 1280 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1456 1504 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
