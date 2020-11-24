class Search < ApplicationRecord
  def interviews
    @interviews ||= find_interviews
  end

  private

  def find_interviews
    interviews = Interview.index(:name)
    interviews = interviews.where("name like ?", "%#{name}%") if name.present?
    interviews = interviews.where("company like ?", "%#{company}%") if company.present?
    interviews = interviews.where("open_date like ?", "%#{open_date}%") if open_date.present?
    interviews = interviews.where("end_date like ?", "%#{end_date}%") if end_date.present?
    interviews
  end
end
