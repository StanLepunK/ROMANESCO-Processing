ROMANESC0 1.2.0.30
ITEM
ROMANESCO PROCESSING ENVIRONMENT 
--
IMPORT TEXT
--
Romanesco call fileText.txt from the folder Karaoke from the preferences folder,
so you can write on it when you use Romanesco split function
"*" to separate the chapter 
"/" to separate the sentence

** When you code take a care to save the karaoke.txt in each folder of dev (Scene, Prescene, Mirroir) **





// OBJECT METHOD or PARAMETER

load_txt(ID_item) use to load and update the text

String text_import[ID_item] raw text selected from the folder preferences/Karaoke

int numChapters(String text_import[ID_item]) give the number of the chapter of your raw text








// GENERAL METHOD or PARAMETER

textPath[which_text] ; text from the dropdown menu

int numMaxSentencesByChapter(String text_import[ID_item]) give the number of sentences of the chapter have the most sentences

String whichSentence(String txt, int whichChapter, int whichSentence) return String







// DEPRECATED / UNKNOW / USELESS ????

textPath[whichText] ; text from the dropdown menu


