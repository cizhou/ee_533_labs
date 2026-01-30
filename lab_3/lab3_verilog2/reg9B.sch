VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL XLXN_3
        SIGNAL ce
        SIGNAL XLXN_5
        SIGNAL clk
        SIGNAL XLXN_7
        SIGNAL clr
        SIGNAL q(15:0)
        SIGNAL d(15:0)
        SIGNAL q(31:16)
        SIGNAL d(31:16)
        SIGNAL q(47:32)
        SIGNAL d(47:32)
        SIGNAL q(63:48)
        SIGNAL d(63:48)
        SIGNAL q(71:64)
        SIGNAL d(71:64)
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input ce
        PORT Input clk
        PORT Input clr
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1504 1328 R0
        INSTANCE XLXI_2 1504 1696 R0
        INSTANCE XLXI_3 1504 2048 R0
        INSTANCE XLXI_4 1504 2416 R0
        BEGIN BRANCH d(71:0)
            WIRE 1232 432 1408 432
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1712 432 1936 432
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1392 2224 1440 2224
            WIRE 1440 2224 1488 2224
            WIRE 1488 2224 1504 2224
            WIRE 1488 768 1504 768
            WIRE 1488 768 1488 1136
            WIRE 1488 1136 1504 1136
            WIRE 1488 1136 1488 1504
            WIRE 1488 1504 1504 1504
            WIRE 1488 1504 1488 1856
            WIRE 1488 1856 1504 1856
            WIRE 1488 1856 1488 2224
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1392 2288 1440 2288
            WIRE 1440 2288 1472 2288
            WIRE 1472 2288 1504 2288
            WIRE 1472 832 1504 832
            WIRE 1472 832 1472 1200
            WIRE 1472 1200 1504 1200
            WIRE 1472 1200 1472 1568
            WIRE 1472 1568 1504 1568
            WIRE 1472 1568 1472 1920
            WIRE 1472 1920 1504 1920
            WIRE 1472 1920 1472 2288
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1392 2384 1440 2384
            WIRE 1440 2384 1456 2384
            WIRE 1456 2384 1504 2384
            WIRE 1456 928 1504 928
            WIRE 1456 928 1456 1296
            WIRE 1456 1296 1504 1296
            WIRE 1456 1296 1456 1664
            WIRE 1456 1664 1504 1664
            WIRE 1456 1664 1456 2016
            WIRE 1456 2016 1504 2016
            WIRE 1456 2016 1456 2384
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1888 2160 1968 2160
            BEGIN DISPLAY 1968 2160 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1392 2160 1504 2160
            BEGIN DISPLAY 1392 2160 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1888 1792 1952 1792
            BEGIN DISPLAY 1952 1792 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1392 1792 1504 1792
            BEGIN DISPLAY 1392 1792 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1888 1440 1968 1440
            BEGIN DISPLAY 1968 1440 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1408 1440 1504 1440
            BEGIN DISPLAY 1408 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1888 1072 1968 1072
            BEGIN DISPLAY 1968 1072 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1408 1072 1504 1072
            BEGIN DISPLAY 1408 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1888 704 1968 704
            BEGIN DISPLAY 1968 704 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:64)
            WIRE 1408 704 1504 704
            BEGIN DISPLAY 1408 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_6 1504 960 R0
        IOMARKER 1392 2224 ce R180 28
        IOMARKER 1392 2288 clk R180 28
        IOMARKER 1392 2384 clr R180 28
        IOMARKER 1232 432 d(71:0) R180 28
        IOMARKER 1936 432 q(71:0) R0 28
    END SHEET
END SCHEMATIC
