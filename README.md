# Source Code for the App Used in The Flutter Festival Saudi Arabia Session (Arabic) & The Flutter Festival Valsad & Surat Session (English)

<a href="https://www.youtube.com/watch?v=mntW9gU46OM" target="blank">
<img src="https://user-images.githubusercontent.com/50345358/154803991-a54b540f-784d-45ef-891a-72bac64b09d6.jpeg" alt="Flutter Festival Saudi Arabia Cover" width="50%"/>
</a>

# Inside The App

### Home Page
<img src="https://user-images.githubusercontent.com/50345358/154804146-15213604-f2d4-401d-9ac2-5035d6a778ac.png" alt="Home Page" width="250"/>

1. Implicit Animations: Animations that do not need an **AnimationController**
    1. Built-in animation widgets (**AnimatedContainer**, **AnimatedOpacity**, ..etc)
    2. Custom animation widgets with **TweenAnimationBuilder**
2. Explicit Animations: more complex but customizable animations that use an **AnimationController**
    1. Built-in widgets that use **AnimationController** (**Transition** widgets)
    2. Advanced custom animation widgets that use an **AnimationController** (**AnimatedWidget** & **AnimatedBuilder**)


## 1.1 Implicit Animations - Built-In Widgets
<img src="https://user-images.githubusercontent.com/50345358/154804609-e6f9beb7-5246-42f5-a653-64dc2e6179cf.gif" alt="Flutter Implicit Animations Examples" width="250" />


Examples using the following widgets:
1. [**AnimatedContainer**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/implicit_animations/widgets/animated_container_example.dart)
2. [**AnimatedPositioned** (or **AnimatedPositionedDirectional**)](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/implicit_animations/widgets/animated_position_directional_example.dart)
3. [**AnimatedDefaultTextStyle**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/implicit_animations/widgets/animated_position_directional_example.dart)
4. [**AnimatedAlign**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/implicit_animations/widgets/animated_align_and_opacity_example.dart)
5. [**AnimatedOpacity**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/implicit_animations/widgets/animated_align_and_opacity_example.dart)

## 1.2 Implicit Animations - Custom
[Using the **TweenAnimationBuilder** widget](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/implicit_animations/widgets/tween_animation_builder_example.dart)

<img src="https://user-images.githubusercontent.com/50345358/154804860-c463b6f3-2ed0-4166-ab84-2cbb766e5006.gif" alt="Flutter TweenAnimationBuilder widget" width="250"/>


## 2.1 Explicit Animations - Built-in Widgets
<img src="https://user-images.githubusercontent.com/50345358/154805081-8e665296-3c68-4007-b7a4-f7001236afcd.gif" alt="Flutter TweenAnimationBuilder widget" width="250"/>

Examples using the following widgets
1. [**RotationTransition**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/explicit_animations/widgets/rotation_and_size_transition_example.dart)
2. [**SizeTransition**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/explicit_animations/widgets/rotation_and_size_transition_example.dart)
3. [**AlignTransition**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/explicit_animations/widgets/align_transition_example.dart)

## 2.2 Explicit Animations - Custom
Using [**AnimatedBuilder**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/explicit_animations/widgets/animated_builder_example.dart) & [**AnimatedWidget**](https://github.com/Roaa94/flutter-festival-session/blob/main/lib/ui/explicit_animations/widgets/animated_widget_example.dart)

<img src="https://user-images.githubusercontent.com/50345358/154805182-2f568c45-ea64-4219-84d2-9461774fbd20.gif" alt="Flutter TweenAnimationBuilder widget" width="250"/>
