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
        <signal name="GCK" />
        <signal name="XLXN_217" />
        <signal name="XLXN_218" />
        <signal name="XLXN_219" />
        <signal name="XLXN_220" />
        <signal name="XLXN_221" />
        <signal name="XLXN_222" />
        <signal name="CES" />
        <signal name="CED" />
        <signal name="SMC" />
        <signal name="BUT" />
        <signal name="XLXN_227" />
        <signal name="XLXN_228" />
        <signal name="DBG" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_232" />
        <signal name="XLXN_233" />
        <signal name="XLXN_237" />
        <signal name="RST" />
        <signal name="CIN" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="POST" />
        <port polarity="BiDirectional" name="GCK" />
        <port polarity="Output" name="CES" />
        <port polarity="Output" name="CED" />
        <port polarity="Output" name="SMC" />
        <port polarity="Input" name="BUT" />
        <port polarity="Output" name="DBG" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Input" name="CIN" />
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
            <timestamp>2015-3-10T22:7:47</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="dualnand">
            <timestamp>2015-4-19T21:7:19</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-256" height="320" />
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
        <blockdef name="post_proc">
            <timestamp>2015-3-14T0:6:53</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="delayer">
            <timestamp>2015-3-14T0:7:0</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="weird" name="XLXI_39">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_232" name="GCK_I" />
            <blockpin signalname="GCK" name="GCK" />
        </block>
        <block symbolname="post_proc" name="XLXI_40">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="XLXN_232" name="CLK" />
            <blockpin signalname="XLXN_219" name="to_slow" />
            <blockpin signalname="XLXN_220" name="to_do" />
            <blockpin signalname="XLXN_228" name="DBG" />
            <blockpin signalname="RST" name="RST" />
        </block>
        <block symbolname="delayer" name="XLXI_41">
            <blockpin signalname="XLXN_219" name="in_slow" />
            <blockpin signalname="XLXN_220" name="in_do" />
            <blockpin signalname="XLXN_237" name="CLK3" />
            <blockpin signalname="XLXN_217" name="out_slow" />
            <blockpin signalname="XLXN_218" name="out_do" />
        </block>
        <block symbolname="slower" name="XLXI_42">
            <blockpin signalname="XLXN_233" name="CLK3" />
            <blockpin signalname="XLXN_217" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
            <blockpin signalname="XLXN_218" name="to_do" />
        </block>
        <block symbolname="dualnand" name="XLXI_43">
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="BUT" name="BUT" />
            <blockpin signalname="XLXN_237" name="CLK" />
            <blockpin signalname="CES" name="CES" />
            <blockpin signalname="CED" name="CED" />
            <blockpin signalname="SMC" name="SMC" />
            <blockpin signalname="XLXN_227" name="LED" />
            <blockpin signalname="CIN" name="CIN" />
        </block>
        <block symbolname="divider_slow" name="XLXI_45">
            <blockpin signalname="XLXN_232" name="CLK" />
            <blockpin signalname="XLXN_233" name="CLK3" />
        </block>
        <block symbolname="divider_slow" name="XLXI_46">
            <blockpin signalname="XLXN_233" name="CLK" />
            <blockpin signalname="XLXN_237" name="CLK3" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="XLXN_228" name="I0" />
            <blockpin signalname="XLXN_227" name="I1" />
            <blockpin signalname="DBG" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="352" y="1488" name="XLXI_39" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="352" y1="1392" y2="1392" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1392" name="CLK" orien="R180" />
        <instance x="832" y="1424" name="XLXI_40" orien="R0">
        </instance>
        <branch name="POST">
            <wire x2="832" y1="1200" y2="1200" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="1200" name="POST" orien="R180" />
        <branch name="GCK">
            <wire x2="768" y1="1456" y2="1456" x1="736" />
        </branch>
        <iomarker fontsize="28" x="768" y="1456" name="GCK" orien="R0" />
        <instance x="1376" y="1360" name="XLXI_41" orien="R0">
        </instance>
        <instance x="2032" y="1296" name="XLXI_42" orien="R0">
        </instance>
        <instance x="1376" y="992" name="XLXI_43" orien="R0">
        </instance>
        <branch name="XLXN_217">
            <wire x2="1888" y1="1200" y2="1200" x1="1760" />
            <wire x2="1888" y1="1200" y2="1264" x1="1888" />
            <wire x2="2032" y1="1264" y2="1264" x1="1888" />
        </branch>
        <branch name="XLXN_218">
            <wire x2="2032" y1="1328" y2="1328" x1="1760" />
        </branch>
        <branch name="XLXN_219">
            <wire x2="1376" y1="1200" y2="1200" x1="1216" />
        </branch>
        <branch name="XLXN_220">
            <wire x2="1376" y1="1264" y2="1264" x1="1216" />
        </branch>
        <branch name="CES">
            <wire x2="1872" y1="768" y2="768" x1="1760" />
            <wire x2="1872" y1="768" y2="832" x1="1872" />
            <wire x2="2000" y1="832" y2="832" x1="1872" />
            <wire x2="2384" y1="832" y2="832" x1="2000" />
            <wire x2="2416" y1="768" y2="768" x1="2384" />
            <wire x2="2384" y1="768" y2="832" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="2416" y="768" name="CES" orien="R0" />
        <iomarker fontsize="28" x="2416" y="896" name="CED" orien="R0" />
        <branch name="SMC">
            <wire x2="1792" y1="896" y2="896" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="1792" y="896" name="SMC" orien="R0" />
        <branch name="BUT">
            <wire x2="1376" y1="864" y2="864" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="864" name="BUT" orien="R180" />
        <branch name="DBG">
            <wire x2="2080" y1="1040" y2="1040" x1="2048" />
        </branch>
        <branch name="SCL">
            <wire x2="2448" y1="1200" y2="1200" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1200" name="SCL" orien="R0" />
        <branch name="SDA">
            <wire x2="2448" y1="1264" y2="1264" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1264" name="SDA" orien="R0" />
        <branch name="XLXN_233">
            <wire x2="800" y1="1024" y2="1024" x1="784" />
            <wire x2="800" y1="1024" y2="1120" x1="800" />
            <wire x2="1968" y1="1120" y2="1120" x1="800" />
            <wire x2="1968" y1="1120" y2="1200" x1="1968" />
            <wire x2="2032" y1="1200" y2="1200" x1="1968" />
            <wire x2="832" y1="1024" y2="1024" x1="800" />
        </branch>
        <branch name="XLXN_237">
            <wire x2="1248" y1="1024" y2="1024" x1="1216" />
            <wire x2="1248" y1="1024" y2="1328" x1="1248" />
            <wire x2="1376" y1="1328" y2="1328" x1="1248" />
            <wire x2="1248" y1="960" y2="1024" x1="1248" />
            <wire x2="1376" y1="960" y2="960" x1="1248" />
        </branch>
        <branch name="RST">
            <wire x2="1360" y1="1392" y2="1392" x1="1216" />
            <wire x2="1392" y1="1392" y2="1392" x1="1360" />
            <wire x2="1360" y1="768" y2="1392" x1="1360" />
            <wire x2="1376" y1="768" y2="768" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1392" name="RST" orien="R0" />
        <instance x="1792" y="1136" name="XLXI_47" orien="R0" />
        <branch name="XLXN_227">
            <wire x2="1776" y1="960" y2="960" x1="1760" />
            <wire x2="1776" y1="960" y2="1008" x1="1776" />
            <wire x2="1792" y1="1008" y2="1008" x1="1776" />
        </branch>
        <branch name="XLXN_228">
            <wire x2="1232" y1="1328" y2="1328" x1="1216" />
            <wire x2="1792" y1="1072" y2="1072" x1="1232" />
            <wire x2="1232" y1="1072" y2="1328" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1040" name="DBG" orien="R0" />
        <instance x="400" y="1056" name="XLXI_45" orien="R0">
        </instance>
        <branch name="XLXN_232">
            <wire x2="400" y1="1024" y2="1024" x1="368" />
            <wire x2="368" y1="1024" y2="1264" x1="368" />
            <wire x2="800" y1="1264" y2="1264" x1="368" />
            <wire x2="800" y1="1264" y2="1392" x1="800" />
            <wire x2="832" y1="1392" y2="1392" x1="800" />
            <wire x2="800" y1="1392" y2="1392" x1="736" />
        </branch>
        <instance x="832" y="1056" name="XLXI_46" orien="R0">
        </instance>
        <branch name="CIN">
            <wire x2="1120" y1="800" y2="912" x1="1120" />
            <wire x2="1328" y1="912" y2="912" x1="1120" />
            <wire x2="1328" y1="912" y2="1024" x1="1328" />
            <wire x2="1376" y1="1024" y2="1024" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1120" y="800" name="CIN" orien="R270" />
        <branch name="CED">
            <wire x2="1760" y1="832" y2="864" x1="1760" />
            <wire x2="1920" y1="864" y2="864" x1="1760" />
            <wire x2="1920" y1="864" y2="896" x1="1920" />
            <wire x2="2000" y1="896" y2="896" x1="1920" />
            <wire x2="2384" y1="896" y2="896" x1="2000" />
            <wire x2="2400" y1="896" y2="896" x1="2384" />
            <wire x2="2416" y1="896" y2="896" x1="2400" />
        </branch>
    </sheet>
</drawing>