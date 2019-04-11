let project = new Project('Empty');
project.addAssets('Assets/**');
if (platform === 'html5' || platform === 'krom' || platform === 'node' || platform === 'debug-html5') {
	project.addAssets('Libraries/example/example.js');
}
project.addSources('Sources');
resolve(project);
