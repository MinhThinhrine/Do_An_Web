package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.tour;
import vn.edu.hcmuaf.bean.valies;

import java.util.ArrayList;
import java.util.List;

public class TourService {

    public List<tour> findAll() {
        return TourDao.findAll();
    }
    public tour findtourbyid(int id){
        return  TourDao.findtourbyid(id);
    }
    public List<valies> getValiTour(ArrayList<valies> valiList) {
        return TourDao.getValiTour(valiList);
    }
    public void insertVali(ArrayList<valies> valiList) {
        TourDao.insertVali(valiList);
    }
    public ArrayList<tour> getListTourbySearch(String search){
        return TourDao.getListTourbySearch(search);
    }
}
