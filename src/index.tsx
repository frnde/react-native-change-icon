import { NativeModules } from 'react-native';

const changeIcon = (iconName: string) =>
  NativeModules.ChangeIcon.changeIcon(iconName);

const currentIcon = () =>
  NativeModules.ChangeIcon.currentIcon();

export { changeIcon, currentIcon };
