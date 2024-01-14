<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="tei:pb">
            <sch:assert test="not(exists(parent::tei:div[@type = 'page']))">Element pb must be positioned outside div @type = page.</sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="tei:div">
            <sch:assert test="exists(@type)">
                Attribute @type missing on div.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="tei:div">
            <sch:assert test="(@type = 'transcription') or (@type = 'page') or (@type = 'column') or (@type = 'liturgical-unit')">
                The value of @type on div must be one of 'transcription', 'page', 'column' or 'liturgical-unit'.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
    <sch:pattern>
        <sch:rule context="tei:hi">
            <sch:assert test="(@rend = 'red-ink') or (@rend = 'black-ink') or (@rend = 'red-ink-bold') or (@rend = 'black-ink-bold') or(@rend = 'minuscule-letters') or (@rend = 'red-ink-uppercase') or (@rend = 'black-ink-minuscule-letters') or (@rend = 'red-ink-minuscule-letters')">
                The value of attribute @rend on element hi must be one of 'red-ink', 'red-ink-bold', 'black-ink', 'black-ink-bold', 'red-ink-uppercase', 'black-ink-minuscule-letters', 'red-ink-minuscule-letters' or 'minuscule-letters'.
            </sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>