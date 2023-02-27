package ch05.dao;

import java.time.LocalDate;

public interface TodayDao {
	LocalDate selectToday();
}