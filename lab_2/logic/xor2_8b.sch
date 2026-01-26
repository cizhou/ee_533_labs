VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL C(7:0)
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL XLXN_10
        SIGNAL C(7)
        SIGNAL C(6)
        SIGNAL C(5)
        SIGNAL C(4)
        SIGNAL C(3)
        SIGNAL C(2)
        SIGNAL C(1)
        SIGNAL C(0)
        SIGNAL A(7)
        SIGNAL A(6)
        SIGNAL A(5)
        SIGNAL A(4)
        SIGNAL A(3)
        SIGNAL A(2)
        SIGNAL A(1)
        SIGNAL A(0)
        SIGNAL B(7)
        SIGNAL B(6)
        SIGNAL B(5)
        SIGNAL B(4)
        SIGNAL B(3)
        SIGNAL B(2)
        SIGNAL B(1)
        SIGNAL B(0)
        PORT Output C(7:0)
        PORT Input A(7:0)
        PORT Input B(7:0)
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
        BEGIN BLOCK XLXI_1 xor2
            PIN I0 A(0)
            PIN I1 B(0)
            PIN O C(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 xor2
            PIN I0 A(1)
            PIN I1 B(1)
            PIN O C(1)
        END BLOCK
        BEGIN BLOCK XLXI_7 xor2
            PIN I0 A(2)
            PIN I1 B(2)
            PIN O C(2)
        END BLOCK
        BEGIN BLOCK XLXI_8 xor2
            PIN I0 A(3)
            PIN I1 B(3)
            PIN O C(3)
        END BLOCK
        BEGIN BLOCK XLXI_9 xor2
            PIN I0 A(4)
            PIN I1 B(4)
            PIN O C(4)
        END BLOCK
        BEGIN BLOCK XLXI_10 xor2
            PIN I0 A(5)
            PIN I1 B(5)
            PIN O C(5)
        END BLOCK
        BEGIN BLOCK XLXI_11 xor2
            PIN I0 A(6)
            PIN I1 B(6)
            PIN O C(6)
        END BLOCK
        BEGIN BLOCK XLXI_12 xor2
            PIN I0 A(7)
            PIN I1 B(7)
            PIN O C(7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 2720 1760
        INSTANCE XLXI_1 1664 784 R90
        INSTANCE XLXI_2 1520 784 R90
        INSTANCE XLXI_7 1376 784 R90
        INSTANCE XLXI_8 1232 784 R90
        INSTANCE XLXI_9 1088 784 R90
        INSTANCE XLXI_10 944 784 R90
        INSTANCE XLXI_11 800 784 R90
        INSTANCE XLXI_12 656 784 R90
        BEGIN BRANCH C(7:0)
            WIRE 720 1200 752 1200
            WIRE 752 1200 896 1200
            WIRE 896 1200 1040 1200
            WIRE 1040 1200 1184 1200
            WIRE 1184 1200 1328 1200
            WIRE 1328 1200 1472 1200
            WIRE 1472 1200 1616 1200
            WIRE 1616 1200 1760 1200
            WIRE 1760 1200 1840 1200
            WIRE 1840 1200 2000 1200
        END BRANCH
        IOMARKER 2000 1200 C(7:0) R0 28
        BEGIN BRANCH A(7:0)
            WIRE 384 496 544 496
            WIRE 544 496 720 496
            WIRE 720 496 864 496
            WIRE 864 496 1008 496
            WIRE 1008 496 1136 496
            WIRE 1136 496 1152 496
            WIRE 1152 496 1296 496
            WIRE 1296 496 1440 496
            WIRE 1440 496 1584 496
            WIRE 1584 496 1728 496
            WIRE 1728 496 1840 496
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 384 576 544 576
            WIRE 544 576 784 576
            WIRE 784 576 928 576
            WIRE 928 576 1072 576
            WIRE 1072 576 1216 576
            WIRE 1216 576 1360 576
            WIRE 1360 576 1504 576
            WIRE 1504 576 1648 576
            WIRE 1648 576 1792 576
            WIRE 1792 576 1840 576
        END BRANCH
        IOMARKER 384 496 A(7:0) R180 28
        IOMARKER 384 576 B(7:0) R180 28
        BUSTAP 752 1200 752 1104
        BEGIN BRANCH C(7)
            WIRE 752 1040 752 1072
            WIRE 752 1072 752 1104
            BEGIN DISPLAY 752 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 896 1200 896 1104
        BEGIN BRANCH C(6)
            WIRE 896 1040 896 1072
            WIRE 896 1072 896 1104
            BEGIN DISPLAY 896 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1040 1200 1040 1104
        BEGIN BRANCH C(5)
            WIRE 1040 1040 1040 1072
            WIRE 1040 1072 1040 1104
            BEGIN DISPLAY 1040 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1184 1200 1184 1104
        BEGIN BRANCH C(4)
            WIRE 1184 1040 1184 1072
            WIRE 1184 1072 1184 1104
            BEGIN DISPLAY 1184 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1328 1200 1328 1104
        BEGIN BRANCH C(3)
            WIRE 1328 1040 1328 1072
            WIRE 1328 1072 1328 1104
            BEGIN DISPLAY 1328 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1472 1200 1472 1104
        BEGIN BRANCH C(2)
            WIRE 1472 1040 1472 1072
            WIRE 1472 1072 1472 1104
            BEGIN DISPLAY 1472 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1616 1200 1616 1104
        BEGIN BRANCH C(1)
            WIRE 1616 1040 1616 1072
            WIRE 1616 1072 1616 1104
            BEGIN DISPLAY 1616 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1760 1200 1760 1104
        BEGIN BRANCH C(0)
            WIRE 1760 1040 1760 1072
            WIRE 1760 1072 1760 1104
            BEGIN DISPLAY 1760 1072 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 720 496 720 592
        BEGIN BRANCH A(7)
            WIRE 720 592 720 688
            WIRE 720 688 720 784
            BEGIN DISPLAY 720 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 864 496 864 592
        BEGIN BRANCH A(6)
            WIRE 864 592 864 688
            WIRE 864 688 864 784
            BEGIN DISPLAY 864 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1008 496 1008 592
        BEGIN BRANCH A(5)
            WIRE 1008 592 1008 688
            WIRE 1008 688 1008 784
            BEGIN DISPLAY 1008 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1152 496 1152 592
        BEGIN BRANCH A(4)
            WIRE 1152 592 1152 688
            WIRE 1152 688 1152 784
            BEGIN DISPLAY 1152 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1296 496 1296 592
        BEGIN BRANCH A(3)
            WIRE 1296 592 1296 688
            WIRE 1296 688 1296 784
            BEGIN DISPLAY 1296 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 496 1440 592
        BEGIN BRANCH A(2)
            WIRE 1440 592 1440 688
            WIRE 1440 688 1440 784
            BEGIN DISPLAY 1440 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1584 496 1584 592
        BEGIN BRANCH A(1)
            WIRE 1584 592 1584 688
            WIRE 1584 688 1584 784
            BEGIN DISPLAY 1584 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1728 496 1728 592
        BEGIN BRANCH A(0)
            WIRE 1728 592 1728 688
            WIRE 1728 688 1728 784
            BEGIN DISPLAY 1728 688 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 784 576 784 672
        BEGIN BRANCH B(7)
            WIRE 784 672 784 720
            WIRE 784 720 784 784
            BEGIN DISPLAY 784 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 928 576 928 672
        BEGIN BRANCH B(6)
            WIRE 928 672 928 720
            WIRE 928 720 928 784
            BEGIN DISPLAY 928 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1072 576 1072 672
        BEGIN BRANCH B(5)
            WIRE 1072 672 1072 720
            WIRE 1072 720 1072 784
            BEGIN DISPLAY 1072 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1216 576 1216 672
        BEGIN BRANCH B(4)
            WIRE 1216 672 1216 720
            WIRE 1216 720 1216 784
            BEGIN DISPLAY 1216 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1360 576 1360 672
        BEGIN BRANCH B(3)
            WIRE 1360 672 1360 720
            WIRE 1360 720 1360 784
            BEGIN DISPLAY 1360 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1504 576 1504 672
        BEGIN BRANCH B(2)
            WIRE 1504 672 1504 720
            WIRE 1504 720 1504 784
            BEGIN DISPLAY 1504 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1648 576 1648 672
        BEGIN BRANCH B(1)
            WIRE 1648 672 1648 720
            WIRE 1648 720 1648 784
            BEGIN DISPLAY 1648 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1792 576 1792 672
        BEGIN BRANCH B(0)
            WIRE 1792 672 1792 720
            WIRE 1792 720 1792 784
            BEGIN DISPLAY 1792 728 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
