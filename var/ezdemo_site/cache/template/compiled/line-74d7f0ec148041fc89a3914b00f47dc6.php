<?php
// URI:       design:content/datatype/view/ezxmltags/line.tpl
// Filename:  design/standard/templates/content/datatype/view/ezxmltags/line.tpl
// Timestamp: 1342179293 (Fri Jul 13 11:34:53 UTC 2012)
$oldSetArray_782e11820e5f79753f6dc54478522af8 = isset( $setArray ) ? $setArray : array();
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
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'content', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['content'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '<br />';

$setArray = $oldSetArray_782e11820e5f79753f6dc54478522af8;
$tpl->Level--;
?>
