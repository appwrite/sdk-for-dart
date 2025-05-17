part of '../../enums.dart';

enum Framework {
    analog(value: 'analog'),
    angular(value: 'angular'),
    nextjs(value: 'nextjs'),
    react(value: 'react'),
    nuxt(value: 'nuxt'),
    vue(value: 'vue'),
    sveltekit(value: 'sveltekit'),
    astro(value: 'astro'),
    remix(value: 'remix'),
    lynx(value: 'lynx'),
    flutter(value: 'flutter'),
    reactNative(value: 'react-native'),
    vite(value: 'vite'),
    other(value: 'other');

    const Framework({
        required this.value
    });

    final String value;

    String toJson() => value;
}