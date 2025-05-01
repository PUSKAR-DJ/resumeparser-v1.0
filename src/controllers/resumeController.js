import { extractTextFromPDF } from "../services/pdfParser.js";
import { analyzeResume } from "../services/textAnalyzer.js";

export async function processResume(req, res) {
  try {
    const filePath = req.file.path;
    const resumeText = await extractTextFromPDF(filePath);
    const analysis = await analyzeResume(resumeText);

    res.json({ success: true, analysis });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error processing resume", error });
  }
}
