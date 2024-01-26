package vn.edu.hcmuaf.serice;

import vn.edu.hcmuaf.bean.tour;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;

public class SortTour {
    ArrayList listour = new ArrayList();

    public SortTour(ArrayList listour) {
        this.listour = listour;
    }

    public static ArrayList<tour> SortByRegion(ArrayList<tour> TourOnCart, String param) {
        ArrayList<tour> result = new ArrayList<>();
        for (vn.edu.hcmuaf.bean.tour tour : TourOnCart) {
            String sortBy = tour.getRegion().trim().toUpperCase();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy.equalsIgnoreCase(param.trim().toUpperCase())) {
                result.add(tour);
            }
        }
        return result;
    }

    public static ArrayList<tour> SortByDuration(ArrayList<tour> TourOnCart, String param) {
        ArrayList<tour> result = new ArrayList<>();
        for (vn.edu.hcmuaf.bean.tour tour : TourOnCart) {
            String sortBy = tour.getDuration().trim().toUpperCase();
//            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy.contains(param.trim().toUpperCase())) {
                result.add(tour);
            }
        }
        return result;
    }

    // số 1 là tour bình thường @@
    public static ArrayList<tour> SortDiscountId(ArrayList<tour> TourOnCart, int param) {
        ArrayList<tour> result = new ArrayList<>();
        for (vn.edu.hcmuaf.bean.tour tour : TourOnCart) {
            int sortBy = tour.getDiscountId();
            System.out.println("Tour Duration: " + sortBy + ", Param: " + param);
            if (sortBy == param) {
                result.add(tour);
            }
        }
        return result;
    }

    // sắp xếp theo 1 khoảng tiền
    public static ArrayList<tour> SortRangePrice(LinkedList<tour> TourOnCart, int min, int max) {
        ArrayList<tour> result = new ArrayList<>();
        for (vn.edu.hcmuaf.bean.tour tour : TourOnCart) {
            int sortBy = tour.getPrice();
            System.out.println(min+"<="+sortBy+"<="+max);
            if (min <= sortBy && sortBy <= max) {
                result.add(tour);
            }
        }
        return result;
    }

    public static ArrayList<tour> SortByPriceAscending(ArrayList<tour> TourOnCart) {
        ArrayList<tour> result = new ArrayList<>(TourOnCart);
        Collections.sort(result, new Comparator<tour>() {
            @Override
            public int compare(tour tour1, tour tour2) {
                return Integer.compare(tour1.getPrice(), tour2.getPrice());
            }
        });
        return result;
    }

    // Sắp xếp theo giá tiền giảm dần
    public static ArrayList<tour> SortByPriceDescending(ArrayList<tour> TourOnCart) {
        ArrayList<tour> result = new ArrayList<>(TourOnCart);
        Collections.sort(result, new Comparator<tour>() {
            @Override
            public int compare(tour tour1, tour tour2) {
                return Integer.compare(tour2.getPrice(), tour1.getPrice());
            }
        });
        return result;
    }


    public static void main(String[] args) {
        ArrayList<tour> tour = new TourService().getListTourbySearch("Hà Nội");
        ArrayList<vn.edu.hcmuaf.bean.tour> listsearch= SortByPriceDescending(tour);
        System.out.println(listsearch.size());
        for (vn.edu.hcmuaf.bean.tour tour1: listsearch) {
            System.out.println(tour1);
        }

    }
}
