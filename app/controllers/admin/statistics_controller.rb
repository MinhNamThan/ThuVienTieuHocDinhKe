class Admin::StatisticsController < Admin::BaseController
  before_action :get_date, only: :index

  def index
    @totalUsers = User.count
    @totalBooks = Book.count
    @totalSubjects = Subject.count
    @totalCategories = Category.count
    @accesses = Access.first
    @range_day = @start_date..@end_date
    if current_user.admin?
      @adminList = User.where("role = 0")
      @teachers = User.where("role = 1").asc_name
    end
  end

  private

  def get_date
    @start_date = if params[:start_date].nil?
                    1.month.ago
                  else
                    params[:start_date].to_date
                  end
    @end_date = if params[:end_date].nil?
                  Time.zone.now
                else
                  params[:end_date].to_date + 1
                end
  end
  end
