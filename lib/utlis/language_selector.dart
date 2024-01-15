import 'package:flutter/material.dart';
import 'package:kheloo/const/colors.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LanguageDivider(),
        Container(
          color: AppColors.languageStripe,
          width: MediaQuery.of(context).size.width,
          height: 60,
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //   fit: BoxFit.fitWidth,
          //   image: Image.asset(
          //     Img.langStrip,
          //     width: MediaQuery.of(context).size.width,
          //     fit: BoxFit.fitWidth,
          //   ).image,
          // )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AddLanguage('English'),
              const AddLanguage('हिन्दी'),
              const AddLanguage('తెలుగు'),
              const AddLanguage('ಕನ್ನಡ'),
              // const AddLanguage('मराठी'),
              InkWell(
                  onTap: () {
                    showDialog<void>(
                      context: context,
                      builder: (context) => Dialog(
                        backgroundColor: AppColors.loginColor,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.alertLang,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            border: Border.all(
                              color: AppColors.loginColor,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Select Language",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: const Icon(Icons.close))
                                  ],
                                ),
                              ),
                              Container(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: const [
                                      SelectLang(langName: 'English'),
                                      SelectLang(langName: 'हिन्दी'),
                                      SelectLang(langName: 'తెలుగు'),
                                      SelectLang(langName: 'ಕನ್ನಡ'),
                                      SelectLang(langName: 'मराठी'),
                                      SelectLang(langName: 'தமிழ்'),
                                      SelectLang(langName: 'മലയാളം'),
                                      SelectLang(langName: 'ગુજરાતી'),
                                      SelectLang(langName: 'বাংলা'),
                                      SelectLang(langName: 'ଓଡିଆ'),
                                      SelectLang(langName: 'سنڌي'),
                                      SelectLang(langName: 'बिहारी'),
                                      SelectLang(langName: 'اردو'),
                                      SelectLang(langName: 'नेपाली'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    '....',
                    style: TextStyle(fontSize: 14, color: AppColors.loginColor),
                  )),
            ],
          ),
        ),
        const LanguageDivider(),
      ],
    );
  }
}

class AddLanguage extends StatelessWidget {
  const AddLanguage(
    this.langName, {
    super.key,
  });
  final String langName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Change to $langName");
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Text(
          langName,
          style: TextStyle(fontSize: 14, color: AppColors.loginColor),
        ),
      ),
    );
  }
}

class LanguageDivider extends StatelessWidget {
  const LanguageDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.loginColor,
      height: 3,
      width: MediaQuery.of(context).size.width,
    );
  }
}

class SelectLang extends StatelessWidget {
  const SelectLang({super.key, required this.langName});
  final String langName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("$langName tapped");
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.alertLang,
          border: Border.all(color: Colors.white, width: 1),
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
          child: Text(
            langName,
            style: TextStyle(fontSize: 14, color: AppColors.loginColor),
          ),
        ),
      ),
    );
  }
}
