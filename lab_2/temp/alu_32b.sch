VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_165(31:0)
        SIGNAL M(2:0)
        SIGNAL A(31:0)
        SIGNAL XLXN_150
        SIGNAL M(1)
        SIGNAL XLXN_151(31:0)
        SIGNAL M(0)
        SIGNAL B(31:0)
        SIGNAL XLXN_159(31:0)
        SIGNAL XLXN_160(31:0)
        SIGNAL XLXN_162(31:0)
        SIGNAL XLXN_167(31:0)
        SIGNAL XLXN_168(31:0)
        SIGNAL XLXN_169(31:0)
        SIGNAL XLXN_170(31:0)
        SIGNAL XLXN_200(31:0)
        SIGNAL XLXN_201
        SIGNAL XLXN_174(31:0)
        SIGNAL XLXN_175(31:0)
        SIGNAL XLXN_210(31:0)
        SIGNAL XLXN_217(31:0)
        SIGNAL XLXN_218(31:0)
        SIGNAL XLXN_219(31:0)
        SIGNAL XLXN_220(31:0)
        SIGNAL XLXN_222(31:0)
        SIGNAL XLXN_224(31:0)
        SIGNAL XLXN_227(31:0)
        SIGNAL XLXN_228(31:0)
        SIGNAL XLXN_229(31:0)
        SIGNAL XLXN_230(31:0)
        SIGNAL XLXN_231(31:0)
        SIGNAL XLXN_232(31:0)
        SIGNAL XLXN_233(31:0)
        SIGNAL XLXN_236(31:0)
        SIGNAL XLXN_238(31:0)
        SIGNAL XLXN_239(31:0)
        SIGNAL XLXN_240(31:0)
        SIGNAL M(2)
        SIGNAL XLXN_243(31:0)
        SIGNAL XLXN_244(31:0)
        SIGNAL XLXN_245(31:0)
        SIGNAL XLXN_246(31:0)
        SIGNAL S(31:0)
        SIGNAL XLXN_252(31:0)
        SIGNAL XLXN_253(31:0)
        PORT Input M(2:0)
        PORT Input A(31:0)
        PORT Input B(31:0)
        PORT Output S(31:0)
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
        BEGIN BLOCKDEF mux2_32b
            TIMESTAMP 2026 1 24 23 47 42
            RECTANGLE N 64 -192 192 -64 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 128 -64 128 0 
            LINE N 192 -128 256 -128 
            RECTANGLE N 192 -140 256 -116 
        END BLOCKDEF
        BEGIN BLOCKDEF fan32
            TIMESTAMP 2026 1 26 23 16 42
            RECTANGLE N 0 -128 64 -64 
            LINE N 32 -128 32 -192 
            LINE N 32 -64 32 0 
            RECTANGLE N 20 -64 44 0 
        END BLOCKDEF
        BEGIN BLOCKDEF xor2_32b
            TIMESTAMP 2026 1 24 23 52 7
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF and2_32b
            TIMESTAMP 2026 1 27 0 12 31
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF or2_32b
            TIMESTAMP 2026 1 27 0 11 11
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -108 64 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -108 384 -84 
        END BLOCKDEF
        BEGIN BLOCKDEF rightshifter_32b
            TIMESTAMP 2026 1 26 22 4 30
            RECTANGLE N 0 -192 128 -64 
            LINE N 32 -64 32 0 
            LINE N 96 -64 96 0 
            RECTANGLE N 84 -64 108 0 
            LINE N 64 -192 64 -256 
            RECTANGLE N 52 -256 76 -192 
        END BLOCKDEF
        BEGIN BLOCKDEF adder_32b
            TIMESTAMP 2026 1 26 22 36 54
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
        BEGIN BLOCKDEF leftshifter_32b
            TIMESTAMP 2026 1 27 0 48 11
            RECTANGLE N 0 -192 128 -64 
            LINE N 32 -64 32 0 
            LINE N 96 -64 96 0 
            RECTANGLE N 84 -64 108 0 
            LINE N 64 -192 64 -256 
            RECTANGLE N 52 -256 76 -192 
        END BLOCKDEF
        BEGIN BLOCK XLXI_58 mux2_32b
            PIN A(31:0) XLXN_159(31:0)
            PIN B(31:0) XLXN_151(31:0)
            PIN S M(1)
            PIN Y(31:0) XLXN_252(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_71 fan32
            PIN X M(0)
            PIN Y(31:0) XLXN_151(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_49 xor2
            PIN I0 M(1)
            PIN I1 M(0)
            PIN O XLXN_150
        END BLOCK
        BEGIN BLOCK XLXI_74 xor2_32b
            PIN A(31:0) XLXN_160(31:0)
            PIN B(31:0) B(31:0)
            PIN C(31:0) XLXN_159(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_75 fan32
            PIN X M(0)
            PIN Y(31:0) XLXN_160(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_118 mux2_32b
            PIN A(31:0) XLXN_239(31:0)
            PIN B(31:0) XLXN_240(31:0)
            PIN S M(2)
            PIN Y(31:0) XLXN_238(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_119 mux2_32b
            PIN A(31:0) XLXN_246(31:0)
            PIN B(31:0) XLXN_245(31:0)
            PIN S M(1)
            PIN Y(31:0) XLXN_239(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_120 mux2_32b
            PIN A(31:0) XLXN_244(31:0)
            PIN B(31:0) XLXN_243(31:0)
            PIN S M(1)
            PIN Y(31:0) XLXN_240(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_123 and2_32b
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN S(31:0) XLXN_243(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_124 or2_32b
            PIN A(31:0) A(31:0)
            PIN B(31:0) B(31:0)
            PIN S(31:0) XLXN_244(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_125 rightshifter_32b
            PIN Cout
            PIN Y(31:0) XLXN_245(31:0)
            PIN X(31:0) A(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_128 mux2_32b
            PIN A(31:0) XLXN_253(31:0)
            PIN B(31:0) XLXN_238(31:0)
            PIN S M(2)
            PIN Y(31:0) S(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_129 adder_32b
            PIN A(31:0) A(31:0)
            PIN B(31:0) XLXN_252(31:0)
            PIN Cin XLXN_150
            PIN Cout
            PIN S(31:0) XLXN_253(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_131 leftshifter_32b
            PIN Cout
            PIN Y(31:0) XLXN_246(31:0)
            PIN X(31:0) A(31:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH M(2:0)
            WIRE 896 816 1056 816
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 640 720 1184 720
            WIRE 1184 720 1184 992
            WIRE 1184 992 1184 1088
            BEGIN DISPLAY 1184 992 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_58 1440 736 M90
        END INSTANCE
        BEGIN BRANCH XLXN_150
            WIRE 1312 1072 1312 1088
            WIRE 1312 1072 1472 1072
        END BRANCH
        BEGIN BRANCH M(1)
            WIRE 1440 864 1520 864
            WIRE 1520 864 1600 864
            BEGIN DISPLAY 1528 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_71 1360 608 R90
        END INSTANCE
        BEGIN BRANCH XLXN_151(31:0)
            WIRE 1344 640 1360 640
            WIRE 1344 640 1344 736
        END BRANCH
        BEGIN BRANCH M(0)
            WIRE 1552 640 1600 640
            WIRE 1600 640 1648 640
            BEGIN DISPLAY 1600 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_49 1728 1168 M0
        BEGIN BRANCH M(0)
            WIRE 1728 1040 1760 1040
            WIRE 1760 1040 1808 1040
            BEGIN DISPLAY 1760 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M(1)
            WIRE 1728 1104 1760 1104
            WIRE 1760 1104 1808 1104
            BEGIN DISPLAY 1760 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 640 560 784 560
        END BRANCH
        BEGIN BRANCH XLXN_159(31:0)
            WIRE 1168 496 1280 496
            WIRE 1280 496 1280 736
        END BRANCH
        BEGIN INSTANCE XLXI_74 784 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_75 720 432 M90
        END INSTANCE
        BEGIN BRANCH XLXN_160(31:0)
            WIRE 720 464 752 464
            WIRE 752 464 752 496
            WIRE 752 496 784 496
        END BRANCH
        BEGIN BRANCH M(0)
            WIRE 400 464 464 464
            WIRE 464 464 528 464
            BEGIN DISPLAY 464 464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 896 816 M(2:0) R180 28
        IOMARKER 640 720 A(31:0) R180 28
        IOMARKER 640 560 B(31:0) R180 28
        BEGIN INSTANCE XLXI_118 2512 1248 M90
        END INSTANCE
        BEGIN BRANCH XLXN_238(31:0)
            WIRE 1808 1536 1808 1584
            WIRE 1808 1536 2384 1536
            WIRE 2384 1504 2384 1536
        END BRANCH
        BEGIN INSTANCE XLXI_119 2352 944 M90
        END INSTANCE
        BEGIN INSTANCE XLXI_120 2688 944 M90
        END INSTANCE
        BEGIN BRANCH XLXN_239(31:0)
            WIRE 2224 1200 2224 1216
            WIRE 2224 1216 2352 1216
            WIRE 2352 1216 2352 1248
        END BRANCH
        BEGIN BRANCH XLXN_240(31:0)
            WIRE 2416 1216 2416 1248
            WIRE 2416 1216 2560 1216
            WIRE 2560 1200 2560 1216
        END BRANCH
        BEGIN BRANCH M(1)
            WIRE 2352 1072 2400 1072
            WIRE 2400 1072 2400 1232
            WIRE 2400 1232 2768 1232
            WIRE 2688 1072 2768 1072
            WIRE 2768 1072 2768 1152
            WIRE 2768 1152 2768 1232
            BEGIN DISPLAY 2768 1152 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH M(2)
            WIRE 2512 1376 2608 1376
            WIRE 2608 1376 2640 1376
            BEGIN DISPLAY 2608 1376 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_243(31:0)
            WIRE 2592 912 2592 944
        END BRANCH
        BEGIN INSTANCE XLXI_123 2688 528 M90
        END INSTANCE
        BEGIN BRANCH XLXN_244(31:0)
            WIRE 2528 912 2528 944
        END BRANCH
        BEGIN INSTANCE XLXI_124 2432 528 R90
        END INSTANCE
        BEGIN BRANCH XLXN_245(31:0)
            WIRE 2256 912 2256 944
        END BRANCH
        BEGIN INSTANCE XLXI_125 2352 912 M0
        END INSTANCE
        BEGIN BRANCH XLXN_246(31:0)
            WIRE 2192 912 2192 944
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 2464 480 2464 528
            WIRE 2464 480 2480 480
            WIRE 2480 480 2656 480
            WIRE 2656 480 2656 528
            BEGIN DISPLAY 2480 480 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH B(31:0)
            WIRE 2528 352 2528 528
            WIRE 2528 352 2544 352
            WIRE 2544 352 2592 352
            WIRE 2592 352 2592 528
            BEGIN DISPLAY 2544 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_128 1904 1584 M90
        END INSTANCE
        IOMARKER 1824 1872 S(31:0) R0 28
        BEGIN BRANCH S(31:0)
            WIRE 1776 1840 1776 1872
            WIRE 1776 1872 1824 1872
        END BRANCH
        BEGIN BRANCH M(2)
            WIRE 1904 1712 1968 1712
            WIRE 1968 1712 2112 1712
            BEGIN DISPLAY 1968 1712 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_129 1344 1088 M90
        END INSTANCE
        BEGIN BRANCH XLXN_252(31:0)
            WIRE 1248 1040 1248 1088
            WIRE 1248 1040 1312 1040
            WIRE 1312 992 1312 1040
        END BRANCH
        BEGIN BRANCH XLXN_253(31:0)
            WIRE 1248 1472 1248 1520
            WIRE 1248 1520 1744 1520
            WIRE 1744 1520 1744 1584
        END BRANCH
        BEGIN BRANCH A(31:0)
            WIRE 2160 576 2160 656
            WIRE 2160 576 2208 576
            WIRE 2208 576 2288 576
            WIRE 2288 576 2288 656
            BEGIN DISPLAY 2208 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_131 2096 912 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
