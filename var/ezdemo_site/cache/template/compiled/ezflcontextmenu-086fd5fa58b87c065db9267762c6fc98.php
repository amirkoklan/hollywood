<?php
// URI:       design:node/ezflcontextmenu.tpl
// Filename:  extension/ezflow/design/standard/templates/node/ezflcontextmenu.tpl
// Timestamp: 1381794970 (Mon Oct 14 23:56:10 UTC 2013)
$oldSetArray_5d3ef5d2c409928adafa2606d46904e0 = isset( $setArray ) ? $setArray : array();
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

<a id="menu-ezflow" class="more" href="#" onmouseover="ezpopmenu_showSubLevel( event, \'eZFlow\', \'menu-ezflow\' ); return false;">eZ Flow</a>';

$setArray = $oldSetArray_5d3ef5d2c409928adafa2606d46904e0;
$tpl->Level--;
?>
