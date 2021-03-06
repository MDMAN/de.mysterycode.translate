<?php

namespace translate\system\cache\builder;
use translate\data\package\version\PackageVersionList;
use wcf\system\cache\builder\AbstractCacheBuilder;
use wcf\system\WCF;

class PackageVersionCacheBuilder extends AbstractCacheBuilder {
	/**
	 * @see \wcf\system\cache\builder\AbstractCacheBuilder::rebuild()
	 */
	protected function rebuild (array $parameters) {
		$data = [
			'versions' => []
		];
		
		// get all versions
		$versionList = new PackageVersionList();
		$versionList->sqlOrderBy = 'package_version.versionID ASC';
		$versionList->readObjects();
		$data['versions'] = $versionList->getObjects();
		
		return $data;
	}
}
