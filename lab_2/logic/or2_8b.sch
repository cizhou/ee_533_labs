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
        SIGNAL S(7:0)
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
        SIGNAL S(0)
        SIGNAL S(6)
        SIGNAL S(5)
        SIGNAL S(4)
        SIGNAL S(3)
        SIGNAL S(2)
        SIGNAL S(1)
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Output S(7:0)
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 or2
            PIN I0 A(0)
            PIN I1 B(0)
            PIN O S(0)
        END BLOCK
        BEGIN BLOCK XLXI_2 or2
            PIN I0 A(1)
            PIN I1 B(1)
            PIN O S(1)
        END BLOCK
        BEGIN BLOCK XLXI_3 or2
            PIN I0 A(2)
            PIN I1 B(2)
            PIN O S(2)
        END BLOCK
        BEGIN BLOCK XLXI_4 or2
            PIN I0 A(3)
            PIN I1 B(3)
            PIN O S(3)
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 A(4)
            PIN I1 B(4)
            PIN O S(4)
        END BLOCK
        BEGIN BLOCK XLXI_6 or2
            PIN I0 A(5)
            PIN I1 B(5)
            PIN O S(5)
        END BLOCK
        BEGIN BLOCK XLXI_7 or2
            PIN I0 A(6)
            PIN I1 B(6)
            PIN O S(6)
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 A(7)
            PIN I1 B(7)
            PIN O S(0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH A(7:0)
            WIRE 640 640 1024 640
            WIRE 1024 640 1152 640
            WIRE 1152 640 1280 640
            WIRE 1280 640 1408 640
            WIRE 1408 640 1536 640
            WIRE 1536 640 1664 640
            WIRE 1664 640 1792 640
            WIRE 1792 640 1920 640
            WIRE 1920 640 2512 640
        END BRANCH
        IOMARKER 640 640 A(7:0) R180 28
        IOMARKER 640 704 B(7:0) R180 28
        BEGIN BRANCH B(7:0)
            WIRE 640 704 1088 704
            WIRE 1088 704 1216 704
            WIRE 1216 704 1344 704
            WIRE 1344 704 1472 704
            WIRE 1472 704 1600 704
            WIRE 1600 704 1728 704
            WIRE 1728 704 1856 704
            WIRE 1856 704 1984 704
            WIRE 1984 704 2528 704
        END BRANCH
        INSTANCE XLXI_1 1856 816 R90
        INSTANCE XLXI_2 1728 816 R90
        INSTANCE XLXI_3 1600 816 R90
        INSTANCE XLXI_4 1472 816 R90
        INSTANCE XLXI_5 1344 816 R90
        INSTANCE XLXI_6 1216 816 R90
        INSTANCE XLXI_7 1088 816 R90
        INSTANCE XLXI_8 960 816 R90
        BEGIN BRANCH S(7:0)
            WIRE 624 1264 1056 1264
            WIRE 1056 1264 1184 1264
            WIRE 1184 1264 1312 1264
            WIRE 1312 1264 1440 1264
            WIRE 1440 1264 1568 1264
            WIRE 1568 1264 1696 1264
            WIRE 1696 1264 1824 1264
            WIRE 1824 1264 1952 1264
            WIRE 1952 1264 1968 1264
            WIRE 1968 1264 2272 1264
        END BRANCH
        IOMARKER 2272 1264 S(7:0) R0 28
        BUSTAP 1024 640 1024 736
        BEGIN BRANCH A(7)
            WIRE 1024 736 1024 768
            WIRE 1024 768 1024 816
            BEGIN DISPLAY 1024 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1152 640 1152 736
        BEGIN BRANCH A(6)
            WIRE 1152 736 1152 768
            WIRE 1152 768 1152 816
            BEGIN DISPLAY 1152 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1280 640 1280 736
        BEGIN BRANCH A(5)
            WIRE 1280 736 1280 768
            WIRE 1280 768 1280 816
            BEGIN DISPLAY 1280 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1408 640 1408 736
        BEGIN BRANCH A(4)
            WIRE 1408 736 1408 768
            WIRE 1408 768 1408 816
            BEGIN DISPLAY 1408 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1536 640 1536 736
        BEGIN BRANCH A(3)
            WIRE 1536 736 1536 768
            WIRE 1536 768 1536 816
            BEGIN DISPLAY 1536 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1664 640 1664 736
        BEGIN BRANCH A(2)
            WIRE 1664 736 1664 768
            WIRE 1664 768 1664 816
            BEGIN DISPLAY 1664 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1792 640 1792 736
        BEGIN BRANCH A(1)
            WIRE 1792 736 1792 768
            WIRE 1792 768 1792 816
            BEGIN DISPLAY 1792 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1920 640 1920 736
        BEGIN BRANCH A(0)
            WIRE 1920 736 1920 768
            WIRE 1920 768 1920 816
            BEGIN DISPLAY 1920 776 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1088 704 1088 800
        BEGIN BRANCH B(7)
            WIRE 1088 800 1088 800
            WIRE 1088 800 1088 816
            BEGIN DISPLAY 1088 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1216 704 1216 800
        BEGIN BRANCH B(6)
            WIRE 1216 800 1216 800
            WIRE 1216 800 1216 816
            BEGIN DISPLAY 1216 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1344 704 1344 800
        BEGIN BRANCH B(5)
            WIRE 1344 800 1344 800
            WIRE 1344 800 1344 816
            BEGIN DISPLAY 1344 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1472 704 1472 800
        BEGIN BRANCH B(4)
            WIRE 1472 800 1472 800
            WIRE 1472 800 1472 816
            BEGIN DISPLAY 1472 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1600 704 1600 800
        BEGIN BRANCH B(3)
            WIRE 1600 800 1600 800
            WIRE 1600 800 1600 816
            BEGIN DISPLAY 1600 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1728 704 1728 800
        BEGIN BRANCH B(2)
            WIRE 1728 800 1728 800
            WIRE 1728 800 1728 816
            BEGIN DISPLAY 1728 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1856 704 1856 800
        BEGIN BRANCH B(1)
            WIRE 1856 800 1856 800
            WIRE 1856 800 1856 816
            BEGIN DISPLAY 1856 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1984 704 1984 800
        BEGIN BRANCH B(0)
            WIRE 1984 800 1984 800
            WIRE 1984 800 1984 816
            BEGIN DISPLAY 1984 808 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1056 1264 1056 1168
        BEGIN BRANCH S(0)
            WIRE 1056 1072 1056 1120
            WIRE 1056 1120 1056 1168
            BEGIN DISPLAY 1056 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1184 1264 1184 1168
        BEGIN BRANCH S(6)
            WIRE 1184 1072 1184 1120
            WIRE 1184 1120 1184 1168
            BEGIN DISPLAY 1184 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1312 1264 1312 1168
        BEGIN BRANCH S(5)
            WIRE 1312 1072 1312 1120
            WIRE 1312 1120 1312 1168
            BEGIN DISPLAY 1312 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1440 1264 1440 1168
        BEGIN BRANCH S(4)
            WIRE 1440 1072 1440 1120
            WIRE 1440 1120 1440 1168
            BEGIN DISPLAY 1440 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1568 1264 1568 1168
        BEGIN BRANCH S(3)
            WIRE 1568 1072 1568 1120
            WIRE 1568 1120 1568 1168
            BEGIN DISPLAY 1568 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1696 1264 1696 1168
        BEGIN BRANCH S(2)
            WIRE 1696 1072 1696 1120
            WIRE 1696 1120 1696 1168
            BEGIN DISPLAY 1696 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 1264 1824 1168
        BEGIN BRANCH S(1)
            WIRE 1824 1072 1824 1120
            WIRE 1824 1120 1824 1168
            BEGIN DISPLAY 1824 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1952 1264 1952 1168
        BEGIN BRANCH S(0)
            WIRE 1952 1072 1952 1120
            WIRE 1952 1120 1952 1168
            BEGIN DISPLAY 1952 1120 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
