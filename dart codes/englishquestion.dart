import 'package:flutter/material.dart';

class EnglishQuestion extends StatefulWidget {
  const EnglishQuestion({Key? key}) : super(key: key);

  @override
  _EnglishQuestionState createState() => _EnglishQuestionState();
}

class _EnglishQuestionState extends State<EnglishQuestion> {
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
                "1) I cough",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('Most days a week'),
                    value: 'Most days a week',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Several days a week'),
                    value: 'Several days a week',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Only with respiratory infection'),
                    value: 'Only with respiratory infection',
                    groupValue: _selectedOptionQuestion1,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion1 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Not at all'),
                    value: 'Not at all',
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
                "2) I bring up phlegm",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('Most days a week'),
                    value: 'Most days a week',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Several days a week'),
                    value: 'Several days a week',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Only with respiratory infection'),
                    value: 'Only with respiratory infection',
                    groupValue: _selectedOptionQuestion2,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion2 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Not at all'),
                    value: 'Not at all',
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
                "3) I have shortness of breath",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('Most days a week'),
                    value: 'Most days a week',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Several days a week'),
                    value: 'Several days a week',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Only with respiratory infection'),
                    value: 'Only with respiratory infection',
                    groupValue: _selectedOptionQuestion3,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion3 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Not at all'),
                    value: 'Not at all',
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
                "4) I have attacks of wheezing",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('Most days a week'),
                    value: 'Most days a week',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Several days a week'),
                    value: 'Several days a week',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Only with respiratory infection'),
                    value: 'Only with respiratory infection',
                    groupValue: _selectedOptionQuestion4,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Not at all'),
                    value: 'Not at all',
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
                "5) How many attacks of chest trouble did you have during last year?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('3 or more attacks'),
                    value: '3 or more attacks',
                    groupValue: _selectedOptionQuestion5,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion5 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('1 or 2 attacks'),
                    value: '1 or 2 attacks',
                    groupValue: _selectedOptionQuestion5,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion5 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Not at all'),
                    value: 'Not at all',
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
                "6) How often do you have good days (few with respiratory problems)?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('No good days'),
                    value: 'No good days',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('A few good days'),
                    value: 'A few good days',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Most days are good'),
                    value: 'Most days are good',
                    groupValue: _selectedOptionQuestion6,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion6 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Every day is good'),
                    value: 'Every day is good',
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
                "7) If you have a wheeze, is it worse when you get up in the morning?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text('Yes'),
                    value: 'Yes',
                    groupValue: _selectedOptionQuestion7,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion7 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('No'),
                    value: 'No',
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
                "8) How could you describe your respiratory problems?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  RadioListTile(
                    title: Text(
                        'Cause me a lot of problems or are the most important physical problems I have'),
                    value: 'Cause me a lot of problems or are the most important physical problems I have',
                    groupValue: _selectedOptionQuestion8,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion8 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Cause me a few problems'),
                    value: 'Cause me a few problems',
                    groupValue: _selectedOptionQuestion8,
                    onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion8 = value as String?;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text('Cause no problems'),
                    value: 'Cause no problems',
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
                '9) Question about what activities usually make you feel breathless. For each statement, please tell me which applies to you these days.',
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
                '10) Some more questions about your cough and breathlessness. For each statement, please tell me which applies to you these days.',
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
                '11) Questions about other effects that your chest trouble may have on you. For each statement, please tell me which applies you these days',
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
                '12) These are questions about how your activities might be affected by your respiratory problems. For each statement, please tell me which applies toy you because of your breathing',
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
                  "14)how do your respiratory problems affects you?Please pick one response",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                  RadioListTile(
                     title: Text('They do not stop me from doing anything i would like to do'),
                      value: 'They do not stop me from doing anything i would like to do',
                      groupValue: _selectedOptionQuestion4,
                      onChanged: (value) {
                      setState(() {
                      _selectedOptionQuestion4 = value as String?;
                    });
                   },
                  ),
                  RadioListTile(
                    title: Text('They do not stop me from doing one or two things i would like to do'),
                    value: 'They do not stop me from doing one or two things i would like to do',
                     groupValue: _selectedOptionQuestion4,
                      onChanged: (value) {
                      setState(() {
                        _selectedOptionQuestion4 = value as String?;
                       });
                    },
                ),
                      RadioListTile(
                        title: Text('They stop me from doing most of the things i would like to do'),
                        value: 'They stop me from doing most of the things i would like to dok',
                        groupValue: _selectedOptionQuestion4,
                        onChanged: (value) {
                          setState(() {
                            _selectedOptionQuestion4 = value as String?;
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text('They stop me from doing everything i would like to do'),
                        value: 'They stop me from doing everything i would like to do',
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
        return 'a) Washing or\ndressing yourself ';
      case 1:
        return 'b) Walking around\nthe house';
      case 2:
        return 'c)Walking outside\non the level\nground';
      case 3:
        return 'd) Walking up a     \nflight of\nstairs';
      case 4:
        return 'e) Walking up        \nhills   ';
      default:
        return '';
    }
  }

  String _getQuestion2(int index) {
    switch (index) {
      case 0:
        return 'a) Coughing hurts ';
      case 1:
        return 'b) Coughing           \nmakes me tired';
      case 2:
        return 'c) I am short of     \nbreathe when\nI talk';
      case 3:
        return 'd) I am short of     \nbreathe when\nI bend over';
      case 4:
        return 'e) I get exhausted \neasily';
      default:
        return '';
    }
  }

  String _getQuestion3(int index) {
    switch (index) {
      case 0:
        return 'a) my cough or   \nbreathing is\nembarrasing in\npublic';
      case 1:
        return 'b) my respiratory\nproblems are a\nnuisance to my\nfamily,friends,\nor neighbors';
      case 2:
        return 'c) I get afraid or  \n panic when i \ncannot catch my\nbreathe';
      case 3:
        return 'd) I feel that i am\nnot in control of \nmy respiratory\nproblems';
      case 4:
        return 'e) I have become\nfrail or an invalid\nbecuase of my\n respiratory\n problems';
      case 5:
        return 'f) Exercise is not \nsafe for me';
      case 6:
        return 'g) Everything       \nseems too\nmuch of an\neffort';
        default:
        return '';
    }
  }

  String _getQuestion4(int index) {
    switch (index) {
      case 0:
        return 'a)I take a long time\nto get washed\nor dressed';
      case 1:
        return 'b)I cannot take a    \nbath or shower\nor i take a long\ntime to do';
      case 2:
        return 'c)I walk slower\nthan other people,  \nor i stop to rest';
      case 3:
        return 'd)Jobs such as    \nhouse chores take \na long time,or\ni have to stop\nto rest';
      case 4:
        return 'e)If i walk up one   \nflight of stairs,I   \nhave to stop \nor slow down';
      case 5:
        return 'f)if i hurry or           \nwalk fast,i have\nto go slowly\nor stop';
      case 6:
        return 'g)my breathing      \nmakes it difficult\nto do things such\nas walk up hills\n,carry things up\nstairs,do light\ngardening such\nas wedding,\ndance,bowl,\nor play golf';
      case 7:
        return 'h)my breathing      \nmakes it difficult\nto do things\nsuch as carry\nheavy load\ndig garden or\nshovel snow,jog\nor walk briskly\n,play tennis\nor swim';
        default:
        return '';
    }
  }

  String _getQuestion5(int index) {
    switch (index) {
      case 0:
        return 'a)I cannot play      \nsports or do\nother physical\nactivities';
      case 1:
        return 'b)I cannot go out  \nfor entertainment\nor recreation';
      case 2:
        return 'c)i cannot go out  \nof the house to\ndo shopping';
      case 3:
        return 'd)i cannot do\nhousehold chores ';
      case 4:
        return 'e)i cannot move    \nfar from my bed\nor chair';
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
            SizedBox(width: 10.0),
            Text(
              question,
              style: TextStyle(fontSize: 14.0),
            ),
            SizedBox(width: 20.0),
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
                      Text('True'),
                    ],
                  ),
                ),
                SizedBox(width: 10.0),
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
                      Text('False'),
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