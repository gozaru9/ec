<?php /* Smarty version 2.6.27, created on 2014-02-14 14:14:45
         compiled from C:%5Cxampp%5Chtdocs%5Cec%5Chtml/../data/Smarty/templates/default/frontparts/bloc/category_tree_fork.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'C:\\xampp\\htdocs\\ec\\html/../data/Smarty/templates/default/frontparts/bloc/category_tree_fork.tpl', 41, false),array('modifier', 'h', 'C:\\xampp\\htdocs\\ec\\html/../data/Smarty/templates/default/frontparts/bloc/category_tree_fork.tpl', 44, false),array('modifier', 'default', 'C:\\xampp\\htdocs\\ec\\html/../data/Smarty/templates/default/frontparts/bloc/category_tree_fork.tpl', 45, false),)), $this); ?>
<?php echo '<div id="collapse'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['treeID'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?><?php echo '" class="panel-collapse collapse in">'; ?><?php $_from = ((is_array($_tmp=$this->_tpl_vars['childrenList'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['child']):
?><?php echo '<div class="panel-body"><a href="'; ?><?php echo ((is_array($_tmp=@ROOT_URLPATH)) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?><?php echo 'products/list.php?category_id='; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['child']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?><?php echo '"'; ?><?php if (in_array ( ((is_array($_tmp=$this->_tpl_vars['child']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) , ((is_array($_tmp=$this->_tpl_vars['tpl_category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) )): ?><?php echo ' class="onlink"'; ?><?php endif; ?><?php echo '>'; ?><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['child']['category_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('h', true, $_tmp) : smarty_modifier_h($_tmp)); ?><?php echo '</a><span class="badge">'; ?><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['child']['product_count'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('default', true, $_tmp, 0) : smarty_modifier_default($_tmp, 0)); ?><?php echo '</span><a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['child']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?><?php echo '"><span class="pull-right glyphicon glyphicon-circle-arrow-down"></span></a>'; ?><?php if (in_array ( ((is_array($_tmp=$this->_tpl_vars['child']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) , ((is_array($_tmp=$this->_tpl_vars['arrParentID'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) )): ?><?php echo ''; ?><?php $this->assign('disp_child', 1); ?><?php echo ''; ?><?php else: ?><?php echo ''; ?><?php $this->assign('disp_child', 0); ?><?php echo ''; ?><?php endif; ?><?php echo ''; ?><?php if (isset ( $this->_tpl_vars['child']['children'] )): ?><?php echo '<div class="panel-group" id="accordion">'; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => (@TEMPLATE_REALDIR)."frontparts/bloc/category_tree_fork.tpl", 'smarty_include_vars' => array('childrenList' => ((is_array($_tmp=$this->_tpl_vars['child']['children'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'treeID' => ((is_array($_tmp=$this->_tpl_vars['child']['category_id'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)),'display' => ((is_array($_tmp=$this->_tpl_vars['disp_child'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo '</div>'; ?><?php endif; ?><?php echo '</div>'; ?><?php endforeach; endif; unset($_from); ?><?php echo '</div>'; ?>
