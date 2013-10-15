<?php
// URI:       design/admin2/templates/preview.tpl
// Filename:  design/admin2/templates/preview.tpl
// Timestamp: 1342179293 (Fri Jul 13 11:34:53 UTC 2012)
$oldSetArray_9734e1e91ef9938b1d670475885a7e3e = isset( $setArray ) ? $setArray : array();
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

// def $custom_actions
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'object' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'content_action_list' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
if ( $tpl->hasVariable( 'custom_actions', $rootNamespace ) )
{
    $tpl->warning( 'def', "Variable 'custom_actions' is already defined.", array (
  0 => 
  array (
    0 => 2,
    1 => 0,
    2 => 44,
  ),
  1 => 
  array (
    0 => 2,
    1 => 54,
    2 => 98,
  ),
  2 => 'design/admin2/templates/preview.tpl',
) );
    $tpl->setVariable( 'custom_actions', $var, $rootNamespace );
}
else
{
    $tpl->setLocalVariable( 'custom_actions', $var, $rootNamespace );
}

// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'custom_actions', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['custom_actions'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '    <form method="post" action="/hollywood/index.php/site_admin/content/action">
        <input type="hidden" name="TopLevelNode" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'object' );
unset( $var );
$var = $var1;
$var1 = compiledFetchAttribute( $var, 'main_node_id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />
        <input type="hidden" name="ContentNodeID" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'node_id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />
        <input type="hidden" name="ContentObjectID" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
$var1 = compiledFetchAttribute( $var, 'contentobject_id' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />';
}
unset( $if_cond );
// if ends

$text .= '
    ';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'node', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['node'] : null;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
$vars[$namespace]['node'] = $var;
unset( $var );
if ( !isset( $dKeys ) )
{
    $resH = $tpl->resourceHandler( 'design' );
    $dKeys = $resH->keys();
}
if ( !isset( $dKeysStack ) )
{
    $dKeysStack = array();
}
$dKeysStack[] = $dKeys;
unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'node_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["node"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'contentobject_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["object"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'contentclass_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["class"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'section_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["section"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'class_identifier' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["class_identifier"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'match_ingroup_id_list' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["class_group"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'state_id_array' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["state"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'state_identifier_array' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["state_identifier"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent_node_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_node"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'depth' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["depth"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'url_alias' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["url_alias"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["remote_id"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["node_remote_id"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'class_identifier' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_class_identifier"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_node_remote_id"] = $dKey;
unset( $dKey );

unset( $dKey );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $dKey );
$dKey = ( array_key_exists( $namespace, $vars ) and array_key_exists( 'node', $vars[$namespace] ) ) ? $vars[$namespace]['node'] : null;
$dKey1 = compiledFetchAttribute( $dKey, 'parent' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'object' );
unset( $dKey );
$dKey = $dKey1;
$dKey1 = compiledFetchAttribute( $dKey, 'remote_id' );
unset( $dKey );
$dKey = $dKey1;
if (! isset( $dKey ) ) $dKey = NULL;
while ( is_object( $dKey ) and method_exists( $dKey, 'templateValue' ) )
    $dKey = $dKey->templateValue();

$dKeys["parent_object_remote_id"] = $dKey;
unset( $dKey );

if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "article", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "article" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/article-d5db539e5d9fd55827ae510936501aba.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/article.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/article-d5db539e5d9fd55827ae510936501aba.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/article.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "comment", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "comment" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/comment-bed8aa7c2bc5fe4d82dc11784b0d2ebb.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/comment.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/comment-bed8aa7c2bc5fe4d82dc11784b0d2ebb.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/comment.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "company", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "company" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/company-2f5be21898e2f1daa1d274bd48308ab8.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/company.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/company-2f5be21898e2f1daa1d274bd48308ab8.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/company.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "feedback_form", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "feedback_form" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/feedback_form-3a22407284002ee067c84bd95de26825.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/feedback_form.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/feedback_form-3a22407284002ee067c84bd95de26825.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/feedback_form.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "file", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "file" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/file-f007f8711896e80929021eeb5fbf5f30.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/file.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/file-f007f8711896e80929021eeb5fbf5f30.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/file.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "flash", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "flash" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/flash-d2eecabb289653f3bd4bcf8f415047d0.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/flash.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/flash-d2eecabb289653f3bd4bcf8f415047d0.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/flash.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "folder", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "folder" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/folder-6ff836fbb4c40f004fe3325348d6b019.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/folder.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/folder-6ff836fbb4c40f004fe3325348d6b019.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/folder.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "forum", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "forum" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/forum-1e8b9828116db7604ed85509e7f53e3c.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/forum.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/forum-1e8b9828116db7604ed85509e7f53e3c.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/forum.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "forum_topic", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "forum_topic" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/forum_topic-0ca57f1c191a0dd5b43d7894d401dda6.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/forum_topic.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/forum_topic-0ca57f1c191a0dd5b43d7894d401dda6.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/forum_topic.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "forum_reply", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "forum_reply" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/forum_reply-203d0a0616c70cef1f233e874fa565b4.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/forum_reply.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/forum_reply-203d0a0616c70cef1f233e874fa565b4.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/forum_reply.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "gallery", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "gallery" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/gallery-c62ef536dd31b93dfb9bf1b89c0f34bd.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/gallery.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/gallery-c62ef536dd31b93dfb9bf1b89c0f34bd.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/gallery.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "image", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "image" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/image-81a07d9847c0e3d934db1e5e02897964.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/image.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/image-81a07d9847c0e3d934db1e5e02897964.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/image.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "link", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "link" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/link-1d0e1d0e20188adf1ec432d7c84f0f7a.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/link.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/link-1d0e1d0e20188adf1ec432d7c84f0f7a.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/link.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "person", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "person" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/person-2f94d56178724ab11071df11e94a86dc.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/person.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/person-2f94d56178724ab11071df11e94a86dc.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/person.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "poll", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "poll" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/poll-8e0318ea35d7f60ab7855b656328a5ef.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/poll.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/poll-8e0318ea35d7f60ab7855b656328a5ef.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/poll.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "product", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "product" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/product-e0bd1bffc1c6ce5284cd2c9fda2a4272.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/product.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/product-e0bd1bffc1c6ce5284cd2c9fda2a4272.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/product.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "review", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "review" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/review-3abe8c5f8cf84050eeca444b4489c892.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/review.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/review-3abe8c5f8cf84050eeca444b4489c892.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/review.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "quicktime", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "quicktime" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/quicktime-5c7ca58df653bc8a7bdefe046ee5713b.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/quicktime.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/quicktime-5c7ca58df653bc8a7bdefe046ee5713b.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/quicktime.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "real_video", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "real_video" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/real_video-c0fef0b7a9793a587f04d906f78adb11.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/real_video.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/real_video-c0fef0b7a9793a587f04d906f78adb11.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/real_video.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "weblog", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "weblog" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/weblog-a67dac7045117ecfaa27c1972ab79d78.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/weblog.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/weblog-a67dac7045117ecfaa27c1972ab79d78.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/weblog.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else  if ( isset( $dKeys["class_identifier"] ) and ( is_array( $dKeys["class_identifier"] ) ? in_array( "windows_media", $dKeys["class_identifier"] ) : $dKeys["class_identifier"] == "windows_media" ) )
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/windows_media-ba6a4b0ff08c17fed5f731631f3883c5.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/override/templates/admin_preview/windows_media.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/windows_media-ba6a4b0ff08c17fed5f731631f3883c5.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/override/templates/admin_preview/windows_media.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
else 
{
$resourceFound = false;
if ( file_exists( 'var/ezdemo_site/cache/template/compiled/admin_preview-00a4b868811e1fae445846303200dd8a.php' ) )
{
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$tpl->createLocalVariablesList();
$tpl->appendTemplateFetch( 'design/admin2/templates/node/view/admin_preview.tpl' );
include( '' . 'var/ezdemo_site/cache/template/compiled/admin_preview-00a4b868811e1fae445846303200dd8a.php' );
$tpl->unsetLocalVariables();
$tpl->destroyLocalVariablesList();
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}
else
{
    $resourceFound = true;
$resourceFound = true;
$namespaceStack[] = array( $rootNamespace, $currentNamespace );
$currentNamespace = $rootNamespace = !$currentNamespace ? 'NodeView' : ( $currentNamespace . ':' . 'NodeView' );
$textElements = array();
$extraParameters = array();
$tpl->processURI( 'design/admin2/templates/node/view/admin_preview.tpl', true, $extraParameters, $textElements, $rootNamespace, $currentNamespace );
$text .= implode( '', $textElements );
list( $rootNamespace, $currentNamespace ) = array_pop( $namespaceStack );
}

}
$dKeys = array_pop( $dKeysStack );
$namespace = $currentNamespace;
if ( $namespace == '' )
    $namespace = "NodeView";
else
    $namespace .= ':NodeView';
unset( $vars[$namespace]['node'] );
// if begins
unset( $if_cond );
unset( $if_cond );
$if_cond = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'custom_actions', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['custom_actions'] : null;
if (! isset( $if_cond ) ) $if_cond = NULL;
while ( is_object( $if_cond ) and method_exists( $if_cond, 'templateValue' ) )
    $if_cond = $if_cond->templateValue();

if ( $if_cond )
{
$text .= '        <div class="button-right">
        <div class="block">
            
            ';
// foreach begins
$skipDelimiter = true;
if ( !isset( $fe_variable_stack_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) ) $fe_variable_stack_34ea9c5ba6414c653f5f6e0bfd54b415_4 = array();
$fe_variable_stack_34ea9c5ba6414c653f5f6e0bfd54b415_4[] = compact( 'fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_array_keys_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_n_items_processed_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_key_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_val_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_reverse_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_first_val_34ea9c5ba6414c653f5f6e0bfd54b415_4', 'fe_last_val_34ea9c5ba6414c653f5f6e0bfd54b415_4' );
unset( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 );
unset( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 );
$fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'custom_actions', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['custom_actions'] : null;
if (! isset( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) ) $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 = NULL;
while ( is_object( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) and method_exists( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4, 'templateValue' ) )
    $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4->templateValue();

$fe_array_keys_34ea9c5ba6414c653f5f6e0bfd54b415_4 = is_array( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) ? array_keys( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) : array();
$fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 = count( $fe_array_keys_34ea9c5ba6414c653f5f6e0bfd54b415_4 );
$fe_n_items_processed_34ea9c5ba6414c653f5f6e0bfd54b415_4 = 0;
$fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 = 0;
$fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 - $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4;
$fe_reverse_34ea9c5ba6414c653f5f6e0bfd54b415_4 = false;
if ( $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 < 0 || $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 >= $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 )
{
    $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 = ( $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 < 0 ) ? 0 : $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4;
    if ( $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 || $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 < 0 )
 {
        eZDebug::writeWarning("Invalid 'offset' parameter specified: '$fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4'. Array count: $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4");   
}
}
if ( $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 < 0 || $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 + $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 > $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 )
{
    if ( $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 < 0 )
 eZDebug::writeWarning("Invalid 'max' parameter specified: $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4");
    $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 - $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4;
}
if ( $fe_reverse_34ea9c5ba6414c653f5f6e0bfd54b415_4 )
{
    $fe_first_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 - 1 - $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4;
    $fe_last_val_34ea9c5ba6414c653f5f6e0bfd54b415_4  = 0;
}
else
{
    $fe_first_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4;
    $fe_last_val_34ea9c5ba6414c653f5f6e0bfd54b415_4  = $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 - 1;
}
// foreach
for ( $fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_first_val_34ea9c5ba6414c653f5f6e0bfd54b415_4; $fe_n_items_processed_34ea9c5ba6414c653f5f6e0bfd54b415_4 < $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 && ( $fe_reverse_34ea9c5ba6414c653f5f6e0bfd54b415_4 ? $fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4 >= $fe_last_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 : $fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4 <= $fe_last_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 ); $fe_reverse_34ea9c5ba6414c653f5f6e0bfd54b415_4 ? $fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4-- : $fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4++ )
{
$fe_key_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_array_keys_34ea9c5ba6414c653f5f6e0bfd54b415_4[$fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4];
$fe_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 = $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4[$fe_key_34ea9c5ba6414c653f5f6e0bfd54b415_4];
$vars[$rootNamespace]['custom_action'] = $fe_val_34ea9c5ba6414c653f5f6e0bfd54b415_4;
$text .= '                <input class="button" type="submit" name="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'custom_action', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['custom_action'] : null;
$var1 = compiledFetchAttribute( $var, 'action' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" value="';
unset( $var );
unset( $var );
$var = ( array_key_exists( $rootNamespace, $vars ) and array_key_exists( 'custom_action', $vars[$rootNamespace] ) ) ? $vars[$rootNamespace]['custom_action'] : null;
$var1 = compiledFetchAttribute( $var, 'name' );
unset( $var );
$var = $var1;
if (! isset( $var ) ) $var = NULL;
while ( is_object( $var ) and method_exists( $var, 'templateValue' ) )
    $var = $var->templateValue();
$text .= ( is_object( $var ) ? compiledFetchText( $tpl, $rootNamespace, $currentNamespace, false, $var ) : $var );
unset( $var );

$text .= '" />
            ';
$fe_n_items_processed_34ea9c5ba6414c653f5f6e0bfd54b415_4++;
} // foreach
$skipDelimiter = false;
if ( count( $fe_variable_stack_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) ) extract( array_pop( $fe_variable_stack_34ea9c5ba6414c653f5f6e0bfd54b415_4 ) );

else
{

unset( $fe_array_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_array_keys_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_n_items_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_n_items_processed_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_i_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_key_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_offset_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_max_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_reverse_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_first_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_last_val_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

unset( $fe_variable_stack_34ea9c5ba6414c653f5f6e0bfd54b415_4 );

}

// foreach ends
$text .= '        </div>
        </div>
    </form>';
}
unset( $if_cond );
// if ends


$setArray = $oldSetArray_9734e1e91ef9938b1d670475885a7e3e;
$tpl->Level--;
?>
