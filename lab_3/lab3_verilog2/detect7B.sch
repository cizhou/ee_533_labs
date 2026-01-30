VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_13
        SIGNAL hwregA(55:0)
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(71:0)
        SIGNAL hwregA(63:0)
        SIGNAL ce
        SIGNAL XLXN_12
        SIGNAL XLXN_27
        SIGNAL match_en
        SIGNAL match
        SIGNAL XLXN_30
        SIGNAL XLXN_17
        SIGNAL mrst
        SIGNAL clk
        SIGNAL hwregA(62:56)
        SIGNAL pipe1(63:0)
        SIGNAL XLXN_36(111:0)
        BEGIN SIGNAL pipe0(47:0)
        END SIGNAL
        PORT Input pipe1(71:0)
        PORT Input hwregA(63:0)
        PORT Input ce
        PORT Input match_en
        PORT Output match
        PORT Input mrst
        PORT Input clk
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2025 2 1 3 23 5
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2025 2 1 3 21 18
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2025 2 1 3 22 17
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_8 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_36(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 reg9B
            PIN d(71:0) pipe1(71:0)
            PIN ce clk
            PIN clk ce
            PIN clr XLXN_17
            PIN q(71:0) pipe0(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 wordmatch
            PIN datain(111:0) XLXN_36(111:0)
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN match XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_5 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_27
            PIN O XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_7 fdce
            PIN C clk
            PIN CE XLXN_12
            PIN CLR XLXN_17
            PIN D XLXN_12
            PIN Q match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_8 800 1408 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 816 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1328 1472 R0
        END INSTANCE
        INSTANCE XLXI_5 1792 1504 R0
        INSTANCE XLXI_6 1696 1936 R0
        INSTANCE XLXI_7 2208 1632 R0
        BEGIN BRANCH hwregA(55:0)
            WIRE 1280 1376 1328 1376
            WIRE 1280 1376 1280 1504
            BEGIN DISPLAY 1280 1504 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 752 832 816 832
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1200 832 1280 832
            BEGIN DISPLAY 1280 832 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 2160 816 2304 816
        END BRANCH
        BEGIN BRANCH ce
            WIRE 768 960 816 960
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 2048 1376 2080 1376
            WIRE 2080 1376 2208 1376
            WIRE 2080 1376 2080 1440
            WIRE 2080 1440 2208 1440
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1712 1312 1792 1312
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1616 1520 1728 1520
            WIRE 1728 1376 1728 1520
            WIRE 1728 1376 1792 1376
        END BRANCH
        BEGIN BRANCH match
            WIRE 1776 1232 1776 1440
            WIRE 1776 1440 1792 1440
            WIRE 1776 1232 2608 1232
            WIRE 2608 1232 2608 1376
            WIRE 2608 1376 2688 1376
            WIRE 2592 1376 2608 1376
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 736 1024 816 1024
            WIRE 736 1024 736 1904
            WIRE 736 1904 2208 1904
            WIRE 2080 1680 2208 1680
            WIRE 2208 1680 2208 1904
            WIRE 2208 1600 2208 1680
        END BRANCH
        BEGIN BRANCH mrst
            WIRE 1616 1680 1696 1680
        END BRANCH
        BEGIN BRANCH clk
            WIRE 752 896 784 896
            WIRE 784 896 816 896
            WIRE 784 896 784 1184
            WIRE 784 1184 784 1808
            WIRE 784 1808 1696 1808
            WIRE 784 1184 2128 1184
            WIRE 2128 1184 2128 1504
            WIRE 2128 1504 2208 1504
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1312 1440 1328 1440
            WIRE 1312 1440 1312 1568
            BEGIN DISPLAY 1312 1568 ATTR Name
                ALIGNMENT SOFT-VRIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 752 832 pipe1(71:0) R180 28
        IOMARKER 752 896 clk R180 28
        IOMARKER 768 960 ce R180 28
        IOMARKER 2160 816 hwregA(63:0) R180 28
        IOMARKER 1616 1520 match_en R180 28
        IOMARKER 1616 1680 mrst R180 28
        IOMARKER 2688 1376 match R0 28
        BEGIN BRANCH pipe1(63:0)
            WIRE 704 1376 800 1376
            BEGIN DISPLAY 704 1376 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_36(111:0)
            WIRE 1184 1312 1328 1312
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 704 1312 800 1312
            BEGIN DISPLAY 704 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
