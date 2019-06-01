part of dart.core;



class TimeDuration implements Comparable<TimeDuration>{
static const minutesPerHour = 60;
static const secondPerMinutes = 60;
static const hoursPerDay = 24;


static const int secondPerHour = secondPerMinutes * minutesPerHour;
static const int minutesPerDay = hoursPerDay * minutesPerHour;
static const int secondPerDay = secondPerHour * hoursPerDay;


static const TimeDuration zero = TimeDuration(seconds : 0);

const TimeDuration (
{
  int hour = 0,
  int minutes = 0,
  int secons = 0,
  int microseconds = 0,
});




}