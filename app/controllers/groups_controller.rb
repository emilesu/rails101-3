class GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
  end

  def edit
    @group = Group.find(params[:id])
  end

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.save

      redirect_to groups_path, notice: "新建成功..."
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)

      redirect_to groups_path, notice: "编辑成功..."
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

      redirect_to groups_path, notice: "删除成功..."
  end

  private

  def group_params
    params.require(:group).permit(:title, :description)
  end

end
