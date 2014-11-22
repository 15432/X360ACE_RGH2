<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="POST" />
        <signal name="XLXN_5" />
        <signal name="CLK" />
        <signal name="DBG" />
        <signal name="RST" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <port polarity="Input" name="POST" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="DBG" />
        <port polarity="Output" name="RST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <blockdef name="post_proc">
            <timestamp>2014-11-22T19:25:30</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="detect_10">
            <timestamp>2014-11-22T19:42:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="divider_fast">
            <timestamp>2014-11-22T19:30:30</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divider_slow">
            <timestamp>2014-11-22T19:32:25</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="hard_reset">
            <timestamp>2014-11-22T19:38:41</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2014-11-22T19:48:38</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="reset_proc">
            <timestamp>2014-11-22T20:39:21</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_1">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="XLXN_3" name="is_10" />
            <blockpin signalname="XLXN_11" name="to_slow" />
            <blockpin signalname="XLXN_15" name="to_count" />
            <blockpin signalname="XLXN_5" name="to_hr" />
            <blockpin signalname="DBG" name="DBG" />
        </block>
        <block symbolname="detect_10" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="CLK2" />
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="XLXN_3" name="is_10" />
        </block>
        <block symbolname="divider_fast" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_2" name="CLK2" />
        </block>
        <block symbolname="divider_slow" name="XLXI_4">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_12" name="CLK3" />
        </block>
        <block symbolname="hard_reset" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="to_hr" />
            <blockpin signalname="XLXN_2" name="CLK" />
            <blockpin signalname="RST" name="RST" />
        </block>
        <block symbolname="slower" name="XLXI_6">
            <blockpin signalname="XLXN_12" name="CLK3" />
            <blockpin signalname="XLXN_11" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
        </block>
        <block symbolname="reset_proc" name="XLXI_7">
            <blockpin signalname="XLXN_15" name="to_count" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="1376" name="XLXI_1" orien="R0">
        </instance>
        <instance x="912" y="1584" name="XLXI_3" orien="R0">
        </instance>
        <instance x="912" y="1776" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1776" y="1728" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="1424" y1="1280" y2="1280" x1="1312" />
            <wire x2="1424" y1="1280" y2="1344" x1="1424" />
            <wire x2="1440" y1="1344" y2="1344" x1="1424" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1696" y1="1520" y2="1632" x1="1696" />
            <wire x2="1776" y1="1632" y2="1632" x1="1696" />
            <wire x2="1904" y1="1520" y2="1520" x1="1696" />
            <wire x2="1904" y1="1280" y2="1280" x1="1824" />
            <wire x2="1904" y1="1280" y2="1520" x1="1904" />
        </branch>
        <instance x="928" y="1376" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="928" y1="1280" y2="1280" x1="864" />
            <wire x2="864" y1="1280" y2="1408" x1="864" />
            <wire x2="1536" y1="1408" y2="1408" x1="864" />
            <wire x2="1536" y1="1408" y2="1552" x1="1536" />
            <wire x2="1536" y1="1552" y2="1696" x1="1536" />
            <wire x2="1776" y1="1696" y2="1696" x1="1536" />
            <wire x2="1536" y1="1552" y2="1552" x1="1296" />
        </branch>
        <branch name="POST">
            <wire x2="896" y1="1152" y2="1152" x1="672" />
            <wire x2="896" y1="1152" y2="1344" x1="896" />
            <wire x2="928" y1="1344" y2="1344" x1="896" />
            <wire x2="1440" y1="1152" y2="1152" x1="896" />
        </branch>
        <branch name="CLK">
            <wire x2="896" y1="1648" y2="1648" x1="752" />
            <wire x2="896" y1="1648" y2="1744" x1="896" />
            <wire x2="912" y1="1744" y2="1744" x1="896" />
            <wire x2="896" y1="1744" y2="1872" x1="896" />
            <wire x2="1408" y1="1872" y2="1872" x1="896" />
            <wire x2="912" y1="1552" y2="1552" x1="896" />
            <wire x2="896" y1="1552" y2="1648" x1="896" />
        </branch>
        <iomarker fontsize="28" x="752" y="1648" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="672" y="1152" name="POST" orien="R180" />
        <branch name="DBG">
            <wire x2="1856" y1="1344" y2="1344" x1="1824" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1344" name="DBG" orien="R0" />
        <branch name="RST">
            <wire x2="1936" y1="1808" y2="1808" x1="1792" />
            <wire x2="1936" y1="1776" y2="1808" x1="1936" />
            <wire x2="2096" y1="1776" y2="1776" x1="1936" />
            <wire x2="2176" y1="1776" y2="1776" x1="2096" />
            <wire x2="2096" y1="1776" y2="1856" x1="2096" />
            <wire x2="2176" y1="1856" y2="1856" x1="2096" />
            <wire x2="2176" y1="1632" y2="1632" x1="2160" />
            <wire x2="2176" y1="1632" y2="1776" x1="2176" />
        </branch>
        <instance x="2112" y="1440" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="2016" y1="1152" y2="1152" x1="1824" />
            <wire x2="2016" y1="1152" y2="1408" x1="2016" />
            <wire x2="2112" y1="1408" y2="1408" x1="2016" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1360" y1="1744" y2="1744" x1="1296" />
            <wire x2="1360" y1="1536" y2="1744" x1="1360" />
            <wire x2="2096" y1="1536" y2="1536" x1="1360" />
            <wire x2="2096" y1="1344" y2="1536" x1="2096" />
            <wire x2="2112" y1="1344" y2="1344" x1="2096" />
        </branch>
        <branch name="SCL">
            <wire x2="2528" y1="1344" y2="1344" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1344" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2528" y1="1408" y2="1408" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1408" name="SDA" orien="R0" />
        <instance x="1408" y="1904" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="1392" y1="1744" y2="1808" x1="1392" />
            <wire x2="1408" y1="1808" y2="1808" x1="1392" />
            <wire x2="2512" y1="1744" y2="1744" x1="1392" />
            <wire x2="2512" y1="1216" y2="1216" x1="1824" />
            <wire x2="2512" y1="1216" y2="1744" x1="2512" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1856" name="RST" orien="R0" />
    </sheet>
</drawing>