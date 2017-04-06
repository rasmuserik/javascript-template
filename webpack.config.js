module.exports = {
  entry: './javascript-template.js',
  devtool: 'source-map',
  module: {loaders: [{ 
    test: /\.js$/, 
    exclude: /(dist.*|node_modules)/, 
    loader: 'babel-loader'
  }]},
  output: {
    libraryTarget: 'umd',
    filename: 'dist.js'
  }
}
