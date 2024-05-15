import 'package:flutter/material.dart';

class TamilQuestion extends StatefulWidget {
  const TamilQuestion({Key? key}) : super(key: key);

  @override
  _TamilQuestionState createState() => _TamilQuestionState();
}

class _TamilQuestionState extends State<TamilQuestion> {
  List<bool?> checkBoxValues9 = [null, null, null, null, null];
  List<bool?> checkBoxValues10 = [null, null, null, null, null];
  List<bool?> checkBoxValues11 = [null, null, null, null, null,null,null];
  List<bool?> checkBoxValues12 = [null, null, null, null, null,null,null,null];
  List<bool?> checkBoxValues13 = [null, null, null, null, null];

  String? _selectedOptionQuestion1;
  String? _selectedOptionQuestion2;
  String? _selectedOptionQuestion3;
  String? _selectedOptionQuestion4;
  String? _selectedOptionQuestion5;
  String? _selectedOptionQuestion6;
  String? _selectedOptionQuestion7;
  String? _selectedOptionQuestion8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "St George's respiratory Questions",
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan.shade300, Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.0],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1) எனக்கு இருமல்",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('வாரத்தில் பெரும்பாலான நாட்கள்'),
                    value: 'வாரத்தில் பெரும்பாலான நாட்கள்',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('வாரத்தில் பல நாட்கள்'),
                    value: 'வாரத்தில் பல நாட்கள்',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('சுவாச நோய்த்தொற்றுடன் மட்டுமே'),
                    value: 'சுவாச நோய்த்தொற்றுடன் மட்டுமே',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எப்போதும் இல்லை'),
                    value: 'எப்போதும் இல்லை',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "2) நான் கபத்தை வளர்க்கிறேன்",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('வாரத்தில் பெரும்பாலான நாட்கள்'),
                    value: 'வாரத்தில் பெரும்பாலான நாட்கள்',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('வாரத்தில் பல நாட்கள்'),
                    value: 'வாரத்தில் பல நாட்கள்',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('சுவாச நோய்த்தொற்றுடன் மட்டுமே'),
                    value: 'சுவாச நோய்த்தொற்றுடன் மட்டுமே',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எப்போதும் இல்லை'),
                    value: 'எப்போதும் இல்லை',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              // Similarly add RadioListTile for other questions 3 to 8
              Text(
                "3) எனக்கு மூச்சுத் திணறல் உள்ளது",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('வாரத்தில் பெரும்பாலான நாட்கள்'),
                    value: 'வாரத்தில் பெரும்பாலான நாட்கள்',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('வாரத்தில் பல நாட்கள்'),
                    value: 'வாரத்தில் பல நாட்கள்',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('சுவாச நோய்த்தொற்றுடன் மட்டுமே'),
                    value: 'சுவாச நோய்த்தொற்றுடன் மட்டுமே',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எப்போதும் இல்லை'),
                    value: 'எப்போதும் இல்லை',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "4) எனக்கு மூச்சுத்திணறல் தாக்குதல்கள் உள்ளன",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('வாரத்தில் பெரும்பாலான நாட்கள்'),
                    value: 'வாரத்தில் பெரும்பாலான நாட்கள்',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('வாரத்தில் பல நாட்கள்'),
                    value: 'வாரத்தில் பல நாட்கள்',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('சுவாச நோய்த்தொற்றுடன் மட்டுமே'),
                    value: 'சுவாச நோய்த்தொற்றுடன் மட்டுமே',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எப்போதும் இல்லை'),
                    value: 'எப்போதும் இல்லை',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "5) கடந்த ஆண்டில் உங்களுக்கு எத்தனை நெஞ்சு வலி ஏற்பட்டது?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('3 அல்லது அதற்கு மேற்பட்ட தாக்குதல்கள்'),
                    value: '3 அல்லது அதற்கு மேற்பட்ட தாக்குதல்கள்',
                    groupValue: _selectedOptionQuestion5,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion5 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('1 அல்லது 2 தாக்குதல்கள்'),
                    value: '1 அல்லது 2 தாக்குதல்கள்',
                    groupValue: _selectedOptionQuestion5,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion5 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எப்போதும் இல்லை'),
                    value: 'எப்போதும் இல்லை',
                    groupValue: _selectedOptionQuestion5,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion5 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "6) உங்களுக்கு எவ்வளவு அடிக்கடி நல்ல நாட்கள் உள்ளன (சில சுவாச பிரச்சினைகள் உள்ளன)?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('நல்ல நாட்கள் இல்லை'),
                    value: 'நல்ல நாட்கள் இல்லை',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('சில நல்ல நாட்கள்'),
                    value: 'சில நல்ல நாட்கள்',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('பெரும்பாலான நாட்கள் நன்றாக இருக்கும்'),
                    value: 'பெரும்பாலான நாட்கள் நன்றாக இருக்கும்',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('ஒவ்வொரு நாளும் நல்ல நாளே'),
                    value: 'ஒவ்வொரு நாளும் நல்ல நாளே',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "7) உங்களுக்கு மூச்சுத்திணறல் இருந்தால், நீங்கள் காலையில் எழுந்தவுடன் மோசமாக இருக்கிறதா?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('ஆம்'),
                    value: 'ஆம்',
                    groupValue: _selectedOptionQuestion7,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion7 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('இல்லை'),
                    value: 'இல்லை',
                    groupValue: _selectedOptionQuestion7,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion7 = value as String?;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(height: 15),

              Text(
                "8) உங்கள் சுவாசப் பிரச்சினைகளை எவ்வாறு விவரிக்க முடியும்?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text(
                        'எனக்கு நிறைய பிரச்சினைகளை ஏற்படுத்துகின்றன அல்லது எனக்கு இருக்கும் மிக முக்கியமான உடல் பிரச்சினைகள்'),
                    value: 'எனக்கு நிறைய பிரச்சினைகளை ஏற்படுத்துகின்றன அல்லது எனக்கு இருக்கும் மிக முக்கியமான உடல் பிரச்சினைகள்',
                    groupValue: _selectedOptionQuestion8,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion8 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எனக்கு சில பிரச்சனைகளை ஏற்படுத்தும்'),
                    value: 'எனக்கு சில பிரச்சனைகளை ஏற்படுத்தும்',
                    groupValue: _selectedOptionQuestion8,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion8 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('எந்த பிரச்சனையும் இல்லை'),
                    value: 'எந்த பிரச்சனையும் இல்லை',
                    groupValue: _selectedOptionQuestion8,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion8 = value as String?;
                      });
                    },
                  ),
                ],
              ),
              Text(
                '9) எந்த நடவடிக்கைகள் பொதுவாக உங்களுக்கு மூச்சுத் திணறலை ஏற்படுத்துகின்றன என்பது பற்றிய கேள்வி. ஒவ்வொரு கூற்றுக்கும், இந்த நாட்களில் உங்களுக்கு எது பொருந்தும் என்று எனக்குக் கூறுங்கள்.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              for (int i = 0; i < checkBoxValues9.length; i++)
                _buildQuestion(
                  _getQuestion(i),
                  checkBoxValues9[i],
                  i,
                  9,
                ),
              Text(
                '10) உங்கள் இருமல் மற்றும் மூச்சுத் திணறல் பற்றி மேலும் சில கேள்விகள். ஒவ்வொரு கூற்றுக்கும், இந்த நாட்களில் உங்களுக்கு எது பொருந்தும் என்று எனக்குக் கூறுங்கள்.',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              for (int i = 0; i < checkBoxValues10.length; i++)
                _buildQuestion(
                  _getQuestion2(i),
                  checkBoxValues10[i],
                  i,
                  10,
                ),
              Text(
                '11) உங்கள் மார்புக் கஷ்டம் உங்களுக்கு ஏற்படுத்தக்கூடிய பிற விளைவுகளைப் பற்றிய கேள்விகள். ஒவ்வொரு வாசகத்திற்கும், இந்த நாட்களில் எது உங்களுக்குப் பொருந்தும் என்று சொல்லுங்கள்',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              for (int i = 0; i < checkBoxValues11.length; i++)
                _buildQuestion(
                  _getQuestion3(i),
                  checkBoxValues11[i],
                  i,
                  11,
                ),
              Text(
                '12) உங்கள் சுவாசப் பிரச்சினைகளால் உங்கள் செயல்பாடுகள் எவ்வாறு பாதிக்கப்படலாம் என்பது பற்றிய கேள்விகள் இவை. ஒவ்வொரு வாக்கியத்திற்கும், உங்கள் சுவாசத்தின் காரணமாக எது உங்களுக்குப் பொருந்தும் என்று சொல்லுங்கள்',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              for (int i = 0; i < checkBoxValues12.length; i++)
                _buildQuestion(
                  _getQuestion4(i),
                  checkBoxValues12[i],
                  i,
                  12,
                ),
              Text(
                '13) We should like to know how your chest usually effects your daily life. For each statement please tell me which applies to you because of your breathing',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10.0),
              for (int i = 0; i < checkBoxValues13.length; i++)
                _buildQuestion(
                  _getQuestion5(i),
                  checkBoxValues13[i],
                  i,
                  13,
                ),
              Text(
                "14)உங்கள் சுவாச பிரச்சினைகள் உங்களை எவ்வாறு பாதிக்கின்றன? ஒரு பதிலைத் தேர்ந்தெடுக்கவும்",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('நான் செய்ய விரும்பும் எதையும் செய்வதிலிருந்து அவை என்னைத் தடுப்பதில்லை'),
                    value: 'நான் செய்ய விரும்பும் எதையும் செய்வதிலிருந்து அவை என்னைத் தடுப்பதில்லை',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('நான் செய்ய விரும்பும் ஒன்று அல்லது இரண்டு விஷயங்களைச் செய்வதிலிருந்து அவை என்னைத் தடுக்காது'),
                    value: 'நான் செய்ய விரும்பும் ஒன்று அல்லது இரண்டு விஷயங்களைச் செய்வதிலிருந்து அவை என்னைத் தடுக்காது',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('நான் செய்ய விரும்பும் பெரும்பாலான விஷயங்களைச் செய்வதிலிருந்து அவை என்னைத் தடுக்கின்றன'),
                    value: 'நான் செய்ய விரும்பும் பெரும்பாலான விஷயங்களைச் செய்வதிலிருந்து அவை என்னைத் தடுக்கின்றன',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('நான் செய்ய விரும்பும் அனைத்தையும் செய்ய அவர்கள் என்னைத் தடுக்கிறார்கள்'),
                    value: 'நான் செய்ய விரும்பும் அனைத்தையும் செய்ய அவர்கள் என்னைத் தடுக்கிறார்கள்',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SizedBox(
          width: double.infinity, // Make button stretch horizontally
          height: 40,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF66D0D0), // Change the button color here
            ),
            child: Text(
              'SUBMIT',
              style: TextStyle(color: Colors.white, fontSize: 17), // Change the text color here
            ),
          ),
        ),
      ),
    );
  }

  String _getQuestion(int index) {
    switch (index) {
      case 0:
        return 'அ) உங்களை  \n  கழுவுதல் அல்லது     \nஆடை அணிதல்';
      case 1:
        return 'ஆ) வீட்டைச் சுற்றி       \nநடப்பது';
      case 2:
        return 'இ)சமமான தரையில் \n  வெளியே நடப்பது';
      case 3:
        return 'ஈ) படிக்கட்டுகளில்      \nஏறி இறங்கி';
      case 4:
        return 'உ)மலைகளில் நடந்து\nசெல்வது';
      default:
        return '';
    }
  }

  String _getQuestion2(int index) {
    switch (index) {
      case 0:
        return 'அ)  இருமல்                 \nவலிக்கிறது';
      case 1:
        return 'ஆ)இருமல் என்னை\nசோர்வடையச்\nசெய்கிறது';
      case 2:
        return 'இ)நான் பேசும்போது\nஎனக்கு மூச்சுத்\nதிணறல் ஏற்படுகிறது';
      case 3:
        return 'ஈ)நான் குனியும்போ\n-து எனக்கு மூச்சுத்\nதிணறல் ஏற்படுகிறது';
      case 4:
        return 'உ) நான் எளிதாக         \nசோர்வடைகிறேன்';
      default:
        return '';
    }
  }

  String _getQuestion3(int index) {
    switch (index) {
      case 0:
        return 'அ) எனது இருமல்\nஅல்லது சுவாசம்\nபொதுவில் சங்கடமா\n-க இருக்கிறது';
      case 1:
        return 'ஆ)எனது சுவாசப்\nபிரச்சினைகள் எனது\nகுடும்பம், நண்பர்கள்\nஅல்லது \nஅயலவர்களுக்கு ஒரு\n தொல்லை';
      case 2:
        return 'இ) என் சுவாசத்தைப்\nபிடிக்க முடியாதபோது\nநான் பயப்படுகிறேன்\nஅல்லது \nபீதியடைகிறேன்';
      case 3:
        return 'ஈ) எனது சுவாசப்\nபிரச்சினைகளை \nநான் கட்டுப்படுத்தவி\n-ல்லை என \nஉணர்கிறேன்';
      case 4:
        return 'உ)எனது சுவாசப்\n பிரச்சினைகள் \nகாரணமாக \nநான் பலவீனமடைந்\n-துள்ளேன் அல்லது\nநோயாளியாகிவிட்\n-டேன்';
      case 5:
        return 'ஊ)உடற்பயிற்சி\nஎனக்கு பாதுகாப்பா\n-னது அல்ல';
      case 6:
        return 'எ)எல்லாமே \nமிகையான முயற்சி\n-யாகத் தெரிகிறது';
      default:
        return '';
    }
  }

  String _getQuestion4(int index) {
    switch (index) {
      case 0:
        return 'அ)நான் குளிப்பதற்\n-கோ அல்லது ஆடை\n அணிவதற்கோ\nநீண்ட நேரம்\nஎடுத்துக்கொள்கி\n-றேன்';
      case 1:
        return 'ஆ)என்னால் \nகுளிக்கவோ\n அல்லது குளிக்கவோ\nமுடியாது அல்லது\n நான் செய்ய நீண்ட\nநேரம் எடுத்துக்கொள்\n-கிறேன்';
      case 2:
        return 'இ)நான் மற்றவர்கள\nவிட மெதுவா\nநடக்கிறேன்,அல்லது\nநான் ஓய்வெடுப்பதை\n நிறுத்துகிறேன்';
      case 3:
        return 'ஈ) வீட்டு வேலைகள்\nபோன்ற வேலைகள்\nநீண்ட நேரம் எடுக்\n-கும்,அல்லது நான்\nஓய்வெடுக்க நிறுத்த\n வேண்டும்';
      case 4:
        return 'உ)நான் ஒரு படிக்க\n-ட்டு ஏறினால், நான்\nநிறுத்த வேண்டும்\nஅல்லது மெதுவாக\nசெல்ல வேண்டும்';
      case 5:
        return 'ஊ)நான் வேகமாக\nநடந்தாலோ அல்லது\nவேகமாக நடந்தாலோ\n நான் மெதுவாக செல\n வேண்டும் அல்லது\n நிறுத்த வேண்டும்';
      case 6:
        return 'எ)மலைகளில்\n நடப்பது\nமாடிப்படிகளில்\nபொருட்களை \nஎடுத்துச் செல்வது,\nதிருமணம், நடனம்,\nகிண்ணம் அல்லது\nகோல்ஃப்\nவிளையாடுவது \nபோன்ற லேசான \nதோட்டக்கலை\nபோன்ற\n விஷயங்களைச்\nசெய்வது எனது \nசுவாசத்தால் \nகடினமாக உள்ளது';
      case 7:
        return 'ஏ) எனது சுவாசம்\n கனமான தோட்டம்\n அல்லது மண்வெட்டி\n பனியை சுமப்பது, \nஜாகிங் அல்லது \nவிறுவிறுப்பாக\nநடப்பது, டென்னிஸ்\nவிளையாடுவது\nஅல்லது நீச்சல்\nபோன்ற \nவிஷயங்களைச்\nசெய்வதை\nகடினமாக்குகிறது';
      default:
        return '';
    }
  }

  String _getQuestion5(int index) {
    switch (index) {
      case 0:
        return 'அ) என்னால்\n விளையாடவோ\nஅல்லது பிற உடல்\nசெயல்பாடுகளில்\nஈடுபடவோ முடியாது';
      case 1:
        return 'ஆ) பொழுதுபோக்கு\nஅல்லது\nபொழுதுபோக்கிற்\n-காக என்னால் \nவெளியே\nசெல்ல முடியாது';
      case 2:
        return 'இ)நான் ஷாப்பிங்\nசெய்ய வீட்டை விட்டு\nவெளியே செல்ல\n முடியாது';
      case 3:
        return 'ஈ) என்னால் வீட்டு\nவேலைகளைச்\nசெய்ய முடியாது ';
      case 4:
        return 'உ) எனது படுக்கை\nஅல்லது \nநாற்காலியில்\nஇருந்து என்னால்\n வெகு தூரம்\n நகர முடியாது';
      default:
        return '';
    }
  }

  Widget _buildQuestion(String question,
      bool? checkBoxValue,
      int index,
      int questionSet,) {
    List<bool?> checkBoxValues;
    switch (questionSet) {
      case 9:
        checkBoxValues = checkBoxValues9;
        break;
      case 10:
        checkBoxValues = checkBoxValues10;
        break;
      case 11:
        checkBoxValues = checkBoxValues11;
        break;
      case 12:
        checkBoxValues = checkBoxValues12;
        break;
      case 13:
        checkBoxValues = checkBoxValues13;
        break;
      default:
        throw Exception("Invalid questionSet value");
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 0.0),
            Text(
              question,
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(width: 0.0),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      checkBoxValues[index] = true;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        value: checkBoxValue == true,
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValues[index] = value;
                          });
                        },
                      ),
                      Text('ஆம்',style: TextStyle(fontSize:10 ),),
                    ],
                  ),
                ),
                SizedBox(width: 3.0),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      checkBoxValues[index] = false;
                    });
                  },
                  child: Row(
                    children: [
                      Checkbox(
                        value: checkBoxValue == false,
                        onChanged: (bool? value) {
                          setState(() {
                            checkBoxValues[index] = !value!;
                          });
                        },
                      ),
                      Text('இல்லை',style: TextStyle(fontSize: 10),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.0),
      ],
    );
  }
}