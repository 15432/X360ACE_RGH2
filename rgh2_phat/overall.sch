<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="POST" />
        <signal name="CLK" />
        <signal name="DBG" />
        <signal name="XLXN_11" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_18" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_31" />
        <signal name="RST" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <port polarity="Input" name="POST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="DBG" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="BiDirectional" name="RST" />
        <blockdef name="post_proc">
            <timestamp>2014-11-23T11:46:43</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="448" />
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
            <blockpin signalname="XLXN_34" name="to_slow" />
            <blockpin signalname="DBG" name="DBG" />
        </block>
        <block symbolname="divider_slow" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_33" name="CLK3" />
        </block>
        <block symbolname="slower" name="XLXI_6">
            <blockpin signalname="XLXN_33" name="CLK3" />
            <blockpin signalname="XLXN_34" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="1776" name="XLXI_4" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="896" y1="1648" y2="1648" x1="752" />
            <wire x2="896" y1="1648" y2="1744" x1="896" />
            <wire x2="912" y1="1744" y2="1744" x1="896" />
            <wire x2="896" y1="1744" y2="1872" x1="896" />
            <wire x2="1408" y1="1872" y2="1872" x1="896" />
            <wire x2="912" y1="1552" y2="1552" x1="896" />
            <wire x2="896" y1="1552" y2="1648" x1="896" />
            <wire x2="1440" y1="1408" y2="1408" x1="1408" />
            <wire x2="1408" y1="1408" y2="1872" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="752" y="1648" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="672" y="1152" name="POST" orien="R180" />
        <branch name="DBG">
            <wire x2="1840" y1="1280" y2="1280" x1="1824" />
            <wire x2="1840" y1="1280" y2="1344" x1="1840" />
            <wire x2="1856" y1="1344" y2="1344" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1344" name="DBG" orien="R0" />
        <branch name="SCL">
            <wire x2="2480" y1="1344" y2="1504" x1="2480" />
            <wire x2="2704" y1="1504" y2="1504" x1="2480" />
            <wire x2="2528" y1="1344" y2="1344" x1="2480" />
            <wire x2="2704" y1="1232" y2="1232" x1="2624" />
            <wire x2="2704" y1="1232" y2="1504" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1344" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2528" y1="1408" y2="1408" x1="2512" />
            <wire x2="2512" y1="1408" y2="1488" x1="2512" />
            <wire x2="2720" y1="1488" y2="1488" x1="2512" />
            <wire x2="2720" y1="1296" y2="1296" x1="2624" />
            <wire x2="2720" y1="1296" y2="1488" x1="2720" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1408" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="2176" y="1856" name="RST" orien="R0" />
        <instance x="1440" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="896" y1="1152" y2="1152" x1="672" />
            <wire x2="896" y1="1152" y2="1184" x1="896" />
            <wire x2="736" y1="1184" y2="1344" x1="736" />
            <wire x2="800" y1="1344" y2="1344" x1="736" />
            <wire x2="896" y1="1184" y2="1184" x1="736" />
            <wire x2="1440" y1="1088" y2="1088" x1="896" />
            <wire x2="896" y1="1088" y2="1152" x1="896" />
        </branch>
        <instance x="2240" y="1328" name="XLXI_6" orien="R0">
        </instance>
        <branch name="RST">
            <wire x2="1440" y1="1344" y2="1344" x1="1360" />
            <wire x2="1360" y1="1344" y2="1392" x1="1360" />
            <wire x2="1984" y1="1392" y2="1392" x1="1360" />
            <wire x2="1984" y1="1392" y2="1808" x1="1984" />
            <wire x2="1984" y1="1808" y2="1856" x1="1984" />
            <wire x2="2176" y1="1856" y2="1856" x1="1984" />
            <wire x2="1984" y1="1808" y2="1808" x1="1792" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2032" y1="1744" y2="1744" x1="1296" />
            <wire x2="2032" y1="1232" y2="1744" x1="2032" />
            <wire x2="2240" y1="1232" y2="1232" x1="2032" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="2016" y1="1088" y2="1088" x1="1824" />
            <wire x2="2016" y1="1088" y2="1296" x1="2016" />
            <wire x2="2240" y1="1296" y2="1296" x1="2016" />
        </branch>
    </sheet>
</drawing>