import { NativeModules } from 'react-native';

const changeIcon = (iconName: string, disableIcon: string) =>
  NativeModules.ChangeIcon.changeIcon(iconName, disableIcon);

export { changeIcon };
