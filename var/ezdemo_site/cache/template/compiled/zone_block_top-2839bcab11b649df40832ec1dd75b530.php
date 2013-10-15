<?php
// URI:       extension/ezflow/design/standard/templates/parts/zone_block_top.tpl
// Filename:  extension/ezflow/design/standard/templates/parts/zone_block_top.tpl
// Timestamp: 1381794970 (Mon Oct 14 23:56:10 UTC 2013)
$oldSetArray_c050c62530750f9610ddea7989772ba9 = isset( $setArray ) ? $setArray : array();
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

$text .= '
';

$setArray = $oldSetArray_c050c62530750f9610ddea7989772ba9;
$tpl->Level--;
?>
