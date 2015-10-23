desc "Ejecutar la clase fraction"
task :default do
  sh "ruby lib/fraction.rb"
end

desc "Ejecutar las Pruebas Unitarias (Unit Testing)"
task :UnitTesting do
  sh "ruby test/tc_fraction.rb"
end
