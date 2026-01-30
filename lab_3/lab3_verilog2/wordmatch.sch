VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL match
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datacomp(55:0)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL wildcard(6:0)
        PORT Input datain(111:0)
        PORT Output match
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2025 2 1 3 20 31
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_12
            PIN I1 XLXN_11
            PIN I2 XLXN_8
            PIN I3 XLXN_7
            PIN I4 XLXN_6
            PIN I5 XLXN_5
            PIN I6 XLXN_4
            PIN I7 XLXN_3
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1536 2464 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1536 2208 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1536 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1536 1696 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1536 1440 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1536 1184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1536 928 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1536 672 R0
        END INSTANCE
        INSTANCE XLXI_9 2288 1664 R0
        BEGIN BRANCH datain(111:0)
            WIRE 1376 304 1520 304
        END BRANCH
        BEGIN BRANCH match
            WIRE 2544 1376 2608 1376
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1920 512 2288 512
            WIRE 2288 512 2288 1152
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1920 768 2096 768
            WIRE 2096 768 2096 1216
            WIRE 2096 1216 2288 1216
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1920 1024 2080 1024
            WIRE 2080 1024 2080 1280
            WIRE 2080 1280 2288 1280
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1920 1280 2064 1280
            WIRE 2064 1280 2064 1344
            WIRE 2064 1344 2288 1344
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1920 1536 2096 1536
            WIRE 2096 1408 2096 1536
            WIRE 2096 1408 2288 1408
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1920 1792 2112 1792
            WIRE 2112 1472 2112 1792
            WIRE 2112 1472 2288 1472
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1920 2048 2128 2048
            WIRE 2128 1536 2128 2048
            WIRE 2128 1536 2288 1536
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1920 2304 2288 2304
            WIRE 2288 1600 2288 2304
        END BRANCH
        BEGIN BRANCH datain(55:0)
            WIRE 1456 576 1536 576
            BEGIN DISPLAY 1456 576 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 1456 832 1536 832
            BEGIN DISPLAY 1456 832 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 1472 1088 1536 1088
            BEGIN DISPLAY 1472 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 1472 1344 1536 1344
            BEGIN DISPLAY 1472 1344 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 1328 512 1360 512
            WIRE 1360 512 1376 512
            WIRE 1376 512 1536 512
            WIRE 1376 512 1376 768
            WIRE 1376 768 1536 768
            WIRE 1376 768 1376 1024
            WIRE 1376 1024 1536 1024
            WIRE 1376 1024 1376 1280
            WIRE 1376 1280 1536 1280
            WIRE 1376 1280 1376 1536
            WIRE 1376 1536 1536 1536
            WIRE 1376 1536 1376 1792
            WIRE 1376 1792 1536 1792
            WIRE 1376 1792 1376 2048
            WIRE 1376 2048 1536 2048
            WIRE 1376 2048 1376 2304
            WIRE 1376 2304 1536 2304
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1472 1600 1536 1600
            BEGIN DISPLAY 1472 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 1472 1856 1536 1856
            BEGIN DISPLAY 1472 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 1472 2112 1536 2112
            BEGIN DISPLAY 1472 2112 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 1472 2368 1536 2368
            BEGIN DISPLAY 1472 2368 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 1344 640 1408 640
            WIRE 1408 640 1536 640
            WIRE 1408 640 1408 896
            WIRE 1408 896 1536 896
            WIRE 1408 896 1408 1152
            WIRE 1408 1152 1536 1152
            WIRE 1408 1152 1408 1408
            WIRE 1408 1408 1536 1408
            WIRE 1408 1408 1408 1664
            WIRE 1408 1664 1536 1664
            WIRE 1408 1664 1408 1920
            WIRE 1408 1920 1536 1920
            WIRE 1408 1920 1408 2176
            WIRE 1408 2176 1536 2176
            WIRE 1408 2176 1408 2432
            WIRE 1408 2432 1536 2432
        END BRANCH
        IOMARKER 1376 304 datain(111:0) R180 28
        IOMARKER 1328 512 datacomp(55:0) R180 28
        IOMARKER 1344 640 wildcard(6:0) R180 28
        IOMARKER 2608 1376 match R0 28
    END SHEET
END SCHEMATIC
