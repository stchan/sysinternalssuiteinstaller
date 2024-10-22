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
