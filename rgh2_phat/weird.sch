<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="GCK" />
        <signal name="XLXN_3" />
        <signal name="XLXN_6" />
        <signal name="GCK_I" />
        <signal name="CLK" />
        <port polarity="BiDirectional" name="GCK" />
        <port polarity="Output" name="GCK_I" />
        <port polarity="Input" name="CLK" />
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuft">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="96" />
            <line x2="96" y1="-48" y2="-96" x1="96" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="64" y1="-64" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="bufg" name="XLXI_2">
            <blockpin signalname="GCK" name="I" />
            <blockpin signalname="GCK_I" name="O" />
        </block>
        <block symbolname="obuft" name="XLXI_3">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_3" name="T" />
            <blockpin signalname="GCK" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="1008" name="XLXI_3" orien="R0" />
        <branch name="GCK">
            <wire x2="1024" y1="976" y2="976" x1="976" />
            <wire x2="1104" y1="976" y2="976" x1="1024" />
            <wire x2="1024" y1="864" y2="976" x1="1024" />
        </branch>
        <instance x="1104" y="1008" name="XLXI_2" orien="R0" />
        <instance x="528" y="912" name="XLXI_4" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="592" y1="768" y2="784" x1="592" />
            <wire x2="752" y1="768" y2="768" x1="592" />
            <wire x2="752" y1="768" y2="912" x1="752" />
        </branch>
        <iomarker fontsize="28" x="1024" y="864" name="GCK" orien="R270" />
        <branch name="GCK_I">
            <wire x2="1360" y1="976" y2="976" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="976" name="GCK_I" orien="R0" />
        <branch name="CLK">
            <wire x2="480" y1="976" y2="976" x1="464" />
            <wire x2="496" y1="976" y2="976" x1="480" />
            <wire x2="720" y1="976" y2="976" x1="496" />
            <wire x2="752" y1="976" y2="976" x1="720" />
        </branch>
        <iomarker fontsize="28" x="464" y="976" name="CLK" orien="R180" />
    </sheet>
</drawing>