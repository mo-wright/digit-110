<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    
    <pattern>
        <rule context="location[contains(., 'AU')]">
            <assert test="(@long &gt; 100) and (@lat &lt; 0)">
                If a location is in Australia, the Longitude must be over 100 and the Latitude must be below zero.
            </assert>
        </rule>
        
        <rule context="location[contains(., 'USA')]">
            <assert test="(@long &lt; 0) and (@lat &gt; 0)">
                If a location is in the USA, the Longitude must be negative and the Latitude must be positive.
            </assert>
        </rule>
    </pattern>
    
</schema>
