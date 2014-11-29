<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DBG" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_37" />
        <signal name="POST" />
        <signal name="RST" />
        <signal name="CLK" />
        <signal name="XLXN_55" />
        <port polarity="Output" name="DBG" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="Input" name="POST" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Input" name="CLK" />
        <blockdef name="post_proc">
            <timestamp>2014-11-25T20:48:13</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="512" />
        </blockdef>
        <blockdef name="divider_slow">
            <timestamp>2014-11-22T19:32:25</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2014-11-22T19:48:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_1">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_37" name="to_slow" />
            <blockpin signalname="DBG" name="DBG" />
        </block>
        <block symbolname="divider_slow" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_55" name="CLK3" />
        </block>
        <block symbolname="slower" name="XLXI_6">
            <blockpin signalname="XLXN_55" name="CLK3" />
            <blockpin signalname="XLXN_37" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="DBG">
            <wire x2="864" y1="1184" y2="1184" x1="832" />
        </branch>
        <branch name="SCL">
            <wire x2="1856" y1="992" y2="992" x1="1840" />
        </branch>
        <branch name="SDA">
            <wire x2="1856" y1="1056" y2="1056" x1="1840" />
        </branch>
        <instance x="448" y="1216" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_37">
            <wire x2="1328" y1="992" y2="992" x1="832" />
            <wire x2="1328" y1="992" y2="1056" x1="1328" />
            <wire x2="1456" y1="1056" y2="1056" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="864" y="1184" name="DBG" orien="R0" />
        <iomarker fontsize="28" x="1856" y="992" name="SCL" orien="R0" />
        <iomarker fontsize="28" x="1856" y="1056" name="SDA" orien="R0" />
        <instance x="1456" y="1088" name="XLXI_6" orien="R0">
        </instance>
        <instance x="992" y="1344" name="XLXI_4" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="448" y1="992" y2="992" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="992" name="POST" orien="R180" />
        <branch name="RST">
            <wire x2="448" y1="1248" y2="1248" x1="416" />
        </branch>
        <branch name="CLK">
            <wire x2="448" y1="1312" y2="1312" x1="384" />
            <wire x2="384" y1="1312" y2="1536" x1="384" />
            <wire x2="896" y1="1536" y2="1536" x1="384" />
            <wire x2="896" y1="1312" y2="1472" x1="896" />
            <wire x2="992" y1="1472" y2="1472" x1="896" />
            <wire x2="896" y1="1472" y2="1536" x1="896" />
            <wire x2="992" y1="1312" y2="1312" x1="896" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1456" y1="992" y2="992" x1="1376" />
            <wire x2="1376" y1="992" y2="1136" x1="1376" />
            <wire x2="1456" y1="1136" y2="1136" x1="1376" />
            <wire x2="1456" y1="1136" y2="1312" x1="1456" />
            <wire x2="1472" y1="1312" y2="1312" x1="1456" />
            <wire x2="1456" y1="1312" y2="1312" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="992" y="1472" name="CLK" orien="R0" />
        <iomarker fontsize="28" x="416" y="1248" name="RST" orien="R180" />
    </sheet>
</drawing>