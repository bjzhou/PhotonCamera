/*****************************************************************************/

#include "dng_jxl.h"

#include "dng_exceptions.h"
#include "dng_host.h"
#include "dng_image.h"
#include "dng_info.h"
#include "dng_memory.h"
#include "dng_pixel_buffer.h"
#include "dng_stream.h"
#include "dng_utils.h"
#include "dng_xy_coord.h"

#include <cstring>

/*****************************************************************************/

static const char * kDNGJXLDisabledMessage = "DNG JPEG XL support is disabled";

/*****************************************************************************/

bool ParseJXL (dng_host & /* host */,
			   dng_stream & /* stream */,
			   dng_info & /* info */,
			   bool /* supportBasicCodeStream */,
			   bool /* supportContainer */)
	{

	return false;

	}

/*****************************************************************************/

dng_jxl_decoder::~dng_jxl_decoder ()
	{
	}

/*****************************************************************************/

void dng_jxl_decoder::Decode (dng_host & /* host */,
							  dng_stream & /* stream */)
	{

	ThrowUnsupportedDNG ();

	}

/*****************************************************************************/

void dng_jxl_decoder::ProcessExifBox (dng_host & /* host */,
									  const std::vector<uint8> & /* data */)
	{
	}

/*****************************************************************************/

void dng_jxl_decoder::ProcessXMPBox (dng_host & /* host */,
									 const std::vector<uint8> & /* data */)
	{
	}

/*****************************************************************************/

void dng_jxl_decoder::ProcessBox (dng_host & /* host */,
								  const dng_string & /* name */,
								  const std::vector<uint8> & /* data */)
	{
	}

/*****************************************************************************/

void EncodeJXL_Tile (dng_host & /* host */,
					 dng_stream & /* stream */,
					 const dng_pixel_buffer & /* buffer */,
					 const dng_jxl_color_space_info & /* colorSpaceInfo */,
					 const dng_jxl_encode_settings & /* settings */)
	{

	ThrowNotYetImplemented (kDNGJXLDisabledMessage);

	}

/*****************************************************************************/

void EncodeJXL_Tile (dng_host & /* host */,
					 dng_stream & /* stream */,
					 const dng_image & /* image */,
					 const dng_jxl_color_space_info & /* colorSpaceInfo */,
					 const dng_jxl_encode_settings & /* settings */)
	{

	ThrowNotYetImplemented (kDNGJXLDisabledMessage);

	}

/*****************************************************************************/

void EncodeJXL_Container (dng_host & /* host */,
						  dng_stream & /* stream */,
						  const dng_image & /* image */,
						  const dng_jxl_encode_settings & /* settings */,
						  const dng_jxl_color_space_info & /* colorSpaceInfo */,
						  const dng_metadata * /* metadata */,
						  const bool /* includeExif */,
						  const bool /* includeXMP */,
						  const bool /* includeIPTC */,
						  const dng_bmff_box_list * /* additionalBoxes */)
	{

	ThrowNotYetImplemented (kDNGJXLDisabledMessage);

	}

/*****************************************************************************/

void EncodeJXL_Container (dng_host & /* host */,
						  dng_stream & /* stream */,
						  const dng_pixel_buffer & /* buffer */,
						  const dng_jxl_encode_settings & /* settings */,
						  const dng_jxl_color_space_info & /* colorSpaceInfo */,
						  const dng_metadata * /* metadata */,
						  const bool /* includeExif */,
						  const bool /* includeXMP */,
						  const bool /* includeIPTC */,
						  const dng_bmff_box_list * /* additionalBoxes */)
	{

	ThrowNotYetImplemented (kDNGJXLDisabledMessage);

	}

/*****************************************************************************/

real32 JXLQualityToDistance (uint32 quality)
	{

	quality = Pin_uint32 (kMinJXLCompressionQuality,
						  quality,
						  kMaxJXLCompressionQuality);

	static const real32 kTable [] =
		{
		0.0f,
		8.0f,
		6.0f,
		5.0f,
		4.0f,
		3.0f,
		2.0f,
		1.6f,
		1.3f,
		1.0f,
		0.7f,
		0.4f,
		0.1f,
		0.0f
		};

	return kTable [quality];

	}

/*****************************************************************************/

dng_jxl_encode_settings * JXLQualityToSettings (uint32 quality)
	{

	AutoPtr<dng_jxl_encode_settings> settings (new dng_jxl_encode_settings);

	real32 distance = JXLQualityToDistance (quality);

	settings->SetDistance (distance);

	if (distance <= 0.0f)
		{
		settings->SetFastest ();
		}

	return settings.Release ();

	}

/*****************************************************************************/

void PreviewColorSpaceToJXLEncoding (const PreviewColorSpaceEnum colorSpace,
									 const uint32 planes,
									 dng_jxl_color_space_info &info)
	{

	info.fJxlColorEncoding.Reset (new JxlColorEncoding);

	JxlColorEncoding &encoding = *info.fJxlColorEncoding;

	std::memset (&encoding, 0, sizeof (encoding));

	switch (colorSpace)
		{

		case previewColorSpace_GrayGamma22:
			{
			encoding.color_space	   = JXL_COLOR_SPACE_GRAY;
			encoding.white_point	   = JXL_WHITE_POINT_D65;
			encoding.primaries		   = JXL_PRIMARIES_SRGB;
			encoding.transfer_function = JXL_TRANSFER_FUNCTION_GAMMA;
			encoding.gamma			   = 1.0 / 2.2;
			break;
			}

		case previewColorSpace_sRGB:
			{
			encoding.color_space	   = JXL_COLOR_SPACE_RGB;
			encoding.white_point	   = JXL_WHITE_POINT_D65;
			encoding.primaries		   = JXL_PRIMARIES_SRGB;
			encoding.transfer_function = JXL_TRANSFER_FUNCTION_SRGB;
			break;
			}

		case previewColorSpace_AdobeRGB:
			{
			encoding.color_space	   = JXL_COLOR_SPACE_RGB;
			encoding.white_point	   = JXL_WHITE_POINT_D65;
			encoding.primaries		   = JXL_PRIMARIES_CUSTOM;
			encoding.transfer_function = JXL_TRANSFER_FUNCTION_GAMMA;
			encoding.gamma			   = 1.0 / 2.2;
			encoding.primaries_red_xy   [0] = 0.6400;
			encoding.primaries_red_xy   [1] = 0.3300;
			encoding.primaries_green_xy [0] = 0.2100;
			encoding.primaries_green_xy [1] = 0.7100;
			encoding.primaries_blue_xy  [0] = 0.1500;
			encoding.primaries_blue_xy  [1] = 0.0600;
			break;
			}

		case previewColorSpace_ProPhotoRGB:
			{
			encoding.color_space       = JXL_COLOR_SPACE_RGB;
			encoding.white_point       = JXL_WHITE_POINT_CUSTOM;
			encoding.primaries         = JXL_PRIMARIES_CUSTOM;
			encoding.transfer_function = JXL_TRANSFER_FUNCTION_GAMMA;
			encoding.gamma             = 1.0 / 1.8;
			encoding.primaries_red_xy   [0] = 0.734699;
			encoding.primaries_red_xy   [1] = 0.265301;
			encoding.primaries_green_xy [0] = 0.159597;
			encoding.primaries_green_xy [1] = 0.840403;
			encoding.primaries_blue_xy  [0] = 0.036598;
			encoding.primaries_blue_xy  [1] = 0.000105;
			dng_xy_coord white = D50_xy_coord ();
			encoding.white_point_xy [0] = white.x;
			encoding.white_point_xy [1] = white.y;
			break;
			}

		case previewColorSpace_Unknown:
		default:
			{
			encoding.color_space       = planes == 1 ? JXL_COLOR_SPACE_GRAY : JXL_COLOR_SPACE_RGB;
			encoding.white_point       = JXL_WHITE_POINT_D65;
			encoding.primaries         = JXL_PRIMARIES_2100;
			encoding.transfer_function = JXL_TRANSFER_FUNCTION_LINEAR;
			break;
			}

		}

	}

/*****************************************************************************/

bool SupportsJXL (const dng_image & /* image */)
	{

	return false;

	}

/*****************************************************************************/
