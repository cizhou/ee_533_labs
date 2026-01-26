VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_15
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL B(15:0)
        SIGNAL A(15:0)
        SIGNAL A(3:0)
        SIGNAL A(7:4)
        SIGNAL A(11:8)
        SIGNAL A(15:12)
        SIGNAL B(3:0)
        SIGNAL B(7:4)
        SIGNAL B(11:8)
        SIGNAL B(15:12)
        SIGNAL Cout
        SIGNAL S(15:0)
        SIGNAL S(3:0)
        SIGNAL S(7:4)
        SIGNAL S(11:8)
        SIGNAL S(15:12)
        SIGNAL Cin
        PORT Input B(15:0)
        PORT Input A(15:0)
        PORT Output Cout
        PORT Output S(15:0)
        PORT Input Cin
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
        BEGIN BLOCK XLXI_5 adder_4b
            PIN A(3:0) A(3:0)
            PIN B(3:0) B(3:0)
            PIN Cin Cin
            PIN Cout XLXN_15
            PIN S(3:0) S(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 adder_4b
            PIN A(3:0) A(7:4)
            PIN B(3:0) B(7:4)
            PIN Cin XLXN_15
            PIN Cout XLXN_16
            PIN S(3:0) S(7:4)
        END BLOCK
        BEGIN BLOCK XLXI_7 adder_4b
            PIN A(3:0) A(11:8)
            PIN B(3:0) B(11:8)
            PIN Cin XLXN_16
            PIN Cout XLXN_17
            PIN S(3:0) S(11:8)
        END BLOCK
        BEGIN BLOCK XLXI_8 adder_4b
            PIN A(3:0) A(15:12)
            PIN B(3:0) B(15:12)
            PIN Cin XLXN_17
            PIN Cout Cout
            PIN S(3:0) S(15:12)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_5 1296 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1296 1600 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1296 1840 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1296 2080 R0
        END INSTANCE
        BEGIN BRANCH XLXN_15
            WIRE 1216 1568 1296 1568
            WIRE 1216 1568 1216 1616
            WIRE 1216 1616 1760 1616
            WIRE 1680 1184 1760 1184
            WIRE 1760 1184 1760 1616
        END BRANCH
        BEGIN BRANCH XLXN_16
            WIRE 1232 1808 1296 1808
            WIRE 1232 1808 1232 1856
            WIRE 1232 1856 1744 1856
            WIRE 1680 1440 1744 1440
            WIRE 1744 1440 1744 1856
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1216 2048 1296 2048
            WIRE 1216 2048 1216 2160
            WIRE 1216 2160 1728 2160
            WIRE 1680 1680 1728 1680
            WIRE 1728 1680 1728 2160
        END BRANCH
        BEGIN BRANCH B(15:0)
            WIRE 656 1264 816 1264
            WIRE 816 1264 816 1504
            WIRE 816 1504 816 1744
            WIRE 816 1744 816 1984
            WIRE 816 1984 816 2000
            WIRE 816 1168 816 1248
            WIRE 816 1248 816 1264
        END BRANCH
        IOMARKER 656 1264 B(15:0) R180 28
        BEGIN BRANCH A(15:0)
            WIRE 656 1104 816 1104
            WIRE 816 1104 944 1104
            WIRE 944 1104 944 1184
            WIRE 944 1184 944 1440
            WIRE 944 1440 944 1680
            WIRE 944 1680 944 1920
            WIRE 944 1920 944 2016
        END BRANCH
        IOMARKER 656 1104 A(15:0) R180 28
        BUSTAP 944 1184 1040 1184
        BEGIN BRANCH A(3:0)
            WIRE 1040 1184 1168 1184
            WIRE 1168 1184 1296 1184
            BEGIN DISPLAY 1168 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1440 1040 1440
        BEGIN BRANCH A(7:4)
            WIRE 1040 1440 1168 1440
            WIRE 1168 1440 1296 1440
            BEGIN DISPLAY 1168 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1680 1040 1680
        BEGIN BRANCH A(11:8)
            WIRE 1040 1680 1168 1680
            WIRE 1168 1680 1296 1680
            BEGIN DISPLAY 1168 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 944 1920 1040 1920
        BEGIN BRANCH A(15:12)
            WIRE 1040 1920 1168 1920
            WIRE 1168 1920 1296 1920
            BEGIN DISPLAY 1168 1920 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 816 1248 912 1248
        BEGIN BRANCH B(3:0)
            WIRE 912 1248 1104 1248
            WIRE 1104 1248 1296 1248
            BEGIN DISPLAY 1104 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 816 1504 912 1504
        BEGIN BRANCH B(7:4)
            WIRE 912 1504 1104 1504
            WIRE 1104 1504 1296 1504
            BEGIN DISPLAY 1104 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 816 1744 912 1744
        BEGIN BRANCH B(11:8)
            WIRE 912 1744 1104 1744
            WIRE 1104 1744 1296 1744
            BEGIN DISPLAY 1104 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 816 1984 912 1984
        BEGIN BRANCH B(15:12)
            WIRE 912 1984 1104 1984
            WIRE 1104 1984 1296 1984
            BEGIN DISPLAY 1104 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 1680 1920 1696 1920
            WIRE 1696 1920 1840 1920
        END BRANCH
        BEGIN BRANCH S(15:0)
            WIRE 2176 1248 2336 1248
            WIRE 2176 1248 2176 1504
            WIRE 2176 1504 2176 1744
            WIRE 2176 1744 2176 1984
            WIRE 2176 1984 2176 2032
        END BRANCH
        IOMARKER 2336 1248 S(15:0) R0 28
        IOMARKER 1840 1920 Cout R0 28
        BUSTAP 2176 1248 2080 1248
        BEGIN BRANCH S(3:0)
            WIRE 1680 1248 1872 1248
            WIRE 1872 1248 1872 1248
            WIRE 1872 1248 2080 1248
            BEGIN DISPLAY 1880 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2176 1504 2080 1504
        BEGIN BRANCH S(7:4)
            WIRE 1680 1504 1872 1504
            WIRE 1872 1504 1872 1504
            WIRE 1872 1504 2080 1504
            BEGIN DISPLAY 1880 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2176 1744 2080 1744
        BEGIN BRANCH S(11:8)
            WIRE 1680 1744 1872 1744
            WIRE 1872 1744 1872 1744
            WIRE 1872 1744 2080 1744
            BEGIN DISPLAY 1880 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 2176 1984 2080 1984
        BEGIN BRANCH S(15:12)
            WIRE 1680 1984 1872 1984
            WIRE 1872 1984 1872 1984
            WIRE 1872 1984 2080 1984
            BEGIN DISPLAY 1880 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Cin
            WIRE 1136 1312 1200 1312
            WIRE 1200 1312 1296 1312
        END BRANCH
        IOMARKER 1136 1312 Cin R180 28
    END SHEET
END SCHEMATIC
