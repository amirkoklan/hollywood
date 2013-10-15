<?php
// URI:       design:node/ezflcontextsubmenu.tpl
// Filename:  extension/ezflow/design/standard/templates/node/ezflcontextsubmenu.tpl
// Timestamp: 1381794970 (Mon Oct 14 23:56:10 UTC 2013)
$oldSetArray_2e7a28715ec1c358e279618dbc2a71bb = isset( $setArray ) ? $setArray : array();
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

$text .= '<div class="popupmenu" id="eZFlow">
    <a id="push-to-block" href="#" onmouseover="ezpopmenu_mouseOver( \'eZFlow\' )">Zu Block hinzufügen</a>
</div>
';

$setArray = $oldSetArray_2e7a28715ec1c358e279618dbc2a71bb;
$tpl->Level--;
?>
