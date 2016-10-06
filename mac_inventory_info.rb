require 'plist'

def parse_system_profiler(datatype: 'SPStorageDataType',
                          output_file: 'system_profiler_output.plist')

  output_file += '.plist' unless output_file.include? '.plist'
  `system_profiler -xml #{datatype} >> #{output_file}`

  # parse plist
  result = Plist.parse_xml(output_file)
  `rm #{output_file}`
  result.class
  result = result[0]
  result
end

computer_name = `scutil --get ComputerName`.strip

hardware_data = parse_system_profiler(datatype: 'SPHardwareDataType')
storage_data = parse_system_profiler(datatype: 'SPStorageDataType')

puts storage_data['_properties']
puts computer_name + ' || ' + hardware_data['_items'][0]['machine_model']
