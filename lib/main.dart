import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(CustomFont());

class CustomFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: SfCalendar(
              view: CalendarView.day,
              allowedViews: <CalendarView>[
                CalendarView.day,
                CalendarView.week,
                CalendarView.workWeek,
                CalendarView.month,
                CalendarView.timelineDay,
                CalendarView.timelineWeek,
                CalendarView.timelineWorkWeek,
                CalendarView.timelineMonth,
                CalendarView.schedule
              ],
              dataSource: _getDataSource(),
              monthViewSettings: MonthViewSettings(
                  showAgenda: true,
                  monthCellStyle: MonthCellStyle(
                      textStyle: TextStyle(
                          fontFamily: 'SyneTactile', color: Colors.black),
                      leadingDatesTextStyle: TextStyle(
                          fontFamily: 'SyneTactile', color: Colors.grey),
                      trailingDatesTextStyle: TextStyle(
                          fontFamily: 'SyneTactile', color: Colors.grey)),
                  agendaStyle: AgendaStyle(
                      dayTextStyle: TextStyle(
                          fontFamily: 'SyneTactile', color: Colors.black),
                      dateTextStyle: TextStyle(
                          fontFamily: 'SyneTactile', color: Colors.black),
                      appointmentTextStyle: TextStyle(
                          fontFamily: 'SyneTactile', color: Colors.black))),
              headerStyle: CalendarHeaderStyle(
                  textStyle: TextStyle(
                      fontFamily: 'SyneTactile', color: Colors.black)),
              viewHeaderStyle: ViewHeaderStyle(
                  dayTextStyle:
                      TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
                  dateTextStyle: TextStyle(
                      fontFamily: 'SyneTactile', color: Colors.black)),
              timeSlotViewSettings: TimeSlotViewSettings(
                timelineAppointmentHeight: 40,
                timeTextStyle:
                    TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
              ),
              scheduleViewSettings: ScheduleViewSettings(
                appointmentTextStyle: TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
                dayHeaderSettings: DayHeaderSettings(
                    dateTextStyle: TextStyle(
                        fontFamily: 'SyneTactile', color: Colors.black),
                    dayTextStyle: TextStyle(
                        fontFamily: 'SyneTactile', color: Colors.black)),
                monthHeaderSettings: MonthHeaderSettings(
                    monthTextStyle: TextStyle(
                        fontFamily: 'SyneTactile', color: Colors.black)),
                weekHeaderSettings: WeekHeaderSettings(
                    weekTextStyle: TextStyle(
                        fontFamily: 'SyneTactile', color: Colors.black)),
              ),
              appointmentTextStyle:
                  TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
            ),
          ),
        ));
  }

  _DataSource _getDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now().add(Duration(hours: 4)),
      endTime: DateTime.now().add(Duration(hours: 5)),
      subject: 'Meeting',
      color: Colors.red,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(Duration(days: -2, hours: 4)),
      endTime: DateTime.now().add(Duration(days: -2, hours: 5)),
      subject: 'Development Meeting   New York, U.S.A',
      color: Color(0xFFf527318),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(Duration(days: -2, hours: 3)),
      endTime: DateTime.now().add(Duration(days: -2, hours: 4)),
      subject: 'Project Plan Meeting   Kuala Lumpur, Malaysia',
      color: Color(0xFFfb21f66),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(Duration(days: -2, hours: 2)),
      endTime: DateTime.now().add(Duration(days: -2, hours: 3)),
      subject: 'Support - Web Meeting   Dubai, UAE',
      color: Color(0xFFf3282b8),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(Duration(days: -2, hours: 1)),
      endTime: DateTime.now().add(Duration(days: -2, hours: 2)),
      subject: 'Project Release Meeting   Istanbul, Turkey',
      color: Color(0xFFf2a7886),
    ));
    appointments.add(Appointment(
        startTime: DateTime.now().add(const Duration(hours: 4, days: -1)),
        endTime: DateTime.now().add(const Duration(hours: 5, days: -1)),
        subject: 'Release Meeting',
        color: Colors.lightBlueAccent,
        isAllDay: true));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 2, days: -4)),
      endTime: DateTime.now().add(const Duration(hours: 4, days: -4)),
      subject: 'Performance check',
      color: Colors.amber,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 11, days: -2)),
      endTime: DateTime.now().add(const Duration(hours: 12, days: -2)),
      subject: 'Customer Meeting   Tokyo, Japan',
      color: Color(0xFFffb8d62),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 6, days: 2)),
      endTime: DateTime.now().add(const Duration(hours: 7, days: 2)),
      subject: 'Retrospective',
      color: Colors.purple,
    ));

    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
