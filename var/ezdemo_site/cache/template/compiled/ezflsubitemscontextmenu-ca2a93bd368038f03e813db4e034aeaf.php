<?php
// URI:       design:node/ezflsubitemscontextmenu.tpl
// Filename:  extension/ezflow/design/standard/templates/node/ezflsubitemscontextmenu.tpl
// Timestamp: 1381794970 (Mon Oct 14 23:56:10 UTC 2013)
$oldSetArray_d394965cc72101f678a05f35a3732500 = isset( $setArray ) ? $setArray : array();
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

$text .= '<script type="text/javascript">
menuArray[\'eZFlow\'] = new Array();
menuArray[\'eZFlow\'][\'depth\'] = 1; // this is a first level submenu of ContextMenu
menuArray[\'eZFlow\'][\'elements\'] = new Array();
menuArray[\'eZFlow\'][\'elements\'][\'push-to-block\'] = new Array();
menuArray[\'eZFlow\'][\'elements\'][\'push-to-block\'][\'url\'] = "/hollywood/index.php/site_admin/ezflow/push/%nodeID%";
</script>

<hr />

<a id="child-menu-ezflow" class="more" href="#" onmouseover="ezpopmenu_showSubLevel( event, \'eZFlow\', \'child-menu-ezflow\' ); return false;">eZ Flow</a>';

$setArray = $oldSetArray_d394965cc72101f678a05f35a3732500;
$tpl->Level--;
?>
