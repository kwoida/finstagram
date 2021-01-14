get '/' do
  File.read(File.join('app/views', 'Index.html'))
end
