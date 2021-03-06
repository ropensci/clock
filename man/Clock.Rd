% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clock.R
\name{clock}
\alias{clock}
\title{Clock class}
\usage{
clock(...)
}
\arguments{
\item{...}{date parts, must be supplied in order (i.e., if you want to give
seconds, you must give all others first): year, month, day, hour, minutes,
seconds. uses \code{\link[=ISOdate]{ISOdate()}} internally to convert to a \code{POSIXct}. optional;
if nothing supplied, the current time is used.}
}
\value{
a \link{POSIXct} object
}
\description{
Clock class
}
\details{
\strong{Methods}
These must be called with parens
\describe{
\item{\code{now(tzone = "")}}{
Get the date time right now
param \code{tzone}: a valid time zone
}
\item{\code{date()}}{
Same as $now() but as a \code{Date} class
}
\item{\code{utc()}}{
Same as $now() but with time zone set to UTC
}
}

\strong{Active Methods}
These are called without parens
\describe{
\item{\code{time}}{
Get the current time or the time you set on initialize
}
\item{\code{year}}{
Get the year component of the time
}
\item{\code{month}}{
Get the month component of the time
}
\item{\code{day}}{
Get the day component of the time
}
\item{\code{hour}}{
Get the hour component of the time
}
\item{\code{min}}{
Get the minute component of the time
}
\item{\code{sec}}{
Get the seconds component of the time
}
\item{\code{utc_offset}}{
Get the utc offset
}
\item{\code{unix_epoch}}{
Get the time in seconds since unix epoch
}
}
}
\examples{
# if no time set when initialized
## uses current time when you call functions with parens
x <- clock(2009)
x
## and uses current time when you call active functions
x$utc
x$date
x$year
x$month
 
# if time set when initialized
## ignores that time when calling functions with parens
z <- clock(2009, 3, 13)
z
z$utc
## and uses the user set time when you call active functions
z$year
z$month
z$utc_offset
z$unix_epoch

# 
clock(2009)$time
clock(2009, 3, 13)$time
clock(2009, 3, 13, 1, 4, 53)$time

now()
now("UTC")
}
