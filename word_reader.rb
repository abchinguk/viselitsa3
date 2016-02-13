class WordReader # причитать все слова из файла и вернуть одно из них случ слово

	def read_from_file(file_name)
		if File.exist?(file_name)
			f = File.new(file_name, 'r:UTF-8')
			lines = f.readlines
			f.close
			return lines.sample.chomp
		else
			return nil
		end	
	end

end	