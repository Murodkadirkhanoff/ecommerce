<?php

namespace App\Admin\Controllers;


use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\Report;
use App\Models\User;
use Carbon\Carbon;
use Encore\Admin\Controllers\Dashboard;
use Encore\Admin\Layout\Column;
use Encore\Admin\Layout\Content;
use Encore\Admin\Layout\Row;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(Content $content)
    {


        $res = Report::select(
            DB::raw('sum(total_sale_cost) as sale_cost'),
            DB::raw('sum(benefit) as benefit'),
            DB::raw("DATE_FORMAT(created_at,'%M %Y') as months")
        )
            ->whereMonth('created_at', '>', Carbon::now()->subMonths(6)->month)
            ->whereYear('created_at', '=', Carbon::now()->year)
            ->orderBy('created_at')
            ->groupBy('months')
            ->get()->toArray();


        $months = array_column($res, 'months',);
        $sales = array_column($res, 'sale_cost');
        $benefit = array_column($res, 'benefit');



        $percent4 = percent($sales[4], $sales[5]);
        $percent3 = percent($sales[3], $sales[4]);
        $percent2 = percent($sales[2], $sales[3]);
        $percent1 = percent($sales[1], $sales[2]);


        $counts = [
            'products_count' => Product::count(),
            'reports_count' => Report::count(),
            'customers_count' => User::count(),
            'notcompleted_reports_count' => Report::where('is_completed', 0)->count()
        ];

        $data['counts'] = $counts;
        $data['chart1']['months'] = $months;
        $data['chart1']['sales'] = $sales;
        $data['chart1']['benefit'] = $benefit;
        $data['chart1']['first_month'] = $months[0];
        $data['chart1']['last_month'] = $months[count($months) - 1];
        $data['chart1']['percent4'] = $percent4;
        $data['chart1']['percent3'] = $percent3;
        $data['chart1']['percent2'] = $percent2;
        $data['chart1']['percent1'] = $percent1;

        return $content
            ->title('Dashboard')
            ->description('Статистика')
            ->body(view('admin.dashboard', compact('data')));
    }
}
