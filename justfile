setup-poetry:
    source venv.sh
    brew install python-tk@3.9
    poetry add $( cat requirements.txt )

normal-setup:
    source venv.sh
    python -m pip install -U pip setuptools wheel
    pip install -U torch torchaudio 
    pip install -r requirements.txt
    pip install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cpu
    export PYTORCH_ENABLE_MPS_FALLBACK=1

run:
    export PYTORCH_ENABLE_MPS_FALLBACK=1 && python3 rvcgui.py