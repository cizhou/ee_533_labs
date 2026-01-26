VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL XLXN_3
        SIGNAL S
        SIGNAL Y(7:0)
        SIGNAL B(7:4)
        SIGNAL B(3:0)
        SIGNAL A(7:4)
        SIGNAL A(3:0)
        SIGNAL Y(7:4)
        SIGNAL Y(3:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input S
        PORT Output Y(7:0)
        BEGIN BLOCKDEF mux2_4b
            TIMESTAMP 2026 1 24 22 9 45
            RECTANGLE N 64 -192 192 -64 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 128 -64 128 0 
            LINE N 192 -128 256 -128 
            RECTANGLE N 192 -140 256 -116 
        END BLOCKDEF
        BEGIN BLOCK XLXI_13 mux2_4b
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN S S
            PIN Y(3:0) Y(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 mux2_4b
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN S S
            PIN Y(3:0) Y(7:4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 1072 1232 1072 1696
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1200 1232 1200 1696
        END BRANCH
        BEGIN BRANCH S
            WIRE 1504 1904 1712 1904
            WIRE 1712 1904 1888 1904
            WIRE 1712 1440 1888 1440
            WIRE 1888 1440 1888 1904
            WIRE 1712 1664 1712 1904
        END BRANCH
        BEGIN BRANCH Y(7:0)
            WIRE 2128 1280 2128 1312
            WIRE 2128 1312 2128 1536
            WIRE 2128 1536 2128 1600
        END BRANCH
        BUSTAP 1200 1568 1296 1568
        BEGIN BRANCH B(7:4)
            WIRE 1296 1568 1376 1568
            WIRE 1376 1568 1584 1568
            BEGIN DISPLAY 1376 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1200 1344 1296 1344
        BEGIN BRANCH B(3:0)
            WIRE 1296 1344 1376 1344
            WIRE 1376 1344 1584 1344
            BEGIN DISPLAY 1376 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1504 1168 1504
        BEGIN BRANCH A(7:4)
            WIRE 1168 1504 1376 1504
            WIRE 1376 1504 1584 1504
            BEGIN DISPLAY 1376 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 1280 1168 1280
        BEGIN BRANCH A(3:0)
            WIRE 1168 1280 1376 1280
            WIRE 1376 1280 1584 1280
            BEGIN DISPLAY 1376 1280 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2128 1536 2032 1536
        BEGIN BRANCH Y(7:4)
            WIRE 1840 1536 1936 1536
            WIRE 1936 1536 2032 1536
            BEGIN DISPLAY 1936 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2128 1312 2032 1312
        BEGIN BRANCH Y(3:0)
            WIRE 1840 1312 1936 1312
            WIRE 1936 1312 2032 1312
            BEGIN DISPLAY 1936 1312 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 1072 1232 A(7:0) R270 28
        IOMARKER 1200 1232 B(7:0) R270 28
        IOMARKER 1504 1904 S R180 28
        IOMARKER 2128 1280 Y(7:0) R270 28
        BEGIN INSTANCE XLXI_13 1584 1440 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 1584 1664 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
