#!/bin/bash

# Create main directory
mkdir -p resume-parser-ai

# Create subdirectories
mkdir -p resume-parser-ai/node_modules
mkdir -p resume-parser-ai/public
mkdir -p resume-parser-ai/uploads
mkdir -p resume-parser-ai/src
mkdir -p resume-parser-ai/src/controllers
mkdir -p resume-parser-ai/src/services
mkdir -p resume-parser-ai/src/routes
mkdir -p resume-parser-ai/src/config

# Create files in the main directory
touch resume-parser-ai/package.json
touch resume-parser-ai/.env
touch resume-parser-ai/README.md

# Create files in the src/controllers directory
touch resume-parser-ai/src/controllers/resumeController.js

# Create files in the src/services directory
touch resume-parser-ai/src/services/geminiService.js
touch resume-parser-ai/src/services/pdfParser.js
touch resume-parser-ai/src/services/textAnalyzer.js

# Create files in the src/routes directory
touch resume-parser-ai/src/routes/resumeRoutes.js

# Create files in the src/config directory
touch resume-parser-ai/src/config/geminiConfig.js

# Create files in the src directory
touch resume-parser-ai/src/app.js

echo "Directory structure created successfully."
