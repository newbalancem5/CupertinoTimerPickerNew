part of dart.core;



class TimeDuration implements Comparable<Duration>{
static const minutesPerHour = 60;
static const secondPerMinutes = 60;
static const hoursPerDay = 24;


static const int secondPerHour = secondPerMinutes * minutesPerHour;
static const int minutesPerDay = hoursPerDay * minutesPerHour;
static const int secondPerDay = secondPerHour * hoursPerDay;


static const TimeDuration zero = TimeDuration(seconds : 0);

final int _duration;

const TimeDuration (
{
  int hour = 0,
  int minutes = 0,
  int seconds = 0,
  int microseconds = 0,
}):this._microseconds(secondPerDay*minutesPerDay);


const TimeDuration._microseconds(this._duration);

TimeDuration operator +(TimeDuration other){
  return TimeDuration._microseconds(_duration + other._duration);
}

TimeDuration operator -(TimeDuration other){
  return TimeDuration._microseconds(_duration - other._duration);
}

TimeDuration operator *(num factor){
  return TimeDuration._microseconds(_duration * factor);
}
}