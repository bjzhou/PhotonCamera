/*****************************************************************************/
// Copyright 2006-2019 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/*****************************************************************************/

/** \file
 * EXIF read access support. See the \ref spec_exif "EXIF specification" for full
 * description of tags.
 */

/*****************************************************************************/

#ifndef __dng_exif__
#define __dng_exif__

/*****************************************************************************/

#include "dng_classes.h"
#include "dng_date_time.h"
#include "dng_fingerprint.h"
#include "dng_types.h"
#include "dng_matrix.h"
#include "dng_rational.h"
#include "dng_string.h"
#include "dng_stream.h"
#include "dng_sdk_limits.h"

/*****************************************************************************/

/// \brief Container class for parsing and holding EXIF tags.
///
/// Public member fields are documented in \ref spec_exif "EXIF specification."

class dng_exif
	{
	
	public:
	
		dng_string fImageDescription;
		dng_string fMake;
		dng_string fModel;
		dng_string fSoftware;
		dng_string fArtist;
		dng_string fCopyright;
		dng_string fCopyright2;
		dng_string fUserComment;
		
		dng_date_time_info		   fDateTime;
		dng_date_time_storage_info fDateTimeStorageInfo;
		
		dng_date_time_info		   fDateTimeOriginal;
		dng_date_time_storage_info fDateTimeOriginalStorageInfo;

		dng_date_time_info		   fDateTimeDigitized;
		dng_date_time_storage_info fDateTimeDigitizedStorageInfo;
		
		uint32 fTIFF_EP_StandardID;
		uint32 fExifVersion;
		uint32 fFlashPixVersion;
		
		dng_urational fExposureTime;
		dng_urational fFNumber;
		dng_srational fShutterSpeedValue;
		dng_urational fApertureValue;
		dng_srational fBrightnessValue;
		dng_srational fExposureBiasValue;
		dng_urational fMaxApertureValue;
		dng_urational fFocalLength;
		dng_urational fDigitalZoomRatio;
		dng_urational fExposureIndex;
		dng_urational fSubjectDistance;
		dng_urational fGamma;
		
		dng_urational fBatteryLevelR;
		dng_string	  fBatteryLevelA;
		
		uint32 fExposureProgram;
		uint32 fMeteringMode;
		uint32 fLightSource;
		uint32 fFlash;
		uint32 fFlashMask;
		uint32 fSensingMethod;
		uint32 fColorSpace;
		uint32 fFileSource;
		uint32 fSceneType;
		uint32 fCustomRendered;
		uint32 fExposureMode;
		uint32 fWhiteBalance;
		uint32 fSceneCaptureType;
		uint32 fGainControl;
		uint32 fContrast;
		uint32 fSaturation;
		uint32 fSharpness;
		uint32 fSubjectDistanceRange;
		uint32 fSelfTimerMode;
		uint32 fImageNumber;

		uint32 fFocalLengthIn35mmFilm;
		
		uint32 fISOSpeedRatings [3];		 // EXIF 2.3: PhotographicSensitivity.

		// Sensitivity tags added in EXIF 2.3.

		uint32 fSensitivityType;
		uint32 fStandardOutputSensitivity;
		uint32 fRecommendedExposureIndex;
		uint32 fISOSpeed;
		uint32 fISOSpeedLatitudeyyy;
		uint32 fISOSpeedLatitudezzz;
		
		uint32 fSubjectAreaCount;
		uint32 fSubjectArea [4];
		
		uint32 fComponentsConfiguration;
		
		dng_urational fCompresssedBitsPerPixel;
		
		uint32 fPixelXDimension;
		uint32 fPixelYDimension;
		
		dng_urational fFocalPlaneXResolution;
		dng_urational fFocalPlaneYResolution;
		
		uint32 fFocalPlaneResolutionUnit;
		
		uint32 fCFARepeatPatternRows;
		uint32 fCFARepeatPatternCols;
		
		uint8 fCFAPattern [kMaxCFAPattern] [kMaxCFAPattern];
		
		dng_fingerprint fImageUniqueID;
		
		uint32		  fGPSVersionID;
		dng_string	  fGPSLatitudeRef;
		dng_urational fGPSLatitude [3];
		dng_string	  fGPSLongitudeRef;
		dng_urational fGPSLongitude [3];
		uint32		  fGPSAltitudeRef;
		dng_urational fGPSAltitude;
		dng_urational fGPSTimeStamp [3];
		dng_string	  fGPSSatellites;
		dng_string	  fGPSStatus;
		dng_string	  fGPSMeasureMode;
		dng_urational fGPSDOP;
		dng_string	  fGPSSpeedRef;
		dng_urational fGPSSpeed;
		dng_string	  fGPSTrackRef;
		dng_urational fGPSTrack;
		dng_string	  fGPSImgDirectionRef;
		dng_urational fGPSImgDirection;
		dng_string	  fGPSMapDatum;
		dng_string	  fGPSDestLatitudeRef;
		dng_urational fGPSDestLatitude [3];
		dng_string	  fGPSDestLongitudeRef;
		dng_urational fGPSDestLongitude [3];
		dng_string	  fGPSDestBearingRef;
		dng_urational fGPSDestBearing;
		dng_string	  fGPSDestDistanceRef;
		dng_urational fGPSDestDistance;
		dng_string	  fGPSProcessingMethod;
		dng_string	  fGPSAreaInformation;
		dng_string	  fGPSDateStamp;
		uint32		  fGPSDifferential;
		dng_urational fGPSHPositioningError;
		
		dng_string fInteroperabilityIndex;
		
		uint32 fInteroperabilityVersion;
		
		dng_string fRelatedImageFileFormat;
		
		uint32 fRelatedImageWidth;	
		uint32 fRelatedImageLength;

		dng_string fCameraSerialNumber;		 // EXIF 2.3: BodySerialNumber.
		
		dng_urational fLensInfo [4];		 // EXIF 2.3: LensSpecification.
		
		dng_string fLensID;
		dng_string fLensMake;
		dng_string fLensName;				 // EXIF 2.3: LensModel.
		dng_string fLensSerialNumber;
		
		// Was the lens name field read from a LensModel tag?
		
		bool fLensNameWasReadFromExif;

		// Private field to hold the approximate focus distance of the lens, in
		// meters. This value is often coarsely measured/reported and hence should be
		// interpreted only as a rough estimate of the true distance from the plane
		// of focus (in object space) to the focal plane. It is still useful for the
		// purposes of applying lens corrections.

		dng_urational fApproxFocusDistance;
	
		dng_srational fFlashCompensation;
		
		dng_string fOwnerName;				 // EXIF 2.3: CameraOwnerName.
		dng_string fFirmware;
  
		// EXIF 2.3.1:
		
		dng_srational fTemperature;
		dng_urational fHumidity;
		dng_urational fPressure;
		dng_srational fWaterDepth;
		dng_urational fAcceleration;
		dng_srational fCameraElevationAngle;
		
		// Not really part of EXIF, but some formats may use.
		
		dng_string fTitle;

		// Image-specific radial distortion correction metadata that can be
		// used later during (UI-driven) lens profile corrections. Same model
		// as DNG 1.3 opcode model.

		dng_srational fLensDistortInfo [4];

		// Some cameras have a built-in neutral density filter. If the ND
		// filter is applied, it reduces the incoming light by a linear factor
		// K. This field stores the value of K. For example, if the camera has
		// applied a 3-stop neutral density filter, this reduces the incoming
		// light by a linear factor of 8, so this field should store 8/1.
		//
		// The default value is invalid (0/0) which means ND is not present or
		// unknown.

		dng_urational fNeutralDensityFactor;
		
	public:
	
		dng_exif ();
		
		virtual ~dng_exif ();

		/// Make clone.
		
		virtual dng_exif * Clone () const;

		/// Clear all EXIF fields.
		
		void SetEmpty ();

		/// Copy all GPS-related fields.
		/// \param exif Source object from which to copy GPS fields.
		
		void CopyGPSFrom (const dng_exif &exif);

		/// Copy EXIF date-related fields.
		/// \param exif Source object from which to copy date fields.
		
		void CopyDateFrom (const dng_exif &exif);

		/// Utility to fix up common errors and rounding issues with EXIF exposure
		/// times.

		static real64 SnapExposureTime (real64 et);

		/// Set exposure time and shutter speed fields. Optionally fix up common
		/// errors and rounding issues with EXIF exposure times.
		/// \param et Exposure time in seconds.
		/// \param snap Set to true to fix up common errors and rounding issues with
		/// EXIF exposure times.
		
		void SetExposureTime (real64 et,
							  bool snap = true);

		/// Set shutter speed value (APEX units) and exposure time.
		/// \param ss Shutter speed in APEX units.
		
		void SetShutterSpeedValue (real64 ss);

		/// Utility to encode f-number as a rational.
		/// \param fs The f-number to encode.
		
		static dng_urational EncodeFNumber (real64 fs);

		/// Set the FNumber and ApertureValue fields.
		/// \param fs The f-number to set.
		
		void SetFNumber (real64 fs);
		
		/// Set the FNumber and ApertureValue fields.
		/// \param av The aperture value (APEX units).
		
		void SetApertureValue (real64 av);

		/// Utility to convert aperture value (APEX units) to f-number.
		/// \param av The aperture value (APEX units) to convert.
		
		static real64 ApertureValueToFNumber (real64 av);

		/// Utility to convert aperture value (APEX units) to f-number.
		/// \param av The aperture value (APEX units) to convert.
		
		static real64 ApertureValueToFNumber (const dng_urational &av);

		/// Utility to convert f-number to aperture value (APEX units).
		/// \param fNumber The f-number to convert.
		
		static real64 FNumberToApertureValue (real64 fNumber);

		/// Utility to convert f-number to aperture value (APEX units).
		/// \param fNumber The f-number to convert.
		
		static real64 FNumberToApertureValue (const dng_urational &fNumber);

		/// Set the DateTime field.
		/// \param dt The DateTime value.
							   
		void UpdateDateTime (const dng_date_time_info &dt);

		/// Returns true iff the EXIF version is at least 2.3.

		bool AtLeastVersion0230 () const;
  
		/// Returns true iff the EXIF version is at least 2.3.1.
		
		bool AtLeastVersion0231 () const;
		
		/// Sets the EXIF version to 2.3.1.
		
		void SetVersion0231 ();

		bool HasLensDistortInfo () const;
		
		void SetLensDistortInfo (const dng_vector &params);
		
		virtual bool ParseTag (dng_stream &stream,
							   dng_shared &shared,
							   uint32 parentCode,
							   bool isMainIFD,
							   uint32 tagCode,
							   uint32 tagType,
							   uint32 tagCount,
							   uint64 tagOffset);
							   
		virtual void PostParse (dng_host &host,
								dng_shared &shared);
								
	protected:
		
		virtual bool Parse_ifd0 (dng_stream &stream,
								 dng_shared &shared,
								 uint32 parentCode,
								 uint32 tagCode,
								 uint32 tagType,
								 uint32 tagCount,
								 uint64 tagOffset);
									 
		virtual bool Parse_ifd0_main (dng_stream &stream,
									  dng_shared &shared,
									  uint32 parentCode,
									  uint32 tagCode,
									  uint32 tagType,
									  uint32 tagCount,
									  uint64 tagOffset);

		virtual bool Parse_ifd0_exif (dng_stream &stream,
									  dng_shared &shared,
									  uint32 parentCode,
									  uint32 tagCode,
									  uint32 tagType,
									  uint32 tagCount,
									  uint64 tagOffset);
	
		virtual bool Parse_gps (dng_stream &stream,
								dng_shared &shared,
								uint32 parentCode,
								uint32 tagCode,
								uint32 tagType,
								uint32 tagCount,
								uint64 tagOffset);
	
		virtual bool Parse_interoperability (dng_stream &stream,
											 dng_shared &shared,
											 uint32 parentCode,
											 uint32 tagCode,
											 uint32 tagType,
											 uint32 tagCount,
											 uint64 tagOffset);
	
	};
	
/*****************************************************************************/

#endif
	
/*****************************************************************************/
