<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_header_logo.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_header_logo.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_4a36b5fc672cbf7b800e96cbbee81c60 = isset( $setArray ) ? $setArray : array();
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

$text .= '<div class="span8">
    <a href="/hollywood/index.php/de" title="';
unset( $var );
$var = 'eZ Publish Demo Design' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '" class="logo"><img src="/hollywood/extension/ezdemo/design/ezdemo/images/logo-ez.png" alt="';
unset( $var );
$var = 'eZ Publish Demo Design' ;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= $var;
unset( $var );

$text .= '" /></a>
</div>
';

$setArray = $oldSetArray_4a36b5fc672cbf7b800e96cbbee81c60;
$tpl->Level--;
?>
