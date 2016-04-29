require 'test_helper'

class ApplicantsControllerTest < ActionController::TestCase
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applicants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applicant" do
    assert_difference('Applicant.count') do
      post :create, applicant: { address: @applicant.address, birthday: @applicant.birthday, civil_status: @applicant.civil_status, contact_number: @applicant.contact_number, email: @applicant.email, first_name: @applicant.first_name, gender: @applicant.gender, guardian_address: @applicant.guardian_address, guardian_contact_number: @applicant.guardian_contact_number, guardian_email: @applicant.guardian_email, guardian_name: @applicant.guardian_name, image_path: @applicant.image_path, landline_number: @applicant.landline_number, last_name: @applicant.last_name, major: @applicant.major, medical_information: @applicant.medical_information, middle_initial: @applicant.middle_initial, nationality: @applicant.nationality, nickname: @applicant.nickname, personal_information: @applicant.personal_information, religion: @applicant.religion, school: @applicant.school, school_address: @applicant.school_address, year: @applicant.year }
    end

    assert_redirected_to applicant_path(assigns(:applicant))
  end

  test "should show applicant" do
    get :show, id: @applicant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applicant
    assert_response :success
  end

  test "should update applicant" do
    patch :update, id: @applicant, applicant: { address: @applicant.address, birthday: @applicant.birthday, civil_status: @applicant.civil_status, contact_number: @applicant.contact_number, email: @applicant.email, first_name: @applicant.first_name, gender: @applicant.gender, guardian_address: @applicant.guardian_address, guardian_contact_number: @applicant.guardian_contact_number, guardian_email: @applicant.guardian_email, guardian_name: @applicant.guardian_name, image_path: @applicant.image_path, landline_number: @applicant.landline_number, last_name: @applicant.last_name, major: @applicant.major, medical_information: @applicant.medical_information, middle_initial: @applicant.middle_initial, nationality: @applicant.nationality, nickname: @applicant.nickname, personal_information: @applicant.personal_information, religion: @applicant.religion, school: @applicant.school, school_address: @applicant.school_address, year: @applicant.year }
    assert_redirected_to applicant_path(assigns(:applicant))
  end

  test "should destroy applicant" do
    assert_difference('Applicant.count', -1) do
      delete :destroy, id: @applicant
    end

    assert_redirected_to applicants_path
  end
end
