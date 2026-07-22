/* Shared answer text formatting.
   Seeded answers indent their body paragraph and separate sections with blank
   lines. Strip both so the pre-wrap render puts each section and each source on
   its own line with nothing spare between them. */
function formatAnswerText(text) {
  return (text || '')
    .replace(/^[ \t]+/gm, '')
    .replace(/\n{2,}/g, '\n')
    .trim();
}
