run: node_add
	uv run main.py --enable-manager --listen 0.0.0.0
node_add:
	cd custom_nodes && git clone https://github.com/cicalooo/ComfyUI-H3-PowerLoraStack || echo "ComfyUI-H3-PowerLoraStack already exists"
	cd custom_nodes && git clone https://github.com/LBH-123-AI/Comfyui_Minimax_h3_latent_Upscaler.git || echo "Comfyui_Minimax_h3_latent_Upscaler already exists"
uv_add:
	uv add comfyui-frontend-package==1.57.6 comfyui-workflow-templates==0.11.100 comfyui-embedded-docs==0.5.15 \
		torchsde "numpy>=1.25.0" einops "transformers>=4.50.3" "tokenizers>=0.13.3" sentencepiece \
		"safetensors>=0.4.2" "aiohttp>=3.11.8" "yarl>=1.18.0" "Pillow>=10.1.0" scipy tqdm psutil alembic \
		"SQLAlchemy>=2.0.0" filelock "av>=17.0.0" comfy-aimdo==0.6.0 comfy-kitchen==0.2.40 requests \
		"simpleeval>=1.0.0" blake3
uv_add_non_essential:
	uv add "kornia>=0.7.1" spandrel "pydantic~=2.0" "pydantic-settings~=2.0" "PyOpenGL>=3.1.8" comfy-angle
uv_add_manager:
	uv add comfyui_manager==4.2.2
