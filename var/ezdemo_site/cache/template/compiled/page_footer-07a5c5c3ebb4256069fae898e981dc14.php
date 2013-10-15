<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_footer.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_footer.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_47a607cba03d8368531af7697d365d59 = isset( $setArray ) ? $setArray : array();
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

$text .= '<!-- Footer area: START -->';
// def $feedback_form_class
unset( $var );
$var = call_user_func_array( array( new eZContentFunctionCollection(), 'fetchClass' ),
  array(     'class_id' => "feedback_form" ) );
$var = isset( $var['result'] ) ? $var['result'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'feedback_form_class', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'feedback_form_class' is already defined.", array (
  0 => 
  array (
    0 => 2,
    1 => 0,
    2 => 29,
  ),
  1 => 
  array (
    0 => 3,
    1 => 57,
    2 => 178,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/page_footer.tpl',
) );
    $tpl->setVariable( 'feedback_form_class', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'feedback_form_class', $var, $rootNamespace );
}

// def $feedback_form
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'feedback_form_class', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['feedback_form_class'] : null;
$var1 = compiledFetchAttribute( $var, 'object_list' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 0 );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'feedback_form', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'feedback_form' is already defined.", array (
  0 => 
  array (
    0 => 2,
    1 => 0,
    2 => 29,
  ),
  1 => 
  array (
    0 => 3,
    1 => 57,
    2 => 178,
  ),
  2 => 'extension/ezdemo/design/ezdemo/templates/page_footer.tpl',
) );
    $tpl->setVariable( 'feedback_form', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'feedback_form', $var, $rootNamespace );
}

$text .= '<footer>
    <div class="claim-wrapper">
        <div class="container">
            <div class="nav-collapse">
                Powered by <a href="http://ez.no/ezpublish" title="eZ Publish&#8482; CMS Open Source Web Content Management">eZ Publish&#8482; CMS Open Source Web Content Management</a>.
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="span4">
                ';
$oldRestoreIncludeArray_4f69367fe9b3ac6563345ada516b4b42 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( isset( $currentNamespace ) and isset( $vars[$currentNamespace]['node'] ) )
    $restoreIncludeArray[] = array( $currentNamespace, 'node', $vars[$currentNamespace]['node'] );
elseif ( !isset( $vars[( isset( $currentNamespace ) ? $currentNamespace : '' )]['node'] ) ) 
    $restoreIncludeArray[] = array( ( isset( $currentNamespace ) ? $currentNamespace : '' ), 'node', 'unset' );

unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'feedback_form', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['feedback_form'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$vars[$currentNamespace]['node'] = $var;
unset( $var );
if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/address-8cb539a80bf78c3ddfa4ec4c236a0f01.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/footer/address.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/address-8cb539a80bf78c3ddfa4ec4c236a0f01.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/templates/footer/address.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_4f69367fe9b3ac6563345ada516b4b42;

$text .= '            </div>
            <div class="span4 nav-collapse">
                ';
$oldRestoreIncludeArray_e6863f4449724586a1c348106f10c13c = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/latest_news-7ca90c4cf3e4e77acbb740ab2c1cae2d.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/footer/latest_news.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/latest_news-7ca90c4cf3e4e77acbb740ab2c1cae2d.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/templates/footer/latest_news.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_e6863f4449724586a1c348106f10c13c;

$text .= '            </div>
            <div class="span4 nav-collapse">
                ';
$oldRestoreIncludeArray_ca4f201fabc80d2c5ad48abd0e388eeb = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( isset( $currentNamespace ) and isset( $vars[$currentNamespace]['object'] ) )
    $restoreIncludeArray[] = array( $currentNamespace, 'object', $vars[$currentNamespace]['object'] );
elseif ( !isset( $vars[( isset( $currentNamespace ) ? $currentNamespace : '' )]['object'] ) ) 
    $restoreIncludeArray[] = array( ( isset( $currentNamespace ) ? $currentNamespace : '' ), 'object', 'unset' );

unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'feedback_form', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['feedback_form'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$vars[$currentNamespace]['object'] = $var;
unset( $var );
if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/feedback_form-b5bcff9109bf15e40c999d60407aa985.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/footer/feedback_form.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/feedback_form-b5bcff9109bf15e40c999d60407aa985.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'extension/ezdemo/design/ezdemo/templates/footer/feedback_form.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

foreach ( $restoreIncludeArray as $element )
{
    if ( $element[2] === 'unset' )
    {
        unset( $vars[$element[0]][$element[1]] );
        continue;
    }
    $vars[$element[0]][$element[1]] = $element[2];
}
$restoreIncludeArray = $oldRestoreIncludeArray_ca4f201fabc80d2c5ad48abd0e388eeb;

$text .= '            </div>
        </div>
    </div>
</footer>
<!-- Footer area: END -->';
// undef $feedback_form_class
$tpl->unsetLocalVariable( 'feedback_form_class', $rootNamespace );

// undef $feedback_form
$tpl->unsetLocalVariable( 'feedback_form', $rootNamespace );


$setArray = $oldSetArray_47a607cba03d8368531af7697d365d59;
$tpl->Level--;
?>
