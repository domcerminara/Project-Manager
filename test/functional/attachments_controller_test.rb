require 'test_helper'

class AttachmentsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Attachment.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Attachment.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Attachment.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to attachment_url(assigns(:attachment))
  end

  def test_edit
    get :edit, :id => Attachment.first
    assert_template 'edit'
  end

  def test_update_invalid
    Attachment.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Attachment.first
    assert_template 'edit'
  end

  def test_update_valid
    Attachment.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Attachment.first
    assert_redirected_to attachment_url(assigns(:attachment))
  end

  def test_destroy
    attachment = Attachment.first
    delete :destroy, :id => attachment
    assert_redirected_to attachments_url
    assert !Attachment.exists?(attachment.id)
  end
end
