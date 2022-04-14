import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ThemeDemo(),
      body: Theme(
        data: Theme.of(context).copyWith( // 只覆盖这里设置的
        //data: ThemeData( //全部覆盖
          primaryColor: Colors.lightGreen,
        ),
        // child: const ThemeDemo(),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // TextFieldDemo(),
              RegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}

// RegisterForm
class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final registerFormState = GlobalKey<FormState>();
  String? username, password;
  bool autoValidate = false;

  void submitRegisterForm() {

    if (registerFormState.currentState!.validate()) { //表单验证
      registerFormState.currentState!.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Register'))
      );

      // ScaffoldMessenger.of(context).showMaterialBanner(
      //   const MaterialBanner(content: Text("afdf"),
      //     actions: [
            
      //     ],
      //   )
      // );
    } 
  }

  String? validatorUsername(value) {
    debugPrint('validatorUsername: $value');
    if (value.toString().isEmpty) {
      debugPrint('username is required');
      return 'username is required';
    }
    return null;
  }

  String? validatorPassword(value) {
    if (value.toString().isEmpty) {
      return 'password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormState,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Username',
              helperText: ''
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validatorUsername,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          TextFormField(
            obscureText: true, // * 号显示
            decoration: const InputDecoration(
              labelText: 'Password',
              helperText: ''
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validatorPassword,
            autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
          const SizedBox(height: 32.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton( // TextButton
              style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                //backgroundColor: MaterialStateProperty.resolveAs(value, states)
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.focused) && 
                        !states.contains(MaterialState.pressed)) {
                      // 获取焦点时的颜色
                      return Colors.blue;
                    } else if (states.contains(MaterialState.pressed)) {
                      // 按下时的颜色
                      return Colors.green;
                    }
                    // 默认状态颜色
                    return Theme.of(context).colorScheme.secondary;
                  }
                )
              ),
              child: const Text('Register', style: TextStyle(color: Colors.white)),
              onPressed: submitRegisterForm
            ),
          )
        ]
      ),
    );
  }
}

// TextFieldDemo
class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({ Key? key }) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    textEditingController.text = '123';
    textEditingController.addListener(() {
      debugPrint('TextEditingController.addListener: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {
        debugPrint('TextField.onChanged:' + value);
      },
      decoration: const InputDecoration(
        icon: Icon(Icons.subject),
        labelText: '123', // //label: Text('123'),
        hintText: '没有输入时，默认提示文字',
        border: OutlineInputBorder(), // 输入框边框 InputBorder.none
        filled: true, // 是否填充背景
        fillColor: Colors.grey // 背景颜色
      ),
    );
  }
}

// ThemeDemo
class ThemeDemo extends StatelessWidget {
  const ThemeDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // 获取 main 里面 theme 中 设置的 颜色属性
      color: Theme.of(context).primaryColor,
    );
  }
}