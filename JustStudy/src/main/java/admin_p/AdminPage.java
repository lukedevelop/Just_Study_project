package admin_p;

import model_p.ReservationDAO;
import model_p.TodayReservationDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.ArrayList;


public class AdminPage implements AdminService{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {

        LocalDate now = LocalDate.now();

        ArrayList<TodayReservationDTO> todayReservation = new ReservationDAO().todayList(now);

        request.setAttribute("todayReservation",todayReservation);
        request.setAttribute("adminUrl","adminMain.jsp");
    }
}

