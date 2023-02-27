package ch05.dao;

import java.time.LocalDate;

import ch05.config.Configuration;
import ch05.dao.map.TodayMap;

public class TodayDaoImpl implements TodayDao {
   private TodayMap todayMap;
   
   public TodayDaoImpl() {
      this.todayMap = Configuration.getMapper(TodayMap.class);
   }
   
   @Override
   public LocalDate selectToday() {
      return todayMap.selectToday();
   }
}