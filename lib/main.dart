import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const CustomFont());

class CustomFont extends StatelessWidget {
  const CustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: SfCalendar(
              view: CalendarView.day,
              allowedViews: const <CalendarView>[
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
              monthViewSettings: const MonthViewSettings(
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
              headerStyle: const CalendarHeaderStyle(
                  textStyle: TextStyle(
                      fontFamily: 'SyneTactile', color: Colors.black)),
              viewHeaderStyle: const ViewHeaderStyle(
                  dayTextStyle:
                      TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
                  dateTextStyle: TextStyle(
                      fontFamily: 'SyneTactile', color: Colors.black)),
              timeSlotViewSettings: const TimeSlotViewSettings(
                timelineAppointmentHeight: 40,
                timeTextStyle:
                    TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
              ),
              scheduleViewSettings: const ScheduleViewSettings(
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
                  const TextStyle(fontFamily: 'SyneTactile', color: Colors.black),
            ),
          ),
        ));
  }

  _DataSource _getDataSource() {
    final List<Appointment> appointments = <Appointment>[];
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(hours: 4)),
      endTime: DateTime.now().add(const Duration(hours: 5)),
      subject: 'Meeting',
      color: Colors.red,
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 4)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 5)),
      subject: 'Development Meeting   New York, U.S.A',
      color: const Color(0xFFf527318),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 3)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 4)),
      subject: 'Project Plan Meeting   Kuala Lumpur, Malaysia',
      color: const Color(0xFFfb21f66),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 2)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 3)),
      subject: 'Support - Web Meeting   Dubai, UAE',
      color: const Color(0xFFf3282b8),
    ));
    appointments.add(Appointment(
      startTime: DateTime.now().add(const Duration(days: -2, hours: 1)),
      endTime: DateTime.now().add(const Duration(days: -2, hours: 2)),
      subject: 'Project Release Meeting   Istanbul, Turkey',
      color: const Color(0xFFf2a7886),
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
      color: const Color(0xFFffb8d62),
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
