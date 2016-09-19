{include file='header'}

{* {include file='multipleLanguageInputJavascript' elementIdentifier='languageName' forceSelection=true} *}

{include file='formError'}

{if $success|isset}
	<p class="success">{lang}wcf.global.success.{@$action}{/lang}</p>
{/if}

<form method="post" action="{if $action == 'add'}{link controller='PackageAdd'}{/link}{else}{link controller='PackageEdit' id=$packageID}{/link}{/if}">
	{event name='beforeSections'}
	
	<div id="upload" class="section htmlContent">
		TODO: upload container
		{*
		<div{if !$fileHandler->getFileList()|count} style="display: none"{/if}>
			<ul class="formAttachmentList mcpsFormPackageFileList clearfix">
				{foreach from=$fileHandler->getFileList() item='file'}
					<li class="box48" data-object-id="{@$file->fileID}">
						<span class="icon icon48 icon-upload-alt"></span>
						
						<div>
							<div>
								<p>
									{$file->filename} ({$file->version})
								</p>
								<small>{@$file->filesize|filesize}</small>
							</div>
							
							<ul>
								<li><span class="icon icon16 icon-remove pointer jsTooltip jsDeleteButton " title="{lang}wcf.global.button.delete{/lang}" data-object-id="{@$file->fileID}" data-confirm-message="{lang}mcps.package.file.delete.sure{/lang}"></span></li>
							</ul>
						</div>
					</li>
				{/foreach}
			</ul>
		</div>
		
		<dl id="fileUploadContainer" class="wide">
			<dd>
				<div data-max-size="{@$fileHandler->getMaxSize()}"></div>
				{if $errorField == 'upload'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}wcf.user.username.error.{@$errorType}{/lang}
						{/if}
					</small>
				{/if}
				<small>{lang}mcps.acp.package.file.upload.limits{/lang}</small>
			</dd>
		</dl>
		*}
	</div>
	
	<div class="section htmlContent">
		<dl{if $errorField == 'title'} class="formError"{/if}>
			<dt>{lang}translate.package.title{/lang}</dt>
			<dd>
				<input type="text" id="title" name="title" value="{$title}" required class="long">
				{if $errorField == 'title'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.title.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'identifier'} class="formError"{/if}>
			<dt>{lang}translate.package.identifier{/lang}</dt>
			<dd>
				<input type="text" id="identifier" name="identifier" value="{$identifier}" required class="medium">
				{if $errorField == 'identifier'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.identifier.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'description'} class="formError"{/if}>
			<dt>{lang}translate.package.description{/lang}</dt>
			<dd>
				<input type="text" id="description" name="description" value="{$description}" class="long">
				{if $errorField == 'description'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.description.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'application'} class="formError"{/if}>
			<dt>{lang}translate.package.application{/lang}</dt>
			<dd>
				<input type="checkbox" id="application" name="application" value="1" {if $application}checked{/if}>
			</dd>
		</dl>
		
		<dl{if $errorField == 'isuniquie'} class="formError"{/if}>
			<dt>{lang}translate.package.isuniquie{/lang}</dt>
			<dd>
				<input type="text" id="isuniquie" name="isuniquie" value="1" {if $application}checked{/if}>
			</dd>
		</dl>
		
		<dl{if $errorField == 'plugin'} class="formError"{/if}>
			<dt>{lang}translate.package.plugin{/lang}</dt>
			<dd>
				<input type="text" id="plugin" name="plugin" value="{$plugin}" class="long">
				{if $errorField == 'plugin'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.plugin.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'author'} class="formError"{/if}>
			<dt>{lang}translate.package.author{/lang}</dt>
			<dd>
				<input type="text" id="author" name="author" value="{$author}" class="long">
				{if $errorField == 'author'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.author.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'authorUrl'} class="formError"{/if}>
			<dt>{lang}translate.package.authorUrl{/lang}</dt>
			<dd>
				<input type="text" id="authorUrl" name="authorUrl" value="{$authorUrl}" class="long">
				{if $errorField == 'authorUrl'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.authorUrl.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'supportUrl'} class="formError"{/if}>
			<dt>{lang}translate.package.supportUrl{/lang}</dt>
			<dd>
				<input type="text" id="supportUrl" name="supportUrl" value="{$supportUrl}" class="long">
				{if $errorField == 'supportUrl'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.supportUrl.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		<dl{if $errorField == 'github'} class="formError"{/if}>
			<dt>{lang}translate.package.github{/lang}</dt>
			<dd>
				<input type="text" id="github" name="github" value="{$github}" class="long">
				{if $errorField == 'github'}
					<small class="innerError">
						{if $errorType == 'empty'}
							{lang}wcf.global.form.error.empty{/lang}
						{else}
							{lang}translate.package.github.error.notValid{/lang}
						{/if}
					</small>
				{/if}
			</dd>
		</dl>
		
		{event name='fields'}
	</div>
	
	{event name='afterSections'}
	
	<div class="formSubmit">
		<input type="submit" name="submit" value="{lang}wcf.global.submit{/lang}" accesskey="s">
		{@SECURITY_TOKEN_INPUT_TAG}
	</div>
</form>

{include file='footer'}
