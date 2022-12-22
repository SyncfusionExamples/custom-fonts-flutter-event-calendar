# How to add custom fonts in the Flutter Calendar?

A quick-start example to help you to add custom fonts in the Flutter Calendar.

Custom fonts can be added to calendar elements in the Flutter event calendar by using [monthCellStyle](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/MonthViewSettings/monthCellStyle.html), [headerStyle](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/headerStyle.html), [viewHeaderStyle](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/SfCalendar/viewHeaderStyle.html), [timeTextStyle](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/TimeSlotViewSettings/timeTextStyle.html), and [ScheduleViewSettings](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/ScheduleViewSettings-class.html).

## Install the required fonts

Install the required custom font, create a fonts folder, and add the fonts to customise the fonts.

## Specifying the fonts

The fonts must be specified in the Pubspec.yaml file. The custom font should then be applied to the calendar's monthCellStyle, headerStyle, viewHeaderStyle, timeTextStyle, ScheduleViewSettings, and appointmentTextStyle.

```

fonts:
    - family: Roboto
      fonts:
        - asset: fonts/Roboto-Italic.ttf
          weight: 700
    - family: SyneTactile
      fonts:
        - asset: fonts/SyneTactile-Regular.ttf
          weight: 700

```

For more details , refer to this [KB](https://www.syncfusion.com/kb/12101/how-to-add-custom-fonts-in-the-flutter-calendar).

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).