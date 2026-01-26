VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(1:0)
        SIGNAL B(1:0)
        SIGNAL S
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL Y(1:0)
        SIGNAL B(1)
        SIGNAL B(0)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL Y(1)
        SIGNAL Y(0)
        PORT Input A(1:0)
        PORT Input B(1:0)
        PORT Input S
        PORT Output Y(1:0)
        BEGIN BLOCKDEF mux2_1b
            TIMESTAMP 2026 1 24 21 44 18
            RECTANGLE N 64 -192 192 -64 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 128 -64 128 0 
            LINE N 192 -128 256 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 mux2_1b
            PIN A A(1)
            PIN B B(1)
            PIN S S
            PIN Y Y(1)
        END BLOCK
        BEGIN BLOCK XLXI_4 mux2_1b
            PIN A A(0)
            PIN B B(0)
            PIN S S
            PIN Y Y(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(1:0)
            WIRE 640 640 640 688
            WIRE 640 688 640 912
            WIRE 640 912 640 1104
        END BRANCH
        IOMARKER 640 640 A(1:0) R270 28
        BEGIN INSTANCE XLXI_3 1152 1072 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1152 848 R0
        END INSTANCE
        IOMARKER 768 640 B(1:0) R270 28
        BEGIN BRANCH B(1:0)
            WIRE 768 640 768 752
            WIRE 768 752 768 976
            WIRE 768 976 768 1104
        END BRANCH
        IOMARKER 1072 1312 S R180 28
        BEGIN BRANCH S
            WIRE 1072 1312 1232 1312
            WIRE 1232 1312 1280 1312
            WIRE 1280 1312 1472 1312
            WIRE 1280 848 1280 864
            WIRE 1280 864 1472 864
            WIRE 1472 864 1472 1312
            WIRE 1280 1072 1280 1312
        END BRANCH
        BEGIN BRANCH Y(1:0)
            WIRE 1696 688 1696 720
            WIRE 1696 720 1696 944
            WIRE 1696 944 1696 1008
        END BRANCH
        IOMARKER 1696 688 Y(1:0) R270 28
        BUSTAP 768 976 864 976
        BEGIN BRANCH B(1)
            WIRE 864 976 1008 976
            WIRE 1008 976 1152 976
            BEGIN DISPLAY 1008 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 768 752 864 752
        BEGIN BRANCH B(0)
            WIRE 864 752 1008 752
            WIRE 1008 752 1152 752
            BEGIN DISPLAY 1008 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 640 912 736 912
        BEGIN BRANCH A(1)
            WIRE 736 912 944 912
            WIRE 944 912 1152 912
            BEGIN DISPLAY 944 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 640 688 736 688
        BEGIN BRANCH A(0)
            WIRE 736 688 944 688
            WIRE 944 688 1152 688
            BEGIN DISPLAY 944 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1696 944 1600 944
        BEGIN BRANCH Y(1)
            WIRE 1408 944 1504 944
            WIRE 1504 944 1600 944
            BEGIN DISPLAY 1504 944 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1696 720 1600 720
        BEGIN BRANCH Y(0)
            WIRE 1408 720 1504 720
            WIRE 1504 720 1600 720
            BEGIN DISPLAY 1504 720 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
