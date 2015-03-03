<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="POST" />
        <signal name="DBG" />
        <signal name="RST" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_70" />
        <signal name="XLXN_72" />
        <signal name="XLXN_77" />
        <signal name="XLXN_80" />
        <signal name="CLK" />
        <signal name="XLXN_83" />
        <signal name="XLXN_85" />
        <signal name="XLXN_86" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="DBG" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="Input" name="CLK" />
        <blockdef name="post_proc">
            <timestamp>2015-3-1T22:10:33</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2015-3-1T22:6:33</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="divider_slow">
            <timestamp>2014-12-19T11:8:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="DBG" name="DBG" />
            <blockpin signalname="XLXN_85" name="to_do" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="XLXN_72" name="CLK3" />
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_85" name="to_do" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_72" name="CLK3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2096" y="1184" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1440" y="1456" name="XLXI_10" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="1024" y1="1088" y2="1088" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1088" name="POST" orien="R180" />
        <branch name="DBG">
            <wire x2="1440" y1="1152" y2="1152" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1152" name="DBG" orien="R0" />
        <branch name="RST">
            <wire x2="1440" y1="1216" y2="1216" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1440" y="1216" name="RST" orien="R0" />
        <branch name="SCL">
            <wire x2="2512" y1="1088" y2="1088" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1088" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2512" y1="1152" y2="1152" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1152" name="SDA" orien="R0" />
        <branch name="XLXN_70">
            <wire x2="1600" y1="1088" y2="1088" x1="1408" />
            <wire x2="1984" y1="1088" y2="1088" x1="1600" />
            <wire x2="2032" y1="1088" y2="1088" x1="1984" />
            <wire x2="2032" y1="1088" y2="1152" x1="2032" />
            <wire x2="2096" y1="1152" y2="1152" x1="2032" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="1872" y1="1424" y2="1424" x1="1824" />
            <wire x2="1936" y1="1424" y2="1424" x1="1872" />
            <wire x2="1872" y1="1328" y2="1424" x1="1872" />
            <wire x2="2080" y1="1328" y2="1328" x1="1872" />
            <wire x2="2080" y1="1088" y2="1328" x1="2080" />
            <wire x2="2096" y1="1088" y2="1088" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="368" y="1392" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="416" y1="1392" y2="1392" x1="368" />
            <wire x2="432" y1="1392" y2="1392" x1="416" />
            <wire x2="816" y1="1392" y2="1392" x1="432" />
            <wire x2="912" y1="1392" y2="1392" x1="816" />
            <wire x2="416" y1="1392" y2="1488" x1="416" />
            <wire x2="880" y1="1488" y2="1488" x1="416" />
            <wire x2="880" y1="1424" y2="1488" x1="880" />
            <wire x2="1440" y1="1424" y2="1424" x1="880" />
            <wire x2="912" y1="1216" y2="1392" x1="912" />
            <wire x2="1024" y1="1216" y2="1216" x1="912" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1424" y1="1280" y2="1280" x1="1408" />
            <wire x2="1424" y1="960" y2="1280" x1="1424" />
            <wire x2="1600" y1="960" y2="960" x1="1424" />
            <wire x2="1984" y1="960" y2="960" x1="1600" />
            <wire x2="2016" y1="960" y2="960" x1="1984" />
            <wire x2="2016" y1="960" y2="1216" x1="2016" />
            <wire x2="2096" y1="1216" y2="1216" x1="2016" />
        </branch>
    </sheet>
</drawing>