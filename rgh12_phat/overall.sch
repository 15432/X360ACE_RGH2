<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="CLK" />
        <signal name="GCK" />
        <signal name="POST" />
        <signal name="RST" />
        <signal name="PLL" />
        <signal name="DBG" />
        <signal name="XLXN_59" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <port polarity="Input" name="CLK" />
        <port polarity="BiDirectional" name="GCK" />
        <port polarity="Input" name="POST" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="PLL" />
        <port polarity="Output" name="DBG" />
        <blockdef name="counter">
            <timestamp>2015-5-1T0:15:8</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="divider">
            <timestamp>2015-4-30T23:47:41</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="post_proc">
            <timestamp>2015-5-1T0:4:58</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="reseter">
            <timestamp>2015-4-30T23:47:55</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2015-5-1T0:14:45</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="weird">
            <timestamp>2015-4-30T23:48:8</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="weird" name="XLXI_6">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_72" name="GCK_I" />
            <blockpin signalname="GCK" name="GCK" />
        </block>
        <block symbolname="counter" name="XLXI_1">
            <blockpin signalname="XLXN_68" name="clk_50" />
            <blockpin signalname="XLXN_66" name="to_count" />
            <blockpin signalname="XLXN_4" name="callback" />
            <blockpin signalname="XLXN_5" name="to_reset" />
            <blockpin signalname="XLXN_59" name="timeout" />
        </block>
        <block symbolname="reseter" name="XLXI_4">
            <blockpin signalname="XLXN_72" name="clk" />
            <blockpin signalname="XLXN_5" name="to_reset" />
            <blockpin signalname="RST" name="RST" />
        </block>
        <block symbolname="post_proc" name="XLXI_3">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_64" name="to_slow" />
            <blockpin signalname="XLXN_66" name="to_count" />
            <blockpin signalname="DBG" name="DBG" />
        </block>
        <block symbolname="slower" name="XLXI_5">
            <blockpin signalname="XLXN_64" name="to_slow" />
            <blockpin signalname="XLXN_66" name="to_count" />
            <blockpin signalname="XLXN_68" name="clk_50" />
            <blockpin signalname="PLL" name="PLL" />
            <blockpin signalname="XLXN_4" name="callback" />
            <blockpin signalname="XLXN_59" name="timeout" />
        </block>
        <block symbolname="divider" name="XLXI_2">
            <blockpin signalname="XLXN_72" name="CLK" />
            <blockpin signalname="XLXN_68" name="CLK3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2000" y="1312" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_4">
            <wire x2="1984" y1="1472" y2="1472" x1="1904" />
            <wire x2="2000" y1="1280" y2="1280" x1="1984" />
            <wire x2="1984" y1="1280" y2="1472" x1="1984" />
        </branch>
        <instance x="1520" y="1504" name="XLXI_5" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="352" y1="976" y2="976" x1="320" />
        </branch>
        <branch name="GCK">
            <wire x2="784" y1="1040" y2="1040" x1="736" />
        </branch>
        <branch name="POST">
            <wire x2="816" y1="1536" y2="1536" x1="800" />
            <wire x2="912" y1="1344" y2="1344" x1="816" />
            <wire x2="816" y1="1344" y2="1536" x1="816" />
        </branch>
        <branch name="RST">
            <wire x2="912" y1="1408" y2="1408" x1="880" />
            <wire x2="880" y1="1408" y2="1616" x1="880" />
            <wire x2="1856" y1="1616" y2="1616" x1="880" />
            <wire x2="1856" y1="1616" y2="1696" x1="1856" />
            <wire x2="2896" y1="1616" y2="1616" x1="1856" />
            <wire x2="2896" y1="912" y2="912" x1="2816" />
            <wire x2="2896" y1="912" y2="1616" x1="2896" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1696" name="RST" orien="R90" />
        <branch name="PLL">
            <wire x2="1936" y1="1344" y2="1344" x1="1904" />
        </branch>
        <branch name="DBG">
            <wire x2="1344" y1="1472" y2="1472" x1="1296" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="1520" y1="1536" y2="1536" x1="1456" />
            <wire x2="1456" y1="1536" y2="1584" x1="1456" />
            <wire x2="2464" y1="1584" y2="1584" x1="1456" />
            <wire x2="2464" y1="1344" y2="1344" x1="2384" />
            <wire x2="2464" y1="1344" y2="1584" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="800" y="1536" name="POST" orien="R180" />
        <instance x="912" y="1440" name="XLXI_3" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1344" y="1472" name="DBG" orien="R0" />
        <branch name="XLXN_64">
            <wire x2="1520" y1="1344" y2="1344" x1="1296" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1408" y1="1408" y2="1408" x1="1296" />
            <wire x2="1520" y1="1408" y2="1408" x1="1408" />
            <wire x2="2000" y1="1216" y2="1216" x1="1408" />
            <wire x2="1408" y1="1216" y2="1408" x1="1408" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="1488" y1="1152" y2="1472" x1="1488" />
            <wire x2="1520" y1="1472" y2="1472" x1="1488" />
            <wire x2="1760" y1="1152" y2="1152" x1="1488" />
            <wire x2="2000" y1="1152" y2="1152" x1="1760" />
            <wire x2="1760" y1="1040" y2="1040" x1="1520" />
            <wire x2="1760" y1="1040" y2="1152" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1344" name="PLL" orien="R0" />
        <instance x="1136" y="1072" name="XLXI_2" orien="R0">
        </instance>
        <instance x="352" y="1072" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="784" y="1040" name="GCK" orien="R0" />
        <iomarker fontsize="28" x="320" y="976" name="CLK" orien="R180" />
        <instance x="2432" y="1008" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_72">
            <wire x2="928" y1="976" y2="976" x1="736" />
            <wire x2="928" y1="976" y2="1040" x1="928" />
            <wire x2="1136" y1="1040" y2="1040" x1="928" />
            <wire x2="2432" y1="912" y2="912" x1="928" />
            <wire x2="928" y1="912" y2="976" x1="928" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="2400" y1="1152" y2="1152" x1="2384" />
            <wire x2="2432" y1="976" y2="976" x1="2400" />
            <wire x2="2400" y1="976" y2="1152" x1="2400" />
        </branch>
    </sheet>
</drawing>