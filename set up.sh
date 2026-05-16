#!/bin/bash
# AETHER — Setup completo en GitHub Codespaces
# Una sola vez. Después solo abrís el Codespace y escribís: claude

echo "🔧 AETHER Setup"
echo "==============="

# 1. Instalar herramientas
echo "📦 Instalando Claude Code + CLIs..."
npm install -g @anthropic-ai/claude-code supabase @railway/cli vercel netlify-cli 2>/dev/null

# 2. Configurar Gemini como LLM gratuito
export ANTHROPIC_BASE_URL="https://generativelanguage.googleapis.com/v1beta/openai"
export ANTHROPIC_API_KEY="AIzaSyBH8LeuRSjbwk6zsnRpjbxgcCB8WwzJhso"
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=8000

# 3. Configurar Supabase
export SUPABASE_ACCESS_TOKEN="sbp_aether_alan"
export SUPABASE_URL="https://bzjvfexqqxeccmbxwipe.supabase.co"
export AETHER_API_KEY="aether-alan-2026"

# 4. Guardar en .env permanente
cat > .env << 'EOF'
# AETHER Core
ANTHROPIC_BASE_URL=https://generativelanguage.googleapis.com/v1beta/openai
ANTHROPIC_API_KEY=AIzaSyBH8LeuRSjbwk6zsnRpjbxgcCB8WwzJhso
SUPABASE_URL=https://bzjvfexqqxeccmbxwipe.supabase.co
AETHER_API_KEY=aether-alan-2026

# Agrega estas desde el dashboard de Supabase:
# SUPABASE_SERVICE_ROLE_KEY=
# SUPABASE_ANON_KEY=
EOF

# 5. Guardar en ~/.bashrc para persistencia
echo 'export ANTHROPIC_BASE_URL="https://generativelanguage.googleapis.com/v1beta/openai"' >> ~/.bashrc
echo 'export ANTHROPIC_API_KEY="AIzaSyBH8LeuRSjbwk6zsnRpjbxgcCB8WwzJhso"' >> ~/.bashrc
source ~/.bashrc

echo ""
echo "✅ AETHER listo"
echo ""
echo "Escribí: claude"
echo ""
echo "Primera tarea:"
echo "'Leé el CLAUDE.md. Qué app liviana podés deployar end-to-end ahora?'"
