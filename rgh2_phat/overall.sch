<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="POST" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_160" />
        <signal name="XLXN_172" />
        <signal name="XLXN_143" />
        <signal name="XLXN_174" />
        <signal name="XLXN_175" />
        <signal name="XLXN_176" />
        <signal name="XLXN_178" />
        <signal name="RST" />
        <signal name="XLXN_184" />
        <signal name="XLXN_185" />
        <signal name="XLXN_187" />
        <signal name="GCK" />
        <signal name="XLXN_190" />
        <signal name="XLXN_191" />
        <signal name="XLXN_192" />
        <signal name="XLXN_193" />
        <signal name="XLXN_194" />
        <signal name="XLXN_198" />
        <signal name="XLXN_199" />
        <signal name="XLXN_200" />
        <signal name="CLK" />
        <signal name="XLXN_202" />
        <signal name="XLXN_203" />
        <signal name="BUT" />
        <signal name="CES" />
        <signal name="CED" />
        <signal name="SMC" />
        <signal name="XLXN_208" />
        <signal name="XLXN_209" />
        <signal name="DBG" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="BiDirectional" name="GCK" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="BUT" />
        <port polarity="Output" name="CES" />
        <port polarity="Output" name="CED" />
        <port polarity="Output" name="SMC" />
        <port polarity="Output" name="DBG" />
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
        <blockdef name="delayer">
            <timestamp>2015-3-10T22:7:47</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <blockdef name="weird">
            <timestamp>2015-3-10T22:7:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="dualnand">
            <timestamp>2015-3-10T22:7:47</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
            <blockpin signalname="XLXN_200" name="CLK" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="XLXN_191" name="to_slow" />
            <blockpin signalname="XLXN_209" name="DBG" />
            <blockpin signalname="XLXN_192" name="to_do" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="XLXN_143" name="CLK3" />
            <blockpin signalname="XLXN_193" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_194" name="to_do" />
        </block>
        <block symbolname="divider_slow" name="XLXI_10">
            <blockpin signalname="XLXN_200" name="CLK" />
            <blockpin signalname="XLXN_143" name="CLK3" />
        </block>
        <block symbolname="divider_slow" name="XLXI_32">
            <blockpin signalname="XLXN_143" name="CLK" />
            <blockpin signalname="XLXN_190" name="CLK3" />
        </block>
        <block symbolname="delayer" name="XLXI_33">
            <blockpin signalname="XLXN_190" name="CLK3" />
            <blockpin signalname="XLXN_191" name="in_slow" />
            <blockpin signalname="XLXN_192" name="in_do" />
            <blockpin signalname="XLXN_193" name="out_slow" />
            <blockpin signalname="XLXN_194" name="out_do" />
        </block>
        <block symbolname="weird" name="XLXI_34">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_200" name="GCK_I" />
            <blockpin signalname="GCK" name="GCK" />
        </block>
        <block symbolname="dualnand" name="XLXI_35">
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="BUT" name="BUT" />
            <blockpin signalname="XLXN_190" name="CLK" />
            <blockpin signalname="CES" name="CES" />
            <blockpin signalname="CED" name="CED" />
            <blockpin signalname="SMC" name="SMC" />
            <blockpin signalname="XLXN_208" name="LED" />
        </block>
        <block symbolname="or2" name="XLXI_37">
            <blockpin signalname="XLXN_208" name="I0" />
            <blockpin signalname="XLXN_209" name="I1" />
            <blockpin signalname="DBG" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="POST">
            <wire x2="896" y1="1088" y2="1088" x1="832" />
        </branch>
        <branch name="SCL">
            <wire x2="2496" y1="1104" y2="1104" x1="2272" />
            <wire x2="2512" y1="1088" y2="1088" x1="2496" />
            <wire x2="2496" y1="1088" y2="1104" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1088" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2496" y1="1168" y2="1168" x1="2272" />
            <wire x2="2512" y1="1152" y2="1152" x1="2496" />
            <wire x2="2496" y1="1152" y2="1168" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1152" name="SDA" orien="R0" />
        <iomarker fontsize="28" x="832" y="1088" name="POST" orien="R180" />
        <instance x="896" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1888" y="1200" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1024" y="1488" name="XLXI_10" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2656" y="1376" name="DBG" orien="R0" />
        <branch name="XLXN_143">
            <wire x2="1024" y1="1664" y2="1664" x1="960" />
            <wire x2="960" y1="1664" y2="1776" x1="960" />
            <wire x2="1632" y1="1776" y2="1776" x1="960" />
            <wire x2="1632" y1="1456" y2="1456" x1="1408" />
            <wire x2="1632" y1="1456" y2="1776" x1="1632" />
            <wire x2="1888" y1="1104" y2="1104" x1="1632" />
            <wire x2="1632" y1="1104" y2="1456" x1="1632" />
        </branch>
        <branch name="RST">
            <wire x2="1296" y1="1216" y2="1216" x1="1280" />
            <wire x2="1312" y1="1216" y2="1216" x1="1296" />
            <wire x2="1312" y1="1216" y2="1248" x1="1312" />
            <wire x2="1344" y1="1248" y2="1248" x1="1312" />
            <wire x2="1312" y1="1248" y2="1360" x1="1312" />
            <wire x2="1472" y1="1360" y2="1360" x1="1312" />
            <wire x2="1472" y1="1360" y2="1520" x1="1472" />
            <wire x2="1888" y1="1520" y2="1520" x1="1472" />
        </branch>
        <branch name="GCK">
            <wire x2="752" y1="1328" y2="1328" x1="720" />
        </branch>
        <branch name="XLXN_192">
            <wire x2="1296" y1="1280" y2="1280" x1="1280" />
            <wire x2="1296" y1="1120" y2="1280" x1="1296" />
            <wire x2="1360" y1="1120" y2="1120" x1="1296" />
            <wire x2="1360" y1="1008" y2="1120" x1="1360" />
            <wire x2="1424" y1="1008" y2="1008" x1="1360" />
        </branch>
        <branch name="XLXN_193">
            <wire x2="1872" y1="944" y2="944" x1="1808" />
            <wire x2="1872" y1="944" y2="1168" x1="1872" />
            <wire x2="1888" y1="1168" y2="1168" x1="1872" />
        </branch>
        <instance x="1424" y="912" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_190">
            <wire x2="1424" y1="880" y2="880" x1="1408" />
            <wire x2="1408" y1="880" y2="1104" x1="1408" />
            <wire x2="1504" y1="1104" y2="1104" x1="1408" />
            <wire x2="1504" y1="1104" y2="1664" x1="1504" />
            <wire x2="1504" y1="1664" y2="1712" x1="1504" />
            <wire x2="1888" y1="1712" y2="1712" x1="1504" />
            <wire x2="1504" y1="1664" y2="1664" x1="1408" />
        </branch>
        <branch name="XLXN_191">
            <wire x2="1296" y1="1088" y2="1088" x1="1280" />
            <wire x2="1424" y1="944" y2="944" x1="1296" />
            <wire x2="1296" y1="944" y2="1088" x1="1296" />
        </branch>
        <branch name="XLXN_194">
            <wire x2="1856" y1="1008" y2="1008" x1="1808" />
            <wire x2="1856" y1="1008" y2="1088" x1="1856" />
            <wire x2="1856" y1="1088" y2="1088" x1="1808" />
            <wire x2="1808" y1="1088" y2="1232" x1="1808" />
            <wire x2="1888" y1="1232" y2="1232" x1="1808" />
        </branch>
        <instance x="1024" y="1696" name="XLXI_32" orien="R0">
        </instance>
        <branch name="XLXN_200">
            <wire x2="816" y1="1264" y2="1264" x1="720" />
            <wire x2="880" y1="1264" y2="1264" x1="816" />
            <wire x2="880" y1="1264" y2="1456" x1="880" />
            <wire x2="1024" y1="1456" y2="1456" x1="880" />
            <wire x2="816" y1="1216" y2="1264" x1="816" />
            <wire x2="896" y1="1216" y2="1216" x1="816" />
        </branch>
        <iomarker fontsize="28" x="368" y="1104" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="272" y1="1168" y2="1264" x1="272" />
            <wire x2="336" y1="1264" y2="1264" x1="272" />
            <wire x2="384" y1="1168" y2="1168" x1="272" />
            <wire x2="384" y1="1104" y2="1104" x1="368" />
            <wire x2="384" y1="1104" y2="1168" x1="384" />
        </branch>
        <instance x="336" y="1360" name="XLXI_34" orien="R0">
        </instance>
        <iomarker fontsize="28" x="752" y="1328" name="GCK" orien="R0" />
        <instance x="1888" y="1744" name="XLXI_35" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1344" y="1248" name="RST" orien="R0" />
        <branch name="BUT">
            <wire x2="1888" y1="1616" y2="1616" x1="1856" />
        </branch>
        <iomarker fontsize="28" x="1856" y="1616" name="BUT" orien="R180" />
        <branch name="CES">
            <wire x2="2304" y1="1520" y2="1520" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1520" name="CES" orien="R0" />
        <branch name="CED">
            <wire x2="2304" y1="1584" y2="1584" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1584" name="CED" orien="R0" />
        <branch name="SMC">
            <wire x2="2304" y1="1648" y2="1648" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1648" name="SMC" orien="R0" />
        <instance x="2192" y="1440" name="XLXI_37" orien="R0" />
        <branch name="XLXN_208">
            <wire x2="2192" y1="1376" y2="1376" x1="2128" />
            <wire x2="2128" y1="1376" y2="1456" x1="2128" />
            <wire x2="2288" y1="1456" y2="1456" x1="2128" />
            <wire x2="2288" y1="1456" y2="1712" x1="2288" />
            <wire x2="2288" y1="1712" y2="1712" x1="2272" />
        </branch>
        <branch name="XLXN_209">
            <wire x2="1728" y1="1152" y2="1152" x1="1280" />
            <wire x2="1728" y1="1152" y2="1312" x1="1728" />
            <wire x2="2192" y1="1312" y2="1312" x1="1728" />
        </branch>
        <branch name="DBG">
            <wire x2="2544" y1="1344" y2="1344" x1="2448" />
            <wire x2="2544" y1="1344" y2="1376" x1="2544" />
            <wire x2="2656" y1="1376" y2="1376" x1="2544" />
        </branch>
    </sheet>
</drawing>