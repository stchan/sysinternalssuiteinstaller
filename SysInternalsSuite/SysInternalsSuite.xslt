<?xml version="1.0" encoding="utf-8"?>
<!-- 
	This stackoverflow answer provided the basis for this heat transform:
	https://stackoverflow.com/a/41232927
-->
<xsl:stylesheet
  version="1.0"
  xmlns="http://wixtoolset.org/schemas/v4/wxs"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:wix="http://wixtoolset.org/schemas/v4/wxs"
  xmlns:str="http://xsltsl.org/string"
  exclude-result-prefixes="wix str"
  >

	<xsl:output
	  encoding="utf-8"
	  method="xml"
	  version="1.0"
	  indent="yes"
    />

	<!-- Add shortcuts for the GUI applications -->
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\AccessEnum.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="AccessEnumexeShortcut"
			  Name="AccessEnum"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="AccessEnum.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="AccessEnumexeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\ADInsight64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="ADInsight64exeShortcut"
			  Name="ADInsight64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="ADInsight64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="ADInsight64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Autologon64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Autologon64exeShortcut"
			  Name="Autologon64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Autologon64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Autologon64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Autoruns64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Autoruns64exeShortcut"
			  Name="Autoruns64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Autoruns64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Autoruns64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Bginfo64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Bginfo64exeShortcut"
			  Name="Bginfo64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Bginfo64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Bginfo64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Cacheset64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Cacheset64exeShortcut"
			  Name="Cacheset64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Cacheset64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Cacheset64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\CPUSTRES64.EXE")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="CPUSTRES64EXEShortcut"
			  Name="CPUSTRES64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="CPUSTRES64.EXE"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="CPUSTRES64EXEShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\dbgview64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="dbgview64exeShortcut"
			  Name="dbgview64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="dbgview64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="dbgview64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Desktops64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Desktops64exeShortcut"
			  Name="Desktops64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Desktops64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Desktops64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\disk2vhd64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="disk2vhd64exeShortcut"
			  Name="disk2vhd64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="disk2vhd64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="disk2vhd64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Diskmon64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Diskmon64exeShortcut"
			  Name="Diskmon64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Diskmon64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Diskmon64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\DiskView64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="DiskView64exeShortcut"
			  Name="DiskView64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="DiskView64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="DiskView64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\LoadOrd64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="LoadOrd64exeShortcut"
			  Name="LoadOrd64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="LoadOrd64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="LoadOrd64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\notmyfault64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="notmyfault64exeShortcut"
			  Name="notmyfault64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="notmyfault64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="notmyfault64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\procexp64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="procexp64exeShortcut"
			  Name="procexp64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="procexp64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="procexp64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Procmon64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Procmon64exeShortcut"
			  Name="Procmon64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Procmon64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Procmon64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\RAMMap64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="RAMMap64exeShortcut"
			  Name="RAMMap64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="RAMMap64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="RAMMap64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\RDCMan.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="RDCManexeShortcut"
			  Name="RDCMan"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="RDCMan.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="RDCManexeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\ShareEnum64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="ShareEnum64exeShortcut"
			  Name="ShareEnum64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="ShareEnum64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="ShareEnum64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\ShellRunas.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="ShellRunasexeShortcut"
			  Name="ShellRunas"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="ShellRunas.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="ShellRunasexeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\tcpview64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="tcpview64exeShortcut"
			  Name="tcpview64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="tcpview64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="tcpview64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\vmmap64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="vmmap64exeShortcut"
			  Name="vmmap64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="vmmap64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="vmmap64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\Winobj64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="Winobj64exeShortcut"
			  Name="Winobj64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="Winobj64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="Winobj64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\ZoomIt64.exe")]'>
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<Shortcut
			  Id="ZoomIt64exeShortcut"
			  Name="ZoomIt64"
			  Directory="ProgramMenuDir"
			  Advertise="yes"
			  Icon="ZoomIt64.exe"
			  WorkingDirectory="INSTALLFOLDER">
			</Shortcut>
			<RemoveFolder
			  Id="ZoomIt64exeShortcut"
			  Directory="ProgramMenuDir"
			  On="uninstall" />
		</xsl:copy>
	</xsl:template>


	<!-- Add a never true condition for the .gitkeep file - we are doing this instead of removing it, because the ComponentRef element in the "SysInternalsComponents" ComponentGroup also has to be removed -->
	<xsl:template match='wix:Component[contains(wix:File/@Source, "$(var.SysInternalsSuiteHarvestFolder)\.gitkeep")]'>
		<xsl:copy>
			<xsl:attribute name="Condition">1 = 0</xsl:attribute>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>


	<!-- identity template -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match='/'>
		<xsl:comment>*** DO NOT EDIT: Generated by heat.exe; transformed by SqlDeveloper.xslt</xsl:comment>
		<xsl:apply-templates select="@*|node()"/>
	</xsl:template>

</xsl:stylesheet>
