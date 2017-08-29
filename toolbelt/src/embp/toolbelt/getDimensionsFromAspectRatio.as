package embp.toolbelt {

	/**
	 *
	 * Calculates width / height for a given aspect ratio with at least one of the following provided. This method
	 * is useful for determining proper dimensions when you only know the aspect ratio and only one dimension.
	 *
	 * @param aspectRatioWidth The aspect ratio width value. For example, on a 16:9 aspect ratio, 16 would be the aspectRatioWidth.
	 * @param aspectRatioHeight The aspect ratio height value. For example, on a 16:9 aspect ratio, 9 would be the aspectRatioHeight.
	 * @param width The width value for which you need to calculate the height, with the given aspect ratio.
	 * @param height The height value for which you need to calculate the width, with the given aspect ratio.
	 *
	 * @return Calculated width / height accessible through the 'width' / 'height' propertiess
	 */
		public function getDimensionsFromAspectRatio(aspectRatioWidth:Number, aspectRatioHeight:Number, width:Number=NaN, height:Number=NaN):Object {

		if(isNaN(width) && isNaN(height)) {
			throw new Error("Make sure you pass at least one width or one height to determine dimension.")
		}

			//If Height is passed calculate width / If Width is passed calculate height
			if (isNaN(width)) {
				width = aspectRatioWidth * height / aspectRatioHeight;
			} else if (isNaN(height)) {
				height = aspectRatioHeight * width / aspectRatioWidth;
			}

			//Return the new height and width
			return {
				width: Math.floor(width),
				height: Math.floor(height)
			};
		}

}
