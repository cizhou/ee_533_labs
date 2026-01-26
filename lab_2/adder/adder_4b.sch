VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL A(3:0)
        SIGNAL B(3:0)
        SIGNAL S(3:0)
        SIGNAL Cout
        SIGNAL XLXN_28
        SIGNAL Cin
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        SIGNAL S(0)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        PORT Input A(3:0)
        PORT Input B(3:0)
        PORT Output S(3:0)
        PORT Output Cout
        PORT Input Cin
        BEGIN BLOCKDEF adder_1b
            TIMESTAMP 2026 1 24 2 50 32
            RECTANGLE N 64 -192 192 -64 
            LINE N 160 -192 160 -256 
            LINE N 96 -192 96 -256 
            LINE N 128 -64 128 0 
            LINE N 64 -144 0 -144 
            LINE N 192 -144 256 -144 
        END BLOCKDEF
        BEGIN BLOCK XLXI_9 adder_1b
            PIN A A(0)
            PIN B B(0)
            PIN S S(0)
            PIN Cout XLXN_21
            PIN Cin Cin
        END BLOCK
        BEGIN BLOCK XLXI_10 adder_1b
            PIN A A(1)
            PIN B B(1)
            PIN S S(1)
            PIN Cout XLXN_20
            PIN Cin XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_11 adder_1b
            PIN A A(2)
            PIN B B(2)
            PIN S S(2)
            PIN Cout XLXN_19
            PIN Cin XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_12 adder_1b
            PIN A A(3)
            PIN B B(3)
            PIN S S(3)
            PIN Cout Cout
            PIN Cin XLXN_19
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_9 2080 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 1792 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 1504 1136 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1216 1136 R0
        END INSTANCE
        BEGIN BRANCH XLXN_19
            WIRE 1472 992 1504 992
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1760 992 1792 992
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 2048 992 2080 992
        END BRANCH
        BEGIN BRANCH A(3:0)
            WIRE 1104 624 1264 624
            WIRE 1264 624 1376 624
            WIRE 1376 624 1664 624
            WIRE 1664 624 1952 624
            WIRE 1952 624 2240 624
        END BRANCH
        BEGIN BRANCH B(3:0)
            WIRE 1104 704 1264 704
            WIRE 1264 704 1296 704
            WIRE 1296 704 1312 704
            WIRE 1312 704 1600 704
            WIRE 1600 704 1888 704
            WIRE 1888 704 2176 704
            WIRE 2176 704 2320 704
        END BRANCH
        IOMARKER 1104 624 A(3:0) R180 28
        IOMARKER 1104 704 B(3:0) R180 28
        BEGIN BRANCH S(3:0)
            WIRE 1040 1280 1344 1280
            WIRE 1344 1280 1632 1280
            WIRE 1632 1280 1920 1280
            WIRE 1920 1280 2208 1280
            WIRE 2208 1280 2240 1280
            WIRE 2240 1280 2400 1280
        END BRANCH
        IOMARKER 2400 1280 S(3:0) R0 28
        BEGIN BRANCH Cout
            WIRE 944 992 1216 992
            WIRE 944 992 944 1104
            WIRE 944 1104 1104 1104
        END BRANCH
        IOMARKER 1104 1104 Cout R0 28
        BEGIN BRANCH Cin
            WIRE 2336 992 2608 992
            WIRE 2448 928 2608 928
            WIRE 2608 928 2608 992
        END BRANCH
        IOMARKER 2448 928 Cin R180 28
        BUSTAP 1344 1280 1344 1184
        BEGIN BRANCH S(3)
            WIRE 1344 1136 1344 1152
            WIRE 1344 1152 1344 1184
            BEGIN DISPLAY 1344 1160 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1632 1280 1632 1184
        BEGIN BRANCH S(2)
            WIRE 1632 1136 1632 1152
            WIRE 1632 1152 1632 1184
            BEGIN DISPLAY 1632 1160 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 1280 1920 1184
        BEGIN BRANCH S(1)
            WIRE 1920 1136 1920 1152
            WIRE 1920 1152 1920 1184
            BEGIN DISPLAY 1920 1160 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2208 1280 2208 1184
        BEGIN BRANCH S(0)
            WIRE 2208 1136 2208 1152
            WIRE 2208 1152 2208 1184
            BEGIN DISPLAY 2208 1160 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1376 624 1376 720
        BEGIN BRANCH A(3)
            WIRE 1376 720 1376 800
            WIRE 1376 800 1376 880
            BEGIN DISPLAY 1376 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1664 624 1664 720
        BEGIN BRANCH A(2)
            WIRE 1664 720 1664 800
            WIRE 1664 800 1664 880
            BEGIN DISPLAY 1664 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1952 624 1952 720
        BEGIN BRANCH A(1)
            WIRE 1952 720 1952 800
            WIRE 1952 800 1952 880
            BEGIN DISPLAY 1952 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2240 624 2240 720
        BEGIN BRANCH A(0)
            WIRE 2240 720 2240 800
            WIRE 2240 800 2240 880
            BEGIN DISPLAY 2240 800 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1312 704 1312 800
        BEGIN BRANCH B(3)
            WIRE 1312 800 1312 832
            WIRE 1312 832 1312 880
            BEGIN DISPLAY 1312 840 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1600 704 1600 800
        BEGIN BRANCH B(2)
            WIRE 1600 800 1600 832
            WIRE 1600 832 1600 880
            BEGIN DISPLAY 1600 840 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1888 704 1888 800
        BEGIN BRANCH B(1)
            WIRE 1888 800 1888 832
            WIRE 1888 832 1888 880
            BEGIN DISPLAY 1888 840 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2176 704 2176 800
        BEGIN BRANCH B(0)
            WIRE 2176 800 2176 832
            WIRE 2176 832 2176 880
            BEGIN DISPLAY 2176 840 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
