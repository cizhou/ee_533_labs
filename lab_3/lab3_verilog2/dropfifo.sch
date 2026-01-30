VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3a"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_9
        SIGNAL drop_pkt
        SIGNAL fiforead
        SIGNAL XLXN_8
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL XLXN_124
        SIGNAL XLXN_123
        SIGNAL XLXN_128
        SIGNAL XLXN_129
        SIGNAL XLXN_32(7:0)
        SIGNAL XLXN_131
        SIGNAL XLXN_136(0:0)
        SIGNAL valid_data
        SIGNAL XLXN_142
        SIGNAL XLXN_144
        SIGNAL in_fifo(71:0)
        SIGNAL XLXN_148(7:0)
        SIGNAL clk
        SIGNAL fifowrite
        SIGNAL rst
        SIGNAL XLXN_156(7:0)
        SIGNAL XLXN_157(71:0)
        SIGNAL out_fifo(71:0)
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Input firstword
        PORT Input lastword
        PORT Output valid_data
        PORT Input in_fifo(71:0)
        PORT Input clk
        PORT Input fifowrite
        PORT Input rst
        PORT Output out_fifo(71:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
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
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 28 5 41 55
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF dual9Bmem
            TIMESTAMP 2026 1 29 6 47 46
            RECTANGLE N 32 32 268 576 
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            BEGIN LINE W 304 272 272 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCK XLXI_12 cb8ce
            PIN C clk
            PIN CE XLXN_142
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) XLXN_32(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_4 and3b2
            PIN I0 XLXN_9
            PIN I1 XLXN_8
            PIN I2 fiforead
            PIN O XLXN_142
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) XLXN_32(7:0)
            PIN B(7:0) XLXN_148(7:0)
            PIN EQ XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_35 cb8cle
            PIN C clk
            PIN CE XLXN_136(0:0)
            PIN CLR rst
            PIN D(7:0) XLXN_148(7:0)
            PIN L XLXN_131
            PIN CEO
            PIN Q(7:0) XLXN_156(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_18 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_131
        END BLOCK
        BEGIN BLOCK XLXI_11 fd8ce
            PIN C clk
            PIN CE XLXN_129
            PIN CLR
            PIN D(7:0) XLXN_156(7:0)
            PIN Q(7:0) XLXN_148(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_25 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_124
        END BLOCK
        BEGIN BLOCK XLXI_24 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_123
        END BLOCK
        BEGIN BLOCK XLXI_53 or2
            PIN I0 XLXN_124
            PIN I1 XLXN_123
            PIN O XLXN_128
        END BLOCK
        BEGIN BLOCK XLXI_55 and2b1
            PIN I0 XLXN_131
            PIN I1 XLXN_128
            PIN O XLXN_129
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) XLXN_156(7:0)
            PIN B(7:0) XLXN_32(7:0)
            PIN EQ XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_58 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_142
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_60 reg9B
            PIN d(71:0) in_fifo(71:0)
            PIN clr
            PIN clk clk
            PIN ce XLXN_144
            PIN q(71:0) XLXN_157(71:0)
        END BLOCK
        BEGIN BLOCK XLXI_61 vcc
            PIN P XLXN_144
        END BLOCK
        BEGIN BLOCK XLXI_52 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_136(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_64 dual9Bmem
            PIN addra(7:0) XLXN_156(7:0)
            PIN dina(71:0) XLXN_157(71:0)
            PIN wea(0:0) XLXN_136(0:0)
            PIN clka clk
            PIN addrb(7:0) XLXN_32(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH drop_pkt
            WIRE 320 2352 528 2352
        END BRANCH
        INSTANCE XLXI_12 2192 2096 R0
        INSTANCE XLXI_4 1792 2032 R0
        INSTANCE XLXI_2 1296 2576 R0
        BEGIN BRANCH XLXN_9
            WIRE 1680 2352 1696 2352
            WIRE 1696 1968 1792 1968
            WIRE 1696 1968 1696 2352
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1760 1840 1792 1840
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1680 1904 1792 1904
        END BRANCH
        INSTANCE XLXI_35 2192 1712 R0
        INSTANCE XLXI_18 528 2608 R0
        INSTANCE XLXI_11 624 1648 R0
        BEGIN BRANCH firstword
            WIRE 256 576 496 576
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 272 896 496 896
        END BRANCH
        INSTANCE XLXI_25 496 1152 R0
        INSTANCE XLXI_24 496 832 R0
        BEGIN BRANCH XLXN_124
            WIRE 880 896 976 896
        END BRANCH
        INSTANCE XLXI_53 976 960 R0
        BEGIN BRANCH XLXN_123
            WIRE 880 576 896 576
            WIRE 896 576 896 832
            WIRE 896 832 976 832
        END BRANCH
        BEGIN BRANCH XLXN_128
            WIRE 1232 864 1264 864
        END BRANCH
        INSTANCE XLXI_55 1264 992 R0
        BEGIN BRANCH XLXN_129
            WIRE 496 1168 496 1456
            WIRE 496 1456 624 1456
            WIRE 496 1168 1600 1168
            WIRE 1520 896 1600 896
            WIRE 1600 896 1600 1168
        END BRANCH
        BEGIN BRANCH XLXN_32(7:0)
            WIRE 1280 2000 1280 2112
            WIRE 1280 2112 1280 2256
            WIRE 1280 2256 1296 2256
            WIRE 1280 2112 2752 2112
            WIRE 1280 2000 1296 2000
            WIRE 2576 1840 2752 1840
            WIRE 2752 1840 2752 2112
            WIRE 2752 1840 2928 1840
        END BRANCH
        INSTANCE XLXI_3 1296 2128 R0
        BEGIN BRANCH XLXN_131
            WIRE 912 2352 1200 2352
            WIRE 1200 928 1264 928
            WIRE 1200 928 1200 1456
            WIRE 1200 1456 1200 2352
            WIRE 1200 1456 2192 1456
        END BRANCH
        BEGIN BRANCH XLXN_136(0:0)
            WIRE 1696 240 1936 240
            WIRE 1936 240 1936 992
            WIRE 1936 992 1936 1520
            WIRE 1936 1520 2192 1520
            WIRE 1936 992 2848 992
            WIRE 2848 992 2848 1712
            WIRE 2848 1712 2928 1712
        END BRANCH
        INSTANCE XLXI_58 2208 2528 R0
        BEGIN BRANCH valid_data
            WIRE 2592 2272 2688 2272
        END BRANCH
        BEGIN BRANCH XLXN_142
            WIRE 2048 1904 2064 1904
            WIRE 2064 1904 2192 1904
            WIRE 2064 1904 2064 2272
            WIRE 2064 2272 2208 2272
        END BRANCH
        BEGIN INSTANCE XLXI_60 2272 688 R0
        END INSTANCE
        BEGIN BRANCH XLXN_144
            WIRE 2256 656 2272 656
            WIRE 2256 656 2256 736
        END BRANCH
        INSTANCE XLXI_61 2192 736 M180
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2240 464 2272 464
        END BRANCH
        BEGIN BRANCH XLXN_148(7:0)
            WIRE 1008 1392 1024 1392
            WIRE 1024 1392 1024 2448
            WIRE 1024 2448 1296 2448
            WIRE 1024 1328 2192 1328
            WIRE 1024 1328 1024 1392
        END BRANCH
        BEGIN BRANCH clk
            WIRE 256 2480 416 2480
            WIRE 416 2480 528 2480
            WIRE 416 2480 416 2576
            WIRE 416 2576 2112 2576
            WIRE 2112 2576 2896 2576
            WIRE 416 368 416 704
            WIRE 416 704 496 704
            WIRE 416 704 416 1024
            WIRE 416 1024 416 1520
            WIRE 416 1520 416 2480
            WIRE 416 1520 624 1520
            WIRE 416 1024 496 1024
            WIRE 416 368 1312 368
            WIRE 2112 592 2272 592
            WIRE 2112 592 2112 1584
            WIRE 2112 1584 2192 1584
            WIRE 2112 1584 2112 1968
            WIRE 2112 1968 2192 1968
            WIRE 2112 1968 2112 2400
            WIRE 2112 2400 2208 2400
            WIRE 2112 2400 2112 2576
            WIRE 2896 1776 2928 1776
            WIRE 2896 1776 2896 2032
            WIRE 2896 2032 2928 2032
            WIRE 2896 2032 2896 2576
        END BRANCH
        INSTANCE XLXI_52 1312 496 R0
        BEGIN BRANCH fifowrite
            WIRE 1152 240 1312 240
        END BRANCH
        BEGIN BRANCH rst
            WIRE 2048 1680 2176 1680
            WIRE 2176 1680 2192 1680
            WIRE 2176 1680 2176 2064
            WIRE 2176 2064 2192 2064
            WIRE 2176 2064 2176 2496
            WIRE 2176 2496 2208 2496
        END BRANCH
        BEGIN BRANCH XLXN_156(7:0)
            WIRE 592 1392 592 1808
            WIRE 592 1808 1280 1808
            WIRE 1280 1808 1296 1808
            WIRE 592 1392 624 1392
            WIRE 1280 1088 1280 1808
            WIRE 1280 1088 2704 1088
            WIRE 2704 1088 2704 1328
            WIRE 2704 1328 2704 1584
            WIRE 2704 1584 2928 1584
            WIRE 2576 1328 2704 1328
        END BRANCH
        BEGIN BRANCH XLXN_157(71:0)
            WIRE 2656 464 2784 464
            WIRE 2784 464 2784 1616
            WIRE 2784 1616 2928 1616
        END BRANCH
        IOMARKER 320 2352 drop_pkt R180 28
        IOMARKER 256 2480 clk R180 28
        IOMARKER 1760 1840 fiforead R180 28
        IOMARKER 256 576 firstword R180 28
        IOMARKER 272 896 lastword R180 28
        IOMARKER 2688 2272 valid_data R0 28
        IOMARKER 2240 464 in_fifo(71:0) R180 28
        IOMARKER 1152 240 fifowrite R180 28
        IOMARKER 2048 1680 rst R180 28
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3232 1776 3280 1776
        END BRANCH
        IOMARKER 3280 1776 out_fifo(71:0) R0 28
        BEGIN INSTANCE XLXI_64 2928 1504 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
