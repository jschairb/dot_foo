module DotFoo
  class Update
    def self.run
      Dir.foreach(File.expand_path("~/.etc")).each do |file|
        root         = File.expand_path("~/.etc")
        original_dir = Dir.pwd
        next if file == "." || file == ".."

        dot_dir = File.join(root, file)
        Dir.chdir(dot_dir)

        system("git pull origin master")
        Dir.chdir(original_dir)
      end
    end
  end
end
