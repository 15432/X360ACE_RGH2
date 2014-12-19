<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xbr" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="CLK" />
        <signal name="POST" />
        <signal name="DBG" />
        <signal name="RST" />
        <signal name="SCL" />
        <signal name="SDA" />
        <signal name="XLXN_68" />
        <signal name="XLXN_70" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="POST" />
        <port polarity="Output" name="DBG" />
        <port polarity="BiDirectional" name="RST" />
        <port polarity="Output" name="SCL" />
        <port polarity="Output" name="SDA" />
        <blockdef name="post_proc">
            <timestamp>2014-12-19T11:8:51</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="slower">
            <timestamp>2014-12-19T11:8:58</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <block symbolname="post_proc" name="XLXI_7">
            <blockpin signalname="POST" name="POSTBIT" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_70" name="to_slow" />
            <blockpin signalname="DBG" name="DBG" />
            <blockpin signalname="RST" name="RST" />
        </block>
        <block symbolname="slower" name="XLXI_9">
            <blockpin signalname="XLXN_72" name="CLK3" />
            <blockpin signalname="XLXN_73" name="to_slow" />
            <blockpin signalname="SCL" name="SCL" />
            <blockpin signalname="SDA" name="SDA" />
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
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2096" y="1184" name="XLXI_9" orien="R0">
        </instance>
        <instance x="1440" y="1456" name="XLXI_10" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="1024" y1="1424" y2="1424" x1="944" />
            <wire x2="1440" y1="1424" y2="1424" x1="1024" />
            <wire x2="1024" y1="1216" y2="1424" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="944" y="1424" name="CLK" orien="R180" />
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
        <instance x="1600" y="1184" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_70">
            <wire x2="1600" y1="1088" y2="1088" x1="1408" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="1872" y1="1424" y2="1424" x1="1824" />
            <wire x2="1936" y1="1424" y2="1424" x1="1872" />
            <wire x2="1872" y1="1328" y2="1424" x1="1872" />
            <wire x2="2080" y1="1328" y2="1328" x1="1872" />
            <wire x2="2080" y1="1088" y2="1328" x1="2080" />
            <wire x2="2096" y1="1088" y2="1088" x1="2080" />
        </branch>
        <instance x="1936" y="1456" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_73">
            <wire x2="2032" y1="1088" y2="1088" x1="1984" />
            <wire x2="2032" y1="1088" y2="1152" x1="2032" />
            <wire x2="2096" y1="1152" y2="1152" x1="2032" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="1584" y1="976" y2="1152" x1="1584" />
            <wire x2="1600" y1="1152" y2="1152" x1="1584" />
            <wire x2="2672" y1="976" y2="976" x1="1584" />
            <wire x2="2672" y1="976" y2="1424" x1="2672" />
            <wire x2="2672" y1="1424" y2="1424" x1="2320" />
        </branch>
    </sheet>
</drawing>