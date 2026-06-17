#!/bin/bash
# BP Office Hours Skill — install dependencies for material parsing
# Supports: PDF, PPTX, DOCX, XLSX, TXT, Markdown, images

set -e

echo "BP Office Hours — installing dependencies for material parsing"
echo ""

OS=$(uname -s)

# ---------- macOS ----------
if [[ "$OS" == "Darwin" ]]; then
    echo "Detected macOS"

    # Install Homebrew if missing (non-interactive)
    if ! command -v brew &> /dev/null; then
        echo "Homebrew not found — installing (non-interactive)..."
        NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

        # Add brew to PATH for this script (handles both Intel & Apple Silicon)
        if [[ -f "/opt/homebrew/bin/brew" ]]; then
            eval "$(/opt/homebrew/bin/brew shellenv)"
        elif [[ -f "/usr/local/bin/brew" ]]; then
            eval "$(/usr/local/bin/brew shellenv)"
        fi
    fi

    echo "Installing poppler (PDF tools)..."
    brew install poppler

# ---------- Linux ----------
elif [[ "$OS" == "Linux" ]]; then
    echo "Detected Linux"

    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y poppler-utils python3-pip
    elif command -v yum &> /dev/null; then
        sudo yum install -y poppler-utils python3-pip
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y poppler-utils python3-pip
    else
        echo "Unsupported Linux distribution. Please install poppler-utils and python3-pip manually."
        exit 1
    fi
else
    echo "Unsupported OS: $OS"
    echo "BP Office Hours Skill supports macOS and Linux."
    exit 1
fi

# ---------- Python libraries ----------
echo ""
echo "Installing Python libraries (pdfplumber, pypdf, python-pptx, python-docx, openpyxl)..."

PYTHON_PKGS="pdfplumber pypdf python-pptx python-docx openpyxl"

# Try regular install first, fall back to --trusted-host if SSL issues
if ! pip3 install --user $PYTHON_PKGS 2>/dev/null; then
    echo "Standard install failed (likely SSL cert issue) — retrying with --trusted-host fallback..."
    pip3 install --user \
        --trusted-host pypi.org \
        --trusted-host files.pythonhosted.org \
        --trusted-host pypi.python.org \
        $PYTHON_PKGS
fi

echo ""
echo "All dependencies installed."
echo ""
echo "Supported formats: PDF, PPTX, DOCX, XLSX, TXT, Markdown, images"
echo "BP Office Hours Skill is ready to use in Claude Code."
