<?php
// URI:       design/admin2/templates/popupmenu/popup_sub_editclass_menu.tpl
// Filename:  design/admin2/templates/popupmenu/popup_sub_editclass_menu.tpl
// Timestamp: 1342179294 (Fri Jul 13 11:34:54 UTC 2012)
$oldSetArray_e9e14a8132d0fdce35a232ea0686ae32 = isset( $setArray ) ? $setArray : array();
$setArray = array();
$tpl->Level++;
if ( $tpl->Level > 40 )
{
$text = $tpl->MaxLevelWarning;$tpl->Level--;
return;
}
$eZTemplateCompilerCodeDate = 1074699607;
if ( !defined( 'EZ_TEMPLATE_COMPILER_COMMON_CODE' ) )
include_once( 'var/ezdemo_site/cache/template/compiled/common.php' );

$text .= '<!-- Edit class submenu -->
<script type="text/javascript">
menuArray[\'EditClassSubmenu\'] = { \'depth\': 1 };
menuArray[\'EditClassSubmenu\'][\'elements\'] = {};
menuArray[\'EditClassSubmenu\'][\'elements\'][\'edit-class-languages\'] = { \'variable\': \'%languages%\' };
menuArray[\'EditClassSubmenu\'][\'elements\'][\'edit-class-languages\'][\'content\'] = \'<a href="/hollywood/index.php/site_admin/class/edit/%classID%/(language)/%locale%" onmouseover="ezpopmenu_mouseOver( \\\'EditClassSubmenu\\\' )">%name%<\\/a>\';
menuArray[\'EditClassSubmenu\'][\'elements\'][\'edit-class-another-language\'] = { \'url\': "/hollywood/index.php/site_admin/class/edit/%classID%" };
menuArray[\'EditClassSubmenu\'][\'elements\'][\'edit-class-another-language\'][\'disabled_class\'] = \'menu-item-disabled\';
</script>

<div class="popupmenu" id="EditClassSubmenu">
    <div id="edit-class-languages"></div>
    <hr />
    <!-- <a id="edit-class-another-language" href="#" onmouseover="ezpopmenu_mouseOver( \'EditClassSubmenu\' )">Ein andere Sprache</a> -->
    <!-- <div id="edit-class-another-language"></div> -->
    <a id="edit-class-another-language" href="#" onmouseover="ezpopmenu_mouseOver( \'EditClassSubmenu\' )">Neue Übersetzung</a>
</div>';

$setArray = $oldSetArray_e9e14a8132d0fdce35a232ea0686ae32;
$tpl->Level--;
?>
