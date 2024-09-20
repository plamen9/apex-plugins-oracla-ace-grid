prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.3'
,p_default_workspace_id=>2447904953486891346
,p_default_application_id=>18140
,p_default_id_offset=>0
,p_default_owner=>'GAMMADEV'
);
end;
/
 
prompt APPLICATION 18140 - Oracle ACE
--
-- Application Export:
--   Application:     18140
--   Name:            Oracle ACE
--   Date and Time:   14:02 Thursday September 19, 2024
--   Exported By:     PMUSHKOV@YAHOO.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 35031979464957099436
--   Manifest End
--   Version:         24.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/oracle_ace_grid_tc
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(35031979464957099436)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'ORACLE_ACE_GRID_TC'
,p_display_name=>'Oracle ACE grid - TC'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_javascript_file_urls=>'#PLUGIN_FILES#js/plugin#MIN#.js'
,p_css_file_urls=>'#PLUGIN_FILES#css/style#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if ?HEADER_IMAGE/}  ',
'<div style="border-radius:#RADIUS#"> ',
'    <a href="https://ace.oracle.com">',
'        <img src="#HEADER_IMAGE#" alt="#HEADER_TEXT#">',
'    </a>',
'</div>    ',
'',
'<script type="text/javascript">',
'    document.addEventListener("DOMContentLoaded", function() {',
'        var l_size = "#SIZE#";  // Replace #SIZE# with the Size custom attribute',
'        var l_radius = "#RADIUS#";  // Replace #RADIUS# with the Radius custom attribute',
'',
'        // Call the JS function after the document is fully ready',
'        setGridSettings(l_size, l_radius);',
'    });',
'</script>',
'',
'{endif/}',
'',
'{if ?GRID_IMAGE/} ',
'<div style="border-radius:#RADIUS#"> ',
'    <a href="#GRID_LINK#">',
'        <img src="#GRID_IMAGE#" alt="#GRID_TEXT#">',
'    </a>',
'</div>',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="grid-container">',
'  #APEX$ROWS#',
'</div>'))
,p_report_row_template=>'<div class="grid-item {if ?HEADER_IMAGE/}grid-item-header{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</div>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>15566444789103
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>19
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(35088319475019492399)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_title=>'Display Options'
,p_display_sequence=>1
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35031979774519099464)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'GRID_IMAGE'
,p_prompt=>'Grid Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35031980179919099464)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'GRID_TEXT'
,p_prompt=>'Grid Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35031980543482099464)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'HEADER_IMAGE'
,p_prompt=>'Header Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35031980927499099464)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'HEADER_TEXT'
,p_prompt=>'Header Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35056930315071465781)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'GRID_LINK'
,p_prompt=>'Grid Link'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35082395616237114321)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'100px'
,p_demo_value=>'100px'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(35088319475019492399)
,p_examples=>'100px'
,p_help_text=>'Size (width and height) of the grid icons.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35082175833881373780)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>10
,p_display_value=>'20px'
,p_return_value=>'20px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35082177810496374800)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>20
,p_display_value=>'40px'
,p_return_value=>'40px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35082420272808119125)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>30
,p_display_value=>'60px'
,p_return_value=>'60px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35082999897239376462)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>40
,p_display_value=>'80px'
,p_return_value=>'80px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35083164607752377495)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>50
,p_display_value=>'100px'
,p_return_value=>'100px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35082430085555121742)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>60
,p_display_value=>'120px'
,p_return_value=>'120px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35082435064647122991)
,p_plugin_attribute_id=>wwv_flow_imp.id(35082395616237114321)
,p_display_sequence=>70
,p_display_value=>'140px'
,p_return_value=>'140px'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(35087397665694472887)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'RADIUS'
,p_prompt=>'Radius'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'0px'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(35088319475019492399)
,p_help_text=>'Border radius of the grid icons.'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35087605208852473748)
,p_plugin_attribute_id=>wwv_flow_imp.id(35087397665694472887)
,p_display_sequence=>10
,p_display_value=>'0px'
,p_return_value=>'0px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35087465831739218936)
,p_plugin_attribute_id=>wwv_flow_imp.id(35087397665694472887)
,p_display_sequence=>20
,p_display_value=>'6px'
,p_return_value=>'6px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35087679716936476124)
,p_plugin_attribute_id=>wwv_flow_imp.id(35087397665694472887)
,p_display_sequence=>30
,p_display_value=>'10px'
,p_return_value=>'10px'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(35087683438507477260)
,p_plugin_attribute_id=>wwv_flow_imp.id(35087397665694472887)
,p_display_sequence=>40
,p_display_value=>'16px'
,p_return_value=>'16px'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '5B726567696F6E2D69643D226163655F726567696F6E225D207B0A202020646973706C61793A20666C65783B0A2020206A7573746966792D636F6E74656E743A20666C65782D73746172743B0A7D0A0A2E6D61696E2D636F6E7461696E6572207B0A2020';
wwv_flow_imp.g_varchar2_table(2) := '20646973706C61793A20666C65783B0A202020666C65782D646972656374696F6E3A20726F773B0A202020616C69676E2D6974656D733A20666C65782D73746172743B0A20202077696474683A203930253B0A2020206D61782D77696474683A20313230';
wwv_flow_imp.g_varchar2_table(3) := '3070783B0A7D0A2E686561646572207B0A202020666C65783A20302030206175746F3B0A2020206D617267696E2D72696768743A20313070783B0A7D0A2E68656164657220696D67207B0A20202077696474683A206175746F3B0A202020686569676874';
wwv_flow_imp.g_varchar2_table(4) := '3A206175746F3B0A2020206D61782D77696474683A2032313570783B0A7D0A2E677269642D636F6E7461696E6572207B0A202020646973706C61793A20677269643B0A202020677269642D74656D706C6174652D636F6C756D6E733A2072657065617428';
wwv_flow_imp.g_varchar2_table(5) := '6175746F2D66696C6C2C206D696E6D61782831303070782C2031667229293B0A2020206761703A20313070783B0A202020666C65783A20312031206175746F3B0A7D0A2E677269642D6974656D207B0A202020706F736974696F6E3A2072656C61746976';
wwv_flow_imp.g_varchar2_table(6) := '653B0A2020206F766572666C6F773A2068696464656E3B0A2020206173706563742D726174696F3A20313B0A7D0A0A2E677269642D6974656D2E677269642D6974656D2D686561646572207B2020200A20202020677269642D636F6C756D6E2D73746172';
wwv_flow_imp.g_varchar2_table(7) := '743A20313B0A20202020677269642D636F6C756D6E2D656E643A20333B0A20202020677269642D726F772D73746172743A20313B0A20202020677269642D726F772D656E643A20333B0A2020202077696474683A206669742D636F6E74656E743B0A2020';
wwv_flow_imp.g_varchar2_table(8) := '2020616C69676E2D636F6E74656E743A2063656E7465723B0A7D0A0A2E677269642D6974656D20696D67207B0A20202077696474683A20313030253B0A2020206865696768743A206175746F3B0A202020646973706C61793A20626C6F636B3B0A7D0A0A';
wwv_flow_imp.g_varchar2_table(9) := '2E677269642D6974656D2061207B0A202020646973706C61793A20626C6F636B3B0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(35060363610513549930)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_file_name=>'css/style.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '5B726567696F6E2D69643D6163655F726567696F6E5D7B646973706C61793A666C65783B6A7573746966792D636F6E74656E743A666C65782D73746172747D2E6D61696E2D636F6E7461696E65727B646973706C61793A666C65783B666C65782D646972';
wwv_flow_imp.g_varchar2_table(2) := '656374696F6E3A726F773B616C69676E2D6974656D733A666C65782D73746172743B77696474683A3930253B6D61782D77696474683A3132303070787D2E6865616465727B666C65783A302030206175746F3B6D617267696E2D72696768743A31307078';
wwv_flow_imp.g_varchar2_table(3) := '7D2E68656164657220696D677B77696474683A6175746F3B6865696768743A6175746F3B6D61782D77696474683A32313570787D2E677269642D636F6E7461696E65727B646973706C61793A677269643B677269642D74656D706C6174652D636F6C756D';
wwv_flow_imp.g_varchar2_table(4) := '6E733A726570656174286175746F2D66696C6C2C6D696E6D61782831303070782C31667229293B6761703A313070783B666C65783A312031206175746F7D2E677269642D6974656D7B706F736974696F6E3A72656C61746976653B6F766572666C6F773A';
wwv_flow_imp.g_varchar2_table(5) := '68696464656E3B6173706563742D726174696F3A317D2E677269642D6974656D2E677269642D6974656D2D6865616465727B677269642D636F6C756D6E2D73746172743A313B677269642D636F6C756D6E2D656E643A333B677269642D726F772D737461';
wwv_flow_imp.g_varchar2_table(6) := '72743A313B677269642D726F772D656E643A333B77696474683A6669742D636F6E74656E743B616C69676E2D636F6E74656E743A63656E7465727D2E677269642D6974656D20696D677B77696474683A313030253B6865696768743A6175746F3B646973';
wwv_flow_imp.g_varchar2_table(7) := '706C61793A626C6F636B7D2E677269642D6974656D20617B646973706C61793A626C6F636B7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(35061551582688565136)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_file_name=>'css/style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E207365744772696453657474696E677320286C5F73697A652C206C5F72616469757329207B0A0A202020202F2F2053656C656374206469760A20202020636F6E737420686561646572203D20646F63756D656E742E71756572795365';
wwv_flow_imp.g_varchar2_table(2) := '6C6563746F7228272E677269642D6974656D2E677269642D6974656D2D68656164657220696D6727293B0A20202020636F6E73742073697A65203D20646F63756D656E742E717565727953656C6563746F7228272E677269642D636F6E7461696E657227';
wwv_flow_imp.g_varchar2_table(3) := '293B0A20202020636F6E737420626F72646572203D20646F63756D656E742E717565727953656C6563746F72416C6C28272E677269642D6974656D27293B0A0A0A202020202F2F204170706C79207374796C6520746F206469760A202020206865616465';
wwv_flow_imp.g_varchar2_table(4) := '722E73657441747472696275746528277374796C65272C2027626F726465722D7261646975733A27202B206C5F726164697573293B0A2020202073697A652E73657441747472696275746528277374796C65272C2027677269642D74656D706C6174652D';
wwv_flow_imp.g_varchar2_table(5) := '636F6C756D6E733A20726570656174286175746F2D66696C6C2C206D696E6D617828272B206C5F73697A65202B272C20316672292927293B0A20202020666F72202869203D20303B2069203C20626F726465722E6C656E6774683B20692B2B29207B0A20';
wwv_flow_imp.g_varchar2_table(6) := '20202020202020626F726465725B695D2E7374796C652E626F72646572526164697573203D206C5F7261646975733B0A202020207D0A0A202020202F2F206368616E6765207468652047726964204761702069662073697A6520697320746F6F20736D61';
wwv_flow_imp.g_varchar2_table(7) := '6C6C0A2020202069662028206C5F73697A65203D3D20273430707827207C7C206C5F73697A65203D3D202732307078272029207B0A202020202020202073697A652E7374796C652E676170203D2027357078273B0A202020207D20656C7365207B0A2020';
wwv_flow_imp.g_varchar2_table(8) := '20202020202073697A652E7374796C652E676170203D202731307078273B0A202020207D0A0A20202020636F6E736F6C652E6C6F6728277365744772696453657474696E677320776173206A7573742065786563757465642E2053697A652F5261646975';
wwv_flow_imp.g_varchar2_table(9) := '73207365743A2027202B206C5F73697A65202B20272F27202B206C5F726164697573293B0A0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(35066284705662895072)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_file_name=>'js/plugin.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E207365744772696453657474696E677328652C74297B636F6E737420723D646F63756D656E742E717565727953656C6563746F7228222E677269642D6974656D2E677269642D6974656D2D68656164657220696D6722292C733D646F';
wwv_flow_imp.g_varchar2_table(2) := '63756D656E742E717565727953656C6563746F7228222E677269642D636F6E7461696E657222292C643D646F63756D656E742E717565727953656C6563746F72416C6C28222E677269642D6974656D22293B666F7228722E736574417474726962757465';
wwv_flow_imp.g_varchar2_table(3) := '28227374796C65222C22626F726465722D7261646975733A222B74292C732E73657441747472696275746528227374796C65222C22677269642D74656D706C6174652D636F6C756D6E733A20726570656174286175746F2D66696C6C2C206D696E6D6178';
wwv_flow_imp.g_varchar2_table(4) := '28222B652B222C20316672292922292C693D303B693C642E6C656E6774683B692B2B29645B695D2E7374796C652E626F726465725261646975733D743B732E7374796C652E6761703D2234307078223D3D657C7C2232307078223D3D653F22357078223A';
wwv_flow_imp.g_varchar2_table(5) := '2231307078222C636F6E736F6C652E6C6F6728227365744772696453657474696E677320776173206A7573742065786563757465642E2053697A652F526164697573207365743A20222B652B222F222B74297D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(36693434690359725635)
,p_plugin_id=>wwv_flow_imp.id(35031979464957099436)
,p_file_name=>'js/plugin.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
