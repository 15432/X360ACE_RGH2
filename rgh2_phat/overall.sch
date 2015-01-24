<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="POST" />
        <signal name="DBG" />
        <signal name="RST" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_70" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_79" />
        <signal name="BUT" />
        <signal name="CES" />
        <signal name="CED" />
        <signal name="SMC" />
        <signal name="XLXN_82" />
        <signal name="XLXN_84" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="DBG" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="Input" name="BUT" />
        <port polarity="Output" name="CES" />
        <port polarity="Output" name="CED" />
        <port polarity="Output" name="SMC" />
        <blockdef name="post_proc">
            <timestamp>2015-1-24T9:2:37</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2015-1-24T9:1:14</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
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
        <blockdef name="delayer">
            <timestamp>2014-12-19T11:8:37</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="dualnand">
            <timestamp>2015-1-24T9:32:35</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="XLXN_84" name="DBG" />
            <blockpin signalname="XLXN_79" name="is_slow" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="XLXN_72" name="CLK3" />
            <blockpin signalname="XLXN_73" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_79" name="callback" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_72" name="CLK3" />
        </block>
        <block symbolname="delayer" name="XLXI_13">
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="XLXN_74" name="CLK3" />
            <blockpin signalname="XLXN_73" name="de_slow" />
        </block>
        <block symbolname="divider_slow" name="XLXI_14">
            <blockpin signalname="XLXN_72" name="CLK" />
            <blockpin signalname="XLXN_74" name="CLK3" />
        </block>
        <block symbolname="dualnand" name="XLXI_15">
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="BUT" name="BUT" />
            <blockpin signalname="XLXN_74" name="CLK" />
            <blockpin signalname="CES" name="CES" />
            <blockpin signalname="CED" name="CED" />
            <blockpin signalname="SMC" name="SMC" />
            <blockpin signalname="XLXN_82" name="LED" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="XLXN_82" name="I0" />
            <blockpin signalname="XLXN_84" name="I1" />
            <blockpin signalname="DBG" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1440" y="1456" name="XLXI_10" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1024" y1="1424" y2="1424" x1="944" />
            <wire x2="1440" y1="1424" y2="1424" x1="1024" />
            <wire x2="960" y1="1216" y2="1392" x1="960" />
            <wire x2="1024" y1="1392" y2="1392" x1="960" />
            <wire x2="1024" y1="1392" y2="1424" x1="1024" />
            <wire x2="1040" y1="1216" y2="1216" x1="960" />
        </branch>
        <iomarker fontsize="28" x="944" y="1424" name="CLK" orien="R180" />
        <branch name="POST">
            <wire x2="1040" y1="1088" y2="1088" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1088" name="POST" orien="R180" />
        <branch name="RST">
            <wire x2="1456" y1="1360" y2="1360" x1="1360" />
            <wire x2="1360" y1="1360" y2="1616" x1="1360" />
            <wire x2="1600" y1="1616" y2="1616" x1="1360" />
            <wire x2="1440" y1="1216" y2="1216" x1="1424" />
            <wire x2="1456" y1="1216" y2="1216" x1="1440" />
            <wire x2="1536" y1="1216" y2="1216" x1="1456" />
            <wire x2="1456" y1="1216" y2="1360" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1088" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2496" y1="1152" y2="1152" x1="2480" />
            <wire x2="2512" y1="1152" y2="1152" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1152" name="SDA" orien="R0" />
        <instance x="1600" y="1184" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_70">
            <wire x2="1600" y1="1088" y2="1088" x1="1424" />
        </branch>
        <instance x="1936" y="1456" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_74">
            <wire x2="1600" y1="1744" y2="1744" x1="1536" />
            <wire x2="1536" y1="1744" y2="1856" x1="1536" />
            <wire x2="2672" y1="1856" y2="1856" x1="1536" />
            <wire x2="1584" y1="976" y2="1152" x1="1584" />
            <wire x2="1600" y1="1152" y2="1152" x1="1584" />
            <wire x2="2672" y1="976" y2="976" x1="1584" />
            <wire x2="2672" y1="976" y2="1424" x1="2672" />
            <wire x2="2672" y1="1424" y2="1856" x1="2672" />
            <wire x2="2672" y1="1424" y2="1424" x1="2320" />
        </branch>
        <instance x="1040" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <branch name="SCL">
            <wire x2="2496" y1="1088" y2="1088" x1="2480" />
            <wire x2="2512" y1="1088" y2="1088" x1="2496" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="2000" y1="1088" y2="1088" x1="1984" />
            <wire x2="2032" y1="1088" y2="1088" x1="2000" />
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
        <instance x="2096" y="1184" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_79">
            <wire x2="1040" y1="1280" y2="1280" x1="976" />
            <wire x2="976" y1="1280" y2="1376" x1="976" />
            <wire x2="2560" y1="1376" y2="1376" x1="976" />
            <wire x2="2560" y1="1216" y2="1216" x1="2480" />
            <wire x2="2560" y1="1216" y2="1376" x1="2560" />
        </branch>
        <instance x="1600" y="1776" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1536" y="1216" name="RST" orien="R0" />
        <branch name="BUT">
            <wire x2="1600" y1="1680" y2="1680" x1="1568" />
        </branch>
        <iomarker fontsize="28" x="1568" y="1680" name="BUT" orien="R180" />
        <branch name="CES">
            <wire x2="2016" y1="1616" y2="1616" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="1616" name="CES" orien="R0" />
        <branch name="CED">
            <wire x2="2016" y1="1680" y2="1680" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="1680" name="CED" orien="R0" />
        <branch name="SMC">
            <wire x2="2016" y1="1744" y2="1744" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2016" y="1744" name="SMC" orien="R0" />
        <instance x="2240" y="1760" name="XLXI_16" orien="R0" />
        <branch name="XLXN_82">
            <wire x2="2144" y1="1808" y2="1808" x1="1984" />
            <wire x2="2144" y1="1696" y2="1808" x1="2144" />
            <wire x2="2240" y1="1696" y2="1696" x1="2144" />
        </branch>
        <branch name="DBG">
            <wire x2="2528" y1="1664" y2="1664" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1664" name="DBG" orien="R0" />
        <branch name="XLXN_84">
            <wire x2="1488" y1="1152" y2="1152" x1="1424" />
            <wire x2="1488" y1="992" y2="1152" x1="1488" />
            <wire x2="2688" y1="992" y2="992" x1="1488" />
            <wire x2="2688" y1="992" y2="1520" x1="2688" />
            <wire x2="2688" y1="1520" y2="1520" x1="2176" />
            <wire x2="2176" y1="1520" y2="1632" x1="2176" />
            <wire x2="2240" y1="1632" y2="1632" x1="2176" />
        </branch>
    </sheet>
</drawing>