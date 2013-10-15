<?php
// URI:       extension/ezdemo/design/ezdemo/templates/page_footer.tpl
// Filename:  extension/ezdemo/design/ezdemo/templates/page_footer.tpl
// Timestamp: 1381794969 (Mon Oct 14 23:56:09 UTC 2013)
$oldSetArray_6483235ed19d871ef1ab5c5af60f0917 = isset( $setArray ) ? $setArray : array();
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
$oldRestoreIncludeArray_8fc38e24314ced0ee17ce06e5373602d = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
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
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/address-06568cc681f6cdc74c012079967ff70e.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/footer/address.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/address-06568cc681f6cdc74c012079967ff70e.php' );
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
$restoreIncludeArray = $oldRestoreIncludeArray_8fc38e24314ced0ee17ce06e5373602d;

$text .= '            </div>
            <div class="span4 nav-collapse">
                ';
$oldRestoreIncludeArray_3fc1e207361baf5006a1ec539a5ee950 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
$restoreIncludeArray = array();

if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( "design" );
    $dKeys = $resH->keys();
}

$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/latest_news-03a3378b377efe65e4019a902cb38f6f.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/footer/latest_news.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/latest_news-03a3378b377efe65e4019a902cb38f6f.php' );
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
$restoreIncludeArray = $oldRestoreIncludeArray_3fc1e207361baf5006a1ec539a5ee950;

$text .= '            </div>
            <div class="span4 nav-collapse">
                ';
$oldRestoreIncludeArray_6b5a7397b9acab218b94778f16192f65 = isset( $restoreIncludeArray ) ? $restoreIncludeArray : array();
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
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/feedback_form-d1e5d78f0b3d390ecc2ffdf2b3a92381.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$rootNamespace = $currentNamespace;
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'extension/ezdemo/design/ezdemo/templates/footer/feedback_form.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/feedback_form-d1e5d78f0b3d390ecc2ffdf2b3a92381.php' );
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
$restoreIncludeArray = $oldRestoreIncludeArray_6b5a7397b9acab218b94778f16192f65;

$text .= '            </div>
        </div>
    </div>
</footer>
<!-- Footer area: END -->';
// undef $feedback_form_class
$tpl->unsetLocalVariable( 'feedback_form_class', $rootNamespace );

// undef $feedback_form
$tpl->unsetLocalVariable( 'feedback_form', $rootNamespace );


$setArray = $oldSetArray_6483235ed19d871ef1ab5c5af60f0917;
$tpl->Level--;
?>
