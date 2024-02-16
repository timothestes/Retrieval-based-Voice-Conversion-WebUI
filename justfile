run:
    export PYTORCH_ENABLE_MPS_FALLBACK=1 && python3 infer-web.py
gui:
    export PYTORCH_ENABLE_MPS_FALLBACK=1 && python3.8 gui_v1.py --pycmd python3.8

clear:
    rm -rf opt/*