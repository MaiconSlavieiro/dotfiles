# Verifica se os parâmetros foram passados corretamente
if [ $# -ne 3 ]; then
  echo "Uso: $0 <tema> <ícones> <fontes>"
  exit 1
fi

# Obtém os parâmetros
tema=$1
icones=$2
fontes=$3

# Função para alterar as configurações
configurar_tema() {
  local arquivo=$1
  local chave=$2
  local valor=$3

  # Verifica se o arquivo existe
  if [ -f "$arquivo" ]; then
    # Altera a configuração no arquivo
    sed -i "s/$chave=.*/$chave=$valor/" "$arquivo"
  else
    echo "Erro: O arquivo $arquivo não foi encontrado."
    exit 1
  fi
}

# Altera as configurações do tema QT
configurar_tema "$HOME/.config/qt5/qtconfig.conf" "style" "$tema"
configurar_tema "$HOME/.config/qt5/qtconfig.conf" "icon-theme" "$icones"
configurar_tema "$HOME/.config/qt5/qtconfig.conf" "font-family" "$fontes"

# Altera as configurações do tema GTK
configurar_tema "$HOME/.config/gtk-3.0/settings.ini" "gtk-theme-name" "$tema"
configurar_tema "$HOME/.config/gtk-3.0/settings.ini" "gtk-icon-theme-name" "$icones"
configurar_tema "$HOME/.config/gtk-3.0/settings.ini" "gtk-font-name" "$fontes"

echo "Configurações de tema, ícones e fontes aplicadas com sucesso."

# Pergunta ao usuário se deseja reiniciar o sistema
read -p "Deseja reiniciar o sistema agora? (s/n): " reiniciar
if [ "$reiniciar" == "s" ]; then
  systemctl reboot
fi