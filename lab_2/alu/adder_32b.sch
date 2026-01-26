VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL Cin
        SIGNAL S(31:0)
        SIGNAL Cout
        SIGNAL S(31:24)
        SIGNAL S(23:16)
        SIGNAL S(15:8)
        SIGNAL S(7:0)
        SIGNAL A(7:0)
        SIGNAL B(31:0)
        SIGNAL A(15:8)
        SIGNAL A(23:16)
        SIGNAL A(24:31)
        SIGNAL B(24:31)
        SIGNAL B(23:16)
        SIGNAL B(15:8)
        SIGNAL B(7:0)
        PORT Input Cin
        PORT Output S(31:0)
        PORT Output Cout
        PORT Output A(7:0)
        PORT Output B(31:0)
        BEGIN BLOCKDEF adder_8b
            TIMESTAMP 2026 1 24 18 59 6
            RECTANGLE N 64 -192 192 -64 
            LINE N 160 -192 160 -256 
            RECTANGLE N 148 -256 172 -192 
            LINE N 96 -192 96 -256 
            RECTANGLE N 84 -256 108 -192 
            LINE N 192 -160 256 -160 
            LINE N 64 -160 0 -160 
            LINE N 96 -64 96 0 
            RECTANGLE N 84 -64 108 0 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 adder_8b
            PIN Cin Cin
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN Cout XLXN_1
            PIN S(7:0) S(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 adder_8b
            PIN Cin XLXN_1
            PIN A(7:0) A(15:8)
            PIN B(7:0) B(15:8)
            PIN Cout XLXN_2
            PIN S(7:0) S(15:8)
        END BLOCK
        BEGIN BLOCK XLXI_3 adder_8b
            PIN Cin XLXN_2
            PIN A(7:0) A(23:16)
            PIN B(7:0) B(23:16)
            PIN Cout XLXN_3
            PIN S(7:0) S(23:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 adder_8b
            PIN Cin XLXN_3
            PIN A(7:0) A(24:31)
            PIN B(7:0) B(24:31)
            PIN Cout Cout
            PIN S(7:0) S(31:24)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 1760 1360
        BEGIN INSTANCE XLXI_1 1104 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 832 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 560 880 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 288 880 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1088 720 1104 720
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 816 720 832 720
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 544 720 560 720
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1360 720 1536 720
            WIRE 1536 640 1536 656
            WIRE 1536 656 1536 720
        END BRANCH
        IOMARKER 1536 640 Cin R270 28
        BEGIN BRANCH S(31:0)
            WIRE 192 992 384 992
            WIRE 384 992 656 992
            WIRE 656 992 928 992
            WIRE 928 992 1200 992
            WIRE 1200 992 1504 992
        END BRANCH
        IOMARKER 1504 992 S(31:0) R0 28
        IOMARKER 176 480 B(31:0) R180 28
        BEGIN BRANCH Cout
            WIRE 288 720 288 784
        END BRANCH
        IOMARKER 288 784 Cout R90 28
        BUSTAP 384 992 384 896
        BEGIN BRANCH S(31:24)
            WIRE 384 880 384 880
            WIRE 384 880 384 896
            BEGIN DISPLAY 384 888 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 656 992 656 896
        BEGIN BRANCH S(23:16)
            WIRE 656 880 656 880
            WIRE 656 880 656 896
            BEGIN DISPLAY 656 888 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 928 992 928 896
        BEGIN BRANCH S(15:8)
            WIRE 928 880 928 880
            WIRE 928 880 928 896
            BEGIN DISPLAY 928 888 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1200 992 1200 896
        BEGIN BRANCH S(7:0)
            WIRE 1200 880 1200 880
            WIRE 1200 880 1200 896
            BEGIN DISPLAY 1200 888 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 176 272 A(7:0) R180 28
        BEGIN BRANCH A(7:0)
            WIRE 176 272 272 272
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 176 480 272 480
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1264 480 1264 544
            WIRE 1264 544 1264 576
            WIRE 1264 576 1264 624
            BEGIN DISPLAY 1264 576 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(15:8)
            WIRE 992 480 992 560
            WIRE 992 560 992 592
            WIRE 992 592 992 624
            BEGIN DISPLAY 992 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(23:16)
            WIRE 720 480 720 560
            WIRE 720 560 720 624
            BEGIN DISPLAY 720 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH A(24:31)
            WIRE 448 480 448 560
            WIRE 448 560 448 624
            BEGIN DISPLAY 448 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(24:31)
            WIRE 384 480 384 560
            WIRE 384 560 384 624
            BEGIN DISPLAY 384 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(23:16)
            WIRE 656 480 656 560
            WIRE 656 560 656 624
            BEGIN DISPLAY 656 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(15:8)
            WIRE 928 480 928 560
            WIRE 928 560 928 624
            BEGIN DISPLAY 928 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 1200 480 1200 576
            WIRE 1200 576 1200 624
            BEGIN DISPLAY 1200 576 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
