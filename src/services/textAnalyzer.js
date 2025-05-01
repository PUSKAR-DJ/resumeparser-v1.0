import genAI from "../config/geminiConfig.js";

export async function analyzeResume(resumeText) {
  const model = genAI.getGenerativeModel({ model: "gemini-pro" });

  const prompt = `
    Extract details from this resume:
    - Name
    - Contact Information
    - Skills
    - Work Experience
    - Education
    - Certifications
    - Summary

    Resume Text: ${resumeText}
  `;

  const result = await model.generateContent(prompt);
  return result.response.text();
}
