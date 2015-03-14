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
        <signal name="XLXN_4" />
        <signal name="XLXN_6" />
        <signal name="IN_300" />
        <signal name="OUT_200" />
        <port polarity="Input" name="IN_300" />
        <port polarity="Output" name="OUT_200" />
        <blockdef name="div3">
            <timestamp>2015-3-2T0:15:13</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ld">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="pullup">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-48" x1="48" />
            <line x2="48" y1="-72" y2="-56" x1="80" />
            <line x2="80" y1="-88" y2="-72" x1="48" />
            <line x2="48" y1="-104" y2="-88" x1="80" />
            <line x2="80" y1="-108" y2="-104" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="96" />
        </blockdef>
        <block symbolname="div3" name="XLXI_1">
            <blockpin signalname="IN_300" name="CLK" />
            <blockpin signalname="XLXN_2" name="CLK3" />
        </block>
        <block symbolname="ld" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="D" />
            <blockpin signalname="XLXN_4" name="G" />
            <blockpin signalname="XLXN_1" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="OUT_200" name="O" />
        </block>
        <block symbolname="pullup" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="ld" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="XLXN_4" name="G" />
            <blockpin signalname="XLXN_6" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2224" y="1104" name="XLXI_3" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2208" y1="1216" y2="1216" x1="1952" />
            <wire x2="2224" y1="1040" y2="1040" x1="2208" />
            <wire x2="2208" y1="1040" y2="1216" x1="2208" />
        </branch>
        <branch name="IN_300">
            <wire x2="544" y1="1008" y2="1008" x1="528" />
            <wire x2="560" y1="976" y2="976" x1="544" />
            <wire x2="544" y1="976" y2="1008" x1="544" />
        </branch>
        <iomarker fontsize="28" x="528" y="1008" name="IN_300" orien="R180" />
        <branch name="OUT_200">
            <wire x2="2512" y1="1008" y2="1008" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2512" y="1008" name="OUT_200" orien="R0" />
        <instance x="1088" y="1504" name="XLXI_2" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1104" y1="976" y2="976" x1="944" />
            <wire x2="1104" y1="976" y2="1120" x1="1104" />
            <wire x2="2224" y1="976" y2="976" x1="1104" />
            <wire x2="1008" y1="1120" y2="1248" x1="1008" />
            <wire x2="1088" y1="1248" y2="1248" x1="1008" />
            <wire x2="1104" y1="1120" y2="1120" x1="1008" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="432" y1="1408" y2="1472" x1="432" />
            <wire x2="592" y1="1472" y2="1472" x1="432" />
            <wire x2="1536" y1="1472" y2="1472" x1="592" />
            <wire x2="1088" y1="1376" y2="1376" x1="592" />
            <wire x2="592" y1="1376" y2="1472" x1="592" />
            <wire x2="1536" y1="1344" y2="1472" x1="1536" />
            <wire x2="1568" y1="1344" y2="1344" x1="1536" />
        </branch>
        <instance x="1568" y="1472" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1488" y1="1248" y2="1248" x1="1472" />
            <wire x2="1568" y1="1216" y2="1216" x1="1488" />
            <wire x2="1488" y1="1216" y2="1248" x1="1488" />
        </branch>
        <instance x="368" y="1408" name="XLXI_4" orien="R0" />
        <instance x="560" y="1008" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>