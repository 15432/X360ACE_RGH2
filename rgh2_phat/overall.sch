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
        <signal name="XLXN_87" />
        <signal name="XLXN_89" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="GCK" />
        <signal name="CLK" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <signal name="XLXN_109" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115" />
        <signal name="XLXN_116" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="DBG" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="BiDirectional" name="GCK" />
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
        <blockdef name="weird">
            <timestamp>2015-3-1T20:54:54</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clk_300_to_200">
            <timestamp>2015-3-2T0:15:19</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="delayer">
            <timestamp>2015-3-7T22:42:12</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="XLXN_102" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_112" name="to_slow" />
            <blockpin signalname="DBG" name="DBG" />
            <blockpin signalname="XLXN_113" name="to_do" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="XLXN_109" name="CLK3" />
            <blockpin signalname="XLXN_114" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_115" name="to_do" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="XLXN_108" name="CLK" />
            <blockpin signalname="XLXN_109" name="CLK3" />
        </block>
        <block symbolname="weird" name="XLXI_16">
            <blockpin signalname="XLXN_101" name="CLK" />
            <blockpin signalname="XLXN_102" name="GCK_I" />
            <blockpin signalname="GCK" name="GCK" />
        </block>
        <block symbolname="clk_300_to_200" name="XLXI_17">
            <blockpin signalname="XLXN_108" name="IN_300" />
            <blockpin signalname="XLXN_101" name="OUT_200" />
        </block>
        <block symbolname="ibuf" name="XLXI_18">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_108" name="O" />
        </block>
        <block symbolname="delayer" name="XLXI_19">
            <blockpin signalname="XLXN_116" name="CLK3" />
            <blockpin signalname="XLXN_112" name="in_slow" />
            <blockpin signalname="XLXN_113" name="in_do" />
            <blockpin signalname="XLXN_114" name="out_slow" />
            <blockpin signalname="XLXN_115" name="out_do" />
        </block>
        <block symbolname="divider_slow" name="XLXI_20">
            <blockpin signalname="XLXN_109" name="CLK" />
            <blockpin signalname="XLXN_116" name="CLK3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2096" y="1184" name="XLXI_9" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="912" y1="1088" y2="1088" x1="832" />
        </branch>
        <branch name="DBG">
            <wire x2="1312" y1="1152" y2="1152" x1="1296" />
            <wire x2="1344" y1="1152" y2="1152" x1="1312" />
        </branch>
        <branch name="RST">
            <wire x2="1312" y1="1216" y2="1216" x1="1296" />
            <wire x2="1344" y1="1216" y2="1216" x1="1312" />
        </branch>
        <branch name="SCL">
            <wire x2="2512" y1="1088" y2="1088" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1088" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2512" y1="1152" y2="1152" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1152" name="SDA" orien="R0" />
        <instance x="80" y="1344" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_102">
            <wire x2="864" y1="896" y2="896" x1="624" />
            <wire x2="864" y1="896" y2="1216" x1="864" />
            <wire x2="912" y1="1216" y2="1216" x1="864" />
        </branch>
        <branch name="GCK">
            <wire x2="640" y1="960" y2="960" x1="624" />
            <wire x2="656" y1="960" y2="960" x1="640" />
        </branch>
        <iomarker fontsize="28" x="368" y="1584" name="CLK" orien="R180" />
        <instance x="496" y="1616" name="XLXI_18" orien="R0" />
        <branch name="CLK">
            <wire x2="496" y1="1584" y2="1584" x1="368" />
        </branch>
        <instance x="240" y="992" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_101">
            <wire x2="240" y1="896" y2="896" x1="176" />
            <wire x2="176" y1="896" y2="1056" x1="176" />
            <wire x2="480" y1="1056" y2="1056" x1="176" />
            <wire x2="480" y1="1056" y2="1312" x1="480" />
            <wire x2="480" y1="1312" y2="1312" x1="464" />
        </branch>
        <iomarker fontsize="28" x="656" y="960" name="GCK" orien="R0" />
        <branch name="XLXN_108">
            <wire x2="80" y1="1312" y2="1312" x1="16" />
            <wire x2="16" y1="1312" y2="1424" x1="16" />
            <wire x2="768" y1="1424" y2="1424" x1="16" />
            <wire x2="768" y1="1424" y2="1584" x1="768" />
            <wire x2="992" y1="1584" y2="1584" x1="768" />
            <wire x2="768" y1="1584" y2="1584" x1="720" />
            <wire x2="992" y1="1424" y2="1584" x1="992" />
            <wire x2="1232" y1="1424" y2="1424" x1="992" />
        </branch>
        <iomarker fontsize="28" x="832" y="1088" name="POST" orien="R180" />
        <instance x="912" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1344" y="1152" name="DBG" orien="R0" />
        <iomarker fontsize="28" x="1344" y="1216" name="RST" orien="R0" />
        <instance x="1232" y="1456" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_109">
            <wire x2="1840" y1="1424" y2="1424" x1="1616" />
            <wire x2="1968" y1="1424" y2="1424" x1="1840" />
            <wire x2="1840" y1="1088" y2="1424" x1="1840" />
            <wire x2="2096" y1="1088" y2="1088" x1="1840" />
        </branch>
        <instance x="1520" y="1152" name="XLXI_19" orien="R0">
        </instance>
        <branch name="XLXN_112">
            <wire x2="1472" y1="1088" y2="1088" x1="1296" />
            <wire x2="1472" y1="1088" y2="1184" x1="1472" />
            <wire x2="1520" y1="1184" y2="1184" x1="1472" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="1472" y1="1280" y2="1280" x1="1296" />
            <wire x2="1472" y1="1248" y2="1280" x1="1472" />
            <wire x2="1520" y1="1248" y2="1248" x1="1472" />
        </branch>
        <branch name="XLXN_114">
            <wire x2="2000" y1="1184" y2="1184" x1="1904" />
            <wire x2="2000" y1="1152" y2="1184" x1="2000" />
            <wire x2="2096" y1="1152" y2="1152" x1="2000" />
        </branch>
        <branch name="XLXN_115">
            <wire x2="2000" y1="1248" y2="1248" x1="1904" />
            <wire x2="2000" y1="1216" y2="1248" x1="2000" />
            <wire x2="2096" y1="1216" y2="1216" x1="2000" />
        </branch>
        <instance x="1968" y="1456" name="XLXI_20" orien="R0">
        </instance>
        <branch name="XLXN_116">
            <wire x2="1504" y1="976" y2="1120" x1="1504" />
            <wire x2="1520" y1="1120" y2="1120" x1="1504" />
            <wire x2="2704" y1="976" y2="976" x1="1504" />
            <wire x2="2704" y1="976" y2="1424" x1="2704" />
            <wire x2="2704" y1="1424" y2="1424" x1="2352" />
        </branch>
    </sheet>
</drawing>