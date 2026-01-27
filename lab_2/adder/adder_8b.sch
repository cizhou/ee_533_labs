VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Cin
        SIGNAL XLXN_9
        SIGNAL S(7:0)
        SIGNAL Cout
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL B(7:4)
        SIGNAL B(3:0)
        SIGNAL A(7:4)
        SIGNAL A(3:0)
        SIGNAL S(7:4)
        SIGNAL S(3:0)
        PORT Input Cin
        PORT Output S(7:0)
        PORT Output Cout
        PORT Input A(7:0)
        PORT Input B(7:0)
        BEGIN BLOCKDEF adder_4b
            TIMESTAMP 2026 1 24 6 31 19
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder_4b
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN Cin Cin
            PIN Cout XLXN_9
            PIN S(3:0) S(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 adder_4b
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN Cin XLXN_9
            PIN Cout Cout
            PIN S(3:0) S(7:4)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1472 1200 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1472 1536 R0
        END INSTANCE
        BEGIN BRANCH Cin
            WIRE 1408 1168 1472 1168
        END BRANCH
        IOMARKER 1408 1168 Cin R180 28
        BEGIN BRANCH XLXN_9
            WIRE 1280 912 1872 912
            WIRE 1872 912 1872 1040
            WIRE 1280 912 1280 1504
            WIRE 1280 1504 1472 1504
            WIRE 1856 1040 1872 1040
        END BRANCH
        BEGIN BRANCH S(7:0)
            WIRE 2128 1104 2224 1104
            WIRE 2128 1104 2128 1440
            WIRE 2128 1440 2128 1488
        END BRANCH
        IOMARKER 2224 1104 S(7:0) R0 28
        BEGIN BRANCH Cout
            WIRE 1856 1376 1952 1376
        END BRANCH
        IOMARKER 1952 1376 Cout R0 28
        BEGIN BRANCH A(7:0)
            WIRE 720 1008 832 1008
            WIRE 832 1008 832 1040
            WIRE 832 1040 832 1376
            WIRE 832 1376 832 1520
        END BRANCH
        IOMARKER 720 1008 A(7:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 720 1104 864 1104
            WIRE 864 1104 880 1104
            WIRE 880 1104 880 1440
            WIRE 880 1440 880 1520
        END BRANCH
        BUSTAP 880 1440 976 1440
        BEGIN BRANCH B(7:4)
            WIRE 976 1440 1216 1440
            WIRE 1216 1440 1216 1440
            WIRE 1216 1440 1472 1440
            BEGIN DISPLAY 1224 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 880 1104 976 1104
        BEGIN BRANCH B(3:0)
            WIRE 976 1104 1216 1104
            WIRE 1216 1104 1216 1104
            WIRE 1216 1104 1472 1104
            BEGIN DISPLAY 1224 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 1376 928 1376
        BEGIN BRANCH A(7:4)
            WIRE 928 1376 1200 1376
            WIRE 1200 1376 1472 1376
            BEGIN DISPLAY 1200 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 832 1040 928 1040
        BEGIN BRANCH A(3:0)
            WIRE 928 1040 1200 1040
            WIRE 1200 1040 1472 1040
            BEGIN DISPLAY 1200 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 720 1104 B(7:0) R180 28
        BUSTAP 2128 1440 2032 1440
        BEGIN BRANCH S(7:4)
            WIRE 1856 1440 1936 1440
            WIRE 1936 1440 1936 1440
            WIRE 1936 1440 2032 1440
            BEGIN DISPLAY 1944 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2128 1104 2032 1104
        BEGIN BRANCH S(3:0)
            WIRE 1856 1104 1936 1104
            WIRE 1936 1104 1936 1104
            WIRE 1936 1104 2032 1104
            BEGIN DISPLAY 1944 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
