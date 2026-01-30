VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_5
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL XLXN_12
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL XLXN_14
        SIGNAL XLXN_18
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL amask(2)
        SIGNAL XLXN_25
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL amask(1)
        SIGNAL amask(0)
        SIGNAL amask(4)
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL amask(3)
        SIGNAL XLXN_38
        SIGNAL match
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        PORT Output match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_20
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_5 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_1
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_5
            PIN O XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_7 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_19
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_20
            PIN O XLXN_38
        END BLOCK
        BEGIN BLOCK XLXI_9 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_10 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_18
        END BLOCK
        BEGIN BLOCK XLXI_11 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_12
            PIN O XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_14
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_18
            PIN O XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_22 and7
            PIN I0 XLXN_38
            PIN I1 XLXN_33
            PIN I2 XLXN_32
            PIN I3 XLXN_28
            PIN I4 XLXN_27
            PIN I5 XLXN_26
            PIN I6 XLXN_25
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 416 992 R0
        INSTANCE XLXI_2 416 2384 R0
        INSTANCE XLXI_3 416 1920 R0
        INSTANCE XLXI_4 416 1456 R0
        INSTANCE XLXI_5 896 896 R0
        INSTANCE XLXI_6 896 1360 R0
        INSTANCE XLXI_7 896 1824 R0
        INSTANCE XLXI_8 896 2288 R0
        INSTANCE XLXI_9 1312 992 R0
        INSTANCE XLXI_10 1312 1920 R0
        INSTANCE XLXI_11 1312 1456 R0
        INSTANCE XLXI_12 1776 896 R0
        INSTANCE XLXI_13 1776 1360 R0
        INSTANCE XLXI_14 1760 1824 R0
        INSTANCE XLXI_22 2256 1664 R0
        BEGIN BRANCH XLXN_1
            WIRE 800 768 896 768
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 800 1232 896 1232
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 848 832 896 832
            BEGIN DISPLAY 848 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 848 1296 896 1296
            BEGIN DISPLAY 848 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1248 672 1312 672
            BEGIN DISPLAY 1248 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1248 864 1312 864
            BEGIN DISPLAY 1248 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1248 1136 1312 1136
            BEGIN DISPLAY 1248 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1248 1328 1312 1328
            BEGIN DISPLAY 1248 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1696 768 1744 768
            WIRE 1744 768 1776 768
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 352 672 416 672
            BEGIN DISPLAY 352 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 352 864 416 864
            BEGIN DISPLAY 352 864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 352 1136 416 1136
            BEGIN DISPLAY 352 1136 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 352 1328 416 1328
            BEGIN DISPLAY 352 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 1696 1232 1776 1232
        END BRANCH
        BEGIN BRANCH XLXN_18
            WIRE 1696 1696 1760 1696
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 800 1696 896 1696
        END BRANCH
        BEGIN BRANCH XLXN_20
            WIRE 800 2160 896 2160
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1248 1600 1312 1600
            BEGIN DISPLAY 1248 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1248 1792 1312 1792
            BEGIN DISPLAY 1248 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 352 1600 416 1600
            BEGIN DISPLAY 352 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 352 1792 416 1792
            BEGIN DISPLAY 352 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 352 2064 416 2064
            BEGIN DISPLAY 352 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 352 2256 416 2256
            BEGIN DISPLAY 352 2256 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1712 832 1776 832
            BEGIN DISPLAY 1712 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 1152 800 1232 800
            WIRE 1232 544 1232 800
            WIRE 1232 544 2256 544
            WIRE 2256 544 2256 1216
        END BRANCH
        BEGIN BRANCH XLXN_26
            WIRE 2032 800 2144 800
            WIRE 2144 800 2144 1280
            WIRE 2144 1280 2256 1280
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1152 1264 1200 1264
            WIRE 1200 1008 1200 1264
            WIRE 1200 1008 1760 1008
            WIRE 1760 1008 1760 1344
            WIRE 1760 1344 2256 1344
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 2032 1264 2128 1264
            WIRE 2128 1264 2128 1408
            WIRE 2128 1408 2256 1408
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 1712 1296 1776 1296
            BEGIN DISPLAY 1712 1296 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1712 1760 1760 1760
            BEGIN DISPLAY 1712 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 832 1760 896 1760
            BEGIN DISPLAY 832 1760 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1152 1728 1232 1728
            WIRE 1232 1472 1232 1728
            WIRE 1232 1472 2256 1472
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 2016 1728 2128 1728
            WIRE 2128 1536 2128 1728
            WIRE 2128 1536 2256 1536
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 832 2224 896 2224
            BEGIN DISPLAY 832 2224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_38
            WIRE 1152 2192 2256 2192
            WIRE 2256 1600 2256 2192
        END BRANCH
        BEGIN BRANCH match
            WIRE 2512 1408 2592 1408
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 2528 576 2768 576
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 2528 672 2768 672
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 3056 576 3312 576
        END BRANCH
        IOMARKER 2592 1408 match R0 28
        IOMARKER 2528 576 a(55:0) R180 28
        IOMARKER 2528 672 b(55:0) R180 28
        IOMARKER 3056 576 amask(6:0) R180 28
    END SHEET
END SCHEMATIC
