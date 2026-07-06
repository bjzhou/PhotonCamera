/*****************************************************************************/

#ifndef __photon_jxl_stub__
#define __photon_jxl_stub__

/*****************************************************************************/

typedef enum
	{
	JXL_COLOR_SPACE_RGB  = 0,
	JXL_COLOR_SPACE_GRAY = 1,
	JXL_COLOR_SPACE_XYB  = 2
	} JxlColorSpace;

typedef enum
	{
	JXL_WHITE_POINT_D65    = 1,
	JXL_WHITE_POINT_CUSTOM = 2
	} JxlWhitePoint;

typedef enum
	{
	JXL_PRIMARIES_SRGB   = 1,
	JXL_PRIMARIES_CUSTOM = 2,
	JXL_PRIMARIES_2100   = 9
	} JxlPrimaries;

typedef enum
	{
	JXL_TRANSFER_FUNCTION_GAMMA  = 1,
	JXL_TRANSFER_FUNCTION_LINEAR = 8,
	JXL_TRANSFER_FUNCTION_SRGB   = 13
	} JxlTransferFunction;

typedef struct
	{
	JxlColorSpace color_space;
	JxlWhitePoint white_point;
	JxlPrimaries primaries;
	JxlTransferFunction transfer_function;
	double gamma;
	double white_point_xy [2];
	double primaries_red_xy [2];
	double primaries_green_xy [2];
	double primaries_blue_xy [2];
	} JxlColorEncoding;

/*****************************************************************************/

#endif

/*****************************************************************************/
