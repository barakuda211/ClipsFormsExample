using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using ClipsFormsExample;

namespace AutoFormsExample
{
    public class VoiceR
    {
        //private CLIPSNET.Environment clips = new CLIPSNET.Environment();
        /// <summary>
        /// Распознаватель речи
        /// </summary>
        public Microsoft.Speech.Synthesis.SpeechSynthesizer synth;

        /// <summary>
        /// Распознавалка
        /// </summary>
        public Microsoft.Speech.Recognition.SpeechRecognitionEngine recogn;

        public string recogn_text;

        ExpertSystemForm ex;

        public VoiceR(ExpertSystemForm e)
        {
            ex = e;

            synth = new Microsoft.Speech.Synthesis.SpeechSynthesizer();
            synth.SetOutputToDefaultAudioDevice();

            var RecognizerInfo = Microsoft.Speech.Recognition.SpeechRecognitionEngine.InstalledRecognizers().Where(ri => ri.Culture.Name == "ru-RU").FirstOrDefault();
            recogn = new Microsoft.Speech.Recognition.SpeechRecognitionEngine(RecognizerInfo);
            recogn.SpeechRecognized += Recogn_SpeechRecognized;
            recogn.SetInputToDefaultAudioDevice();
        }

        public void NewRecognPhrases(List<string> phrases)
        {
            //outputBox.Text += "Стартуем распознавание" + System.Environment.NewLine;
            var Choises = new Microsoft.Speech.Recognition.Choices();
            Choises.Add(phrases.ToArray());

            var gb = new Microsoft.Speech.Recognition.GrammarBuilder();
            var RecognizerInfo = Microsoft.Speech.Recognition.SpeechRecognitionEngine.InstalledRecognizers().Where(ri => ri.Culture.Name == "ru-RU").FirstOrDefault();
            gb.Culture = RecognizerInfo.Culture;
            gb.Append(Choises);

            var gr = new Microsoft.Speech.Recognition.Grammar(gb);
            recogn.LoadGrammar(gr);
            recogn.RequestRecognizerUpdate();
            recogn.RecognizeAsync(Microsoft.Speech.Recognition.RecognizeMode.Multiple);
        }

        public void Recogn_SpeechRecognized(object sender, Microsoft.Speech.Recognition.SpeechRecognizedEventArgs e)
        {
            recogn.RecognizeAsyncStop();
            recogn.RecognizeAsyncCancel();

            recogn_text = e.Result.Text;
            ex.df.Set_Answer(e.Result.Text);
            //ExpertSystemForm

            //outputBox.Text += "Ваш голос распознан!" + System.Environment.NewLine;
            //clips.Eval("(assert (answer " + e.Result.Text + "))");
            //clips.Eval("(assert (clearmessage))");
            //outputBox.Text += "Продолжаю выполнение!" + System.Environment.NewLine;
            //clips.Run();
            //HandleResponse();
        }
    }
}
