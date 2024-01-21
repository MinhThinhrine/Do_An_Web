package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.DAO.TourDao;
import vn.edu.hcmuaf.bean.Tour;

import java.util.ArrayList;
import java.util.LinkedList;

public class SortTour {
    ArrayList listour = new ArrayList();

    public SortTour(ArrayList listour) {
        this.listour = listour;
    }

    public static ArrayList<Tour> SortByRegion(LinkedList<Tour> TourOnCart, String param) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            String sortBy = tour.getRegion().trim().toUpperCase();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy.equalsIgnoreCase(param.trim().toUpperCase())) {
                result.add(tour);
            }
        }
        return result;
    }

    public static ArrayList<Tour> SortByDuration(LinkedList<Tour> TourOnCart, String param) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            String sortBy = tour.getDuration().trim().toUpperCase();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy.equalsIgnoreCase(param.trim().toUpperCase())) {
                result.add(tour);
            }
        }
        return result;
    }

    // số 1 là tour bình thường @@
    public static ArrayList<Tour> SortDiscountId(LinkedList<Tour> TourOnCart, int param) {
        ArrayList<Tour> result = new ArrayList<>();
        for (Tour tour : TourOnCart) {
            int sortBy = tour.getDiscountId();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy == param) {
                result.add(tour);
            }
        }
        return result;
    }

    public static void main(String[] args) {
        LinkedList<Tour> tour = new TourDao().getListTourbySearch("Hà Nội");
        ArrayList<Tour> listsearch= SortDiscountId(tour,1);
        System.out.println(listsearch.size());
        for (Tour tour1: listsearch) {
            System.out.println(tour1);
        }

    }
}
