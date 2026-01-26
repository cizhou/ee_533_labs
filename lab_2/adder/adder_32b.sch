VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL S(31:0)
        SIGNAL Cin
        SIGNAL A(31:0)
        SIGNAL B(31:0)
        SIGNAL A(7:0)
        SIGNAL A(15:8)
        SIGNAL A(23:16)
        SIGNAL A(31:24)
        SIGNAL B(7:0)
        SIGNAL B(15:8)
        SIGNAL B(23:16)
        SIGNAL B(31:24)
        SIGNAL S(31:24)
        SIGNAL S(23:16)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_21
        SIGNAL Cout
        SIGNAL XLXN_25
        PORT Output S(31:0)
        PORT Input Cin
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output Cout
        BEGIN BLOCKDEF adder_8b
            TIMESTAMP 2026 1 24 8 21 49
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder_8b
            PIN A(7:0) A(31:24)
            PIN B(7:0) B(31:24)
            PIN Cin XLXN_21
            PIN S(7:0) S(31:24)
            PIN Cout Cout
        END BLOCK
        BEGIN BLOCK XLXI_2 adder_8b
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN Cin XLXN_20
            PIN S(7:0) S(23:16)
            PIN Cout XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_3 adder_8b
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cin XLXN_19
            PIN S(7:0) S(15:8)
            PIN Cout XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_4 adder_8b
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cin Cin
            PIN S(7:0) S(7:0)
            PIN Cout XLXN_19
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1344 864 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1664 864 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1968 864 R90
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2288 864 R90
        END INSTANCE
        IOMARKER 1808 1504 S(31:0) R90 28
        BEGIN BRANCH S(31:0)
            WIRE 1344 1376 1440 1376
            WIRE 1440 1376 1760 1376
            WIRE 1760 1376 1808 1376
            WIRE 1808 1376 1808 1504
            WIRE 1808 1376 2064 1376
            WIRE 2064 1376 2384 1376
            WIRE 2384 1376 2464 1376
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 2320 848 2320 864
        END BRANCH
        IOMARKER 2320 848 Cin R270 28
        BEGIN BRANCH A(31:0)
            WIRE 1088 496 1504 496
            WIRE 1504 496 1824 496
            WIRE 1824 496 2128 496
            WIRE 2128 496 2448 496
            WIRE 2448 496 2496 496
        END BRANCH
        IOMARKER 1088 496 A(31:0) R180 28
        BEGIN BRANCH B(31:0)
            WIRE 1088 656 1440 656
            WIRE 1440 656 1760 656
            WIRE 1760 656 2064 656
            WIRE 2064 656 2384 656
            WIRE 2384 656 2496 656
        END BRANCH
        IOMARKER 1088 656 B(31:0) R180 28
        BUSTAP 2448 496 2448 592
        BEGIN BRANCH A(7:0)
            WIRE 2448 592 2448 768
            WIRE 2448 768 2448 864
            BEGIN DISPLAY 2448 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2128 496 2128 592
        BEGIN BRANCH A(15:8)
            WIRE 2128 592 2128 768
            WIRE 2128 768 2128 864
            BEGIN DISPLAY 2128 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 496 1824 592
        BEGIN BRANCH A(23:16)
            WIRE 1824 592 1824 768
            WIRE 1824 768 1824 864
            BEGIN DISPLAY 1824 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1504 496 1504 592
        BEGIN BRANCH A(31:24)
            WIRE 1504 592 1504 768
            WIRE 1504 768 1504 864
            BEGIN DISPLAY 1504 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2384 656 2384 752
        BEGIN BRANCH B(7:0)
            WIRE 2384 752 2384 768
            WIRE 2384 768 2384 864
            BEGIN DISPLAY 2384 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2064 656 2064 752
        BEGIN BRANCH B(15:8)
            WIRE 2064 752 2064 768
            WIRE 2064 768 2064 864
            BEGIN DISPLAY 2064 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 656 1760 752
        BEGIN BRANCH B(23:16)
            WIRE 1760 752 1760 768
            WIRE 1760 768 1760 864
            BEGIN DISPLAY 1760 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 656 1440 752
        BEGIN BRANCH B(31:24)
            WIRE 1440 752 1440 768
            WIRE 1440 768 1440 864
            BEGIN DISPLAY 1440 768 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1376 1440 1280
        BEGIN BRANCH S(31:24)
            WIRE 1440 1248 1440 1264
            WIRE 1440 1264 1440 1280
            BEGIN DISPLAY 1440 1264 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 1376 1760 1280
        BEGIN BRANCH S(23:16)
            WIRE 1760 1248 1760 1264
            WIRE 1760 1264 1760 1280
            BEGIN DISPLAY 1760 1264 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2064 1376 2064 1280
        BEGIN BRANCH S(15:8)
            WIRE 2064 1248 2064 1264
            WIRE 2064 1264 2064 1280
            BEGIN DISPLAY 2064 1264 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2384 1376 2384 1280
        BEGIN BRANCH S(7:0)
            WIRE 2384 1248 2384 1264
            WIRE 2384 1264 2384 1280
            BEGIN DISPLAY 2384 1264 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 2000 608 2000 864
            WIRE 2000 608 2560 608
            WIRE 2560 608 2560 1312
            WIRE 2448 1248 2448 1312
            WIRE 2448 1312 2560 1312
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 1696 784 1696 864
            WIRE 1696 784 2224 784
            WIRE 2224 784 2224 1312
            WIRE 2128 1248 2128 1312
            WIRE 2128 1312 2224 1312
        END BRANCH
        BEGIN BRANCH XLXN_21
            WIRE 1376 800 1376 864
            WIRE 1376 800 1936 800
            WIRE 1936 800 1936 1312
            WIRE 1824 1248 1824 1312
            WIRE 1824 1312 1936 1312
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1504 1248 1504 1264
            WIRE 1504 1264 1504 1488
        END BRANCH
        IOMARKER 1504 1488 Cout R90 28
    END SHEET
END SCHEMATIC
