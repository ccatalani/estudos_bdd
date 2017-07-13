

## Tag para cadastrar_empregado
Before '@premissa_cadastro' do
  @first_name = Faker::Name.first_name
  @last_name = Faker::Name.last_name
end

# ## Pega ID com Arq.
# Before '@pegar_id' do
#     File.open('codigo_cadastro.txt') do |arquivo|
#     arquivo.each do |linha|
#     @id_pesquisa = linha
#     puts "codigo_para_pesquisa: " +linha
#     @search_id = @id_pesquisa
#     end
#   end
