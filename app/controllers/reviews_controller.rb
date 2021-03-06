class ReviewsController < ApplicationController

 before_filter :authorize

 def create
   @product = Product.find(params[:product_id])

   if !current_user
     redirect_to product_path(@product)
   end

   @review = @product.reviews.new(review_params)
   @review.user = current_user
   @review.save
   redirect_to product_path(@product)
 end

 def destroy
   @product = Product.find(params[:product_id])
   @review = @product.reviews.find(params[:id])
   @review.user = current_user
   @review.destroy
   redirect_to product_path(@product)
 end

 private
   def review_params
     params.require(:review).permit(:description, :rating)
   end
end
