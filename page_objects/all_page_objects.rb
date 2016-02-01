=begin
Having done that, you only have to require the all_page_objects file from your spec_helper.rb or env.rb file.
Everytime a new page object file is defined, you do not have to require that explicitly.
=end

current_path = File.expand_path('..', __FILE__)
$LOAD_PATH.unshift File.join(current_path, 'teknosa')

Dir.glob(File.join(current_path, '**', '*.rb')).each do |f|
  require f
end
