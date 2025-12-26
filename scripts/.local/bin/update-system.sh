
#!/usr/bin/env bash

echo "=== Mise à jour du système (pacman) ==="
sudo pacman -Syu

if command -v yay >/dev/null 2>&1; then
  echo "=== Mise à jour AUR (yay) ==="
  yay -Sua --noconfirm
elif command -v paru >/dev/null 2>&1; then
  echo "=== Mise à jour AUR (paru) ==="
  paru -Sua --noconfirm
else
  echo "⚠️ Aucun helper AUR trouvé"
fi

echo
echo "✔ Mise à jour terminée"
read -rp "Appuyez sur Entrée pour fermer…"
