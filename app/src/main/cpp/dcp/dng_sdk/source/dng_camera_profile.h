/******************************************************************************/
// Copyright 2006-2020 Adobe Systems Incorporated
// All Rights Reserved.
//
// NOTICE:	Adobe permits you to use, modify, and distribute this file in
// accordance with the terms of the Adobe license agreement accompanying it.
/******************************************************************************/

/** \file
 * Support for DNG camera color profile information.
 *
 * Per the \ref spec_dng "DNG 1.6.0.0 specification", a DNG file can store up
 * to three sets of color profile information for a camera in the DNG file
 * from that camera. The second and third sets are optional and when there are
 * multiple sets, they represent profiles made under different illumination.
 *
 * Profiling information is optionally separated into two parts. One part
 * represents a profile for a reference camera. The second is a per-camera
 * calibration that takes into account unit-to-unit variation. This is
 * designed to allow replacing the reference color matrix with one of one's
 * own construction while maintaining any unit-specific calibration the camera
 * manufacturer may have provided.
 *
 * See Chapter 6 of the \ref spec_dng "DNG 1.6.0 specification" for more
 * information.
 */

#ifndef __dng_camera_profile__
#define __dng_camera_profile__

/******************************************************************************/

#include "dng_auto_ptr.h"
#include "dng_assertions.h"
#include "dng_classes.h"
#include "dng_fingerprint.h"
#include "dng_hue_sat_map.h"
#include "dng_matrix.h"
#include "dng_string.h"
#include "dng_tag_values.h"
#include "dng_tone_curve.h"
#include "dng_xy_coord.h"

/******************************************************************************/

extern const char * kProfileName_Embedded;

extern const char * kAdobeCalibrationSignature;

/******************************************************************************/

/// \brief An ID for a camera profile consisting of a name and optional fingerprint.

class dng_camera_profile_id
	{
	
	private:
	
		dng_string fName;
		
		dng_fingerprint fFingerprint;
		
	public:
	
		/// Construct an invalid camera profile ID (empty name and fingerprint).

		dng_camera_profile_id ()
		
			:	fName		 ()
			,	fFingerprint ()
			
			{
			}
			
		/// Construct a camera profile ID with the specified name and no fingerprint.
		/// \param name The name of the camera profile ID.

		dng_camera_profile_id (const char *name)
			
			:	fName		 ()
			,	fFingerprint ()
			
			{
			fName.Set (name);
			}

		/// Construct a camera profile ID with the specified name and no fingerprint.
		/// \param name The name of the camera profile ID.

		dng_camera_profile_id (const dng_string &name)
			
			:	fName		 (name)
			,	fFingerprint ()
			
			{
			}

		/// Construct a camera profile ID with the specified name and fingerprint.
		/// \param name The name of the camera profile ID.
		/// \param fingerprint The fingerprint of the camera profile ID.

		dng_camera_profile_id (const char *name,
							   const dng_fingerprint &fingerprint)
			
			:	fName		 ()
			,	fFingerprint (fingerprint)
			
			{
			fName.Set (name);
			DNG_ASSERT (!fFingerprint.IsValid () || fName.NotEmpty (),
						"Cannot have profile fingerprint without name");
			}

		/// Construct a camera profile ID with the specified name and fingerprint.
		/// \param name The name of the camera profile ID.
		/// \param fingerprint The fingerprint of the camera profile ID.

		dng_camera_profile_id (const dng_string &name,
							   const dng_fingerprint &fingerprint)
			
			:	fName		 (name)
			,	fFingerprint (fingerprint)
			
			{
			DNG_ASSERT (!fFingerprint.IsValid () || fName.NotEmpty (),
						"Cannot have profile fingerprint without name");
			}

		/// Getter for the name of the camera profile ID.
		/// \retval The name of the camera profile ID.

		const dng_string & Name () const
			{
			return fName;
			}
			
		/// Getter for the fingerprint of the camera profile ID.
		/// \retval The fingerprint of the camera profile ID.

		const dng_fingerprint & Fingerprint () const
			{
			return fFingerprint;
			}
			
		/// Test for equality of two camera profile IDs.
		/// \param id The id of the camera profile ID to compare.

		bool operator== (const dng_camera_profile_id &id) const
			{
			return fName		== id.fName &&
				   fFingerprint == id.fFingerprint;
			}

		/// Test for inequality of two camera profile IDs.
		/// \param id The id of the camera profile ID to compare.

		bool operator!= (const dng_camera_profile_id &id) const
			{
			return !(*this == id);
			}
			
		/// Returns true iff the camera profile ID is valid.

		bool IsValid () const
			{
			return fName.NotEmpty ();		// Fingerprint is optional.
			}
			
		/// Resets the name and fingerprint, thereby making this camera profile ID
		/// invalid.

		void Clear ()
			{
			*this = dng_camera_profile_id ();
			}

		/// Adds this camera profile ID to a printer.

		void AddDigest (dng_md5_printer &printer) const;

	};
	
/*****************************************************************************/

extern const char * kProfileName_GroupPrefix;

bool HasProfileGroupPrefix (const dng_string &name);

dng_string StripProfileGroupPrefix (const dng_string &name);

/******************************************************************************/

/// \brief Information for selecting a specific profile from a profile group.

class dng_camera_profile_group_selector
	{
	
	public:
	
		// Do we want the HDR version of the profile?
	
		bool fHDR = false;
		
	};

/******************************************************************************/

/// \brief Container for DNG camera color profile and calibration data.

class dng_camera_profile
	{
	
	private:
	
		// Name of this camera profile.
		
		dng_string fName;
	
		// Group name of this camera profile.
		
		dng_string fGroupName;

		// Dynamic range info.

		std::shared_ptr<const dng_camera_profile_dynamic_range> fDynamicRangeInfo;
	
		// Light sources for up to three calibrations. These use the EXIF
		// encodings for illuminant and are used to distinguish which
		// matrix to use.
		
		uint32 fCalibrationIlluminant1;
		uint32 fCalibrationIlluminant2;
		uint32 fCalibrationIlluminant3;		 // DNG 1.6

		// Illuminant data if corresponding fCalibrationIlluminantX tag is set
		// to 255 (Other).

		dng_illuminant_data fIlluminantData1; // DNG 1.6
		dng_illuminant_data fIlluminantData2; // DNG 1.6
		dng_illuminant_data fIlluminantData3; // DNG 1.6
		
		// Color matrices for up to three calibrations.
		
		// These matrices map XYZ values to non-white balanced camera values. 
		// Adobe needs to go that direction in order to determine the clipping
		// points for highlight recovery logic based on the white point.  If
		// cameras were all 3-color, the matrix could be stored as a forward matrix,
		// but we need the backwards matrix to deal with 4-color cameras.
		
		dng_matrix fColorMatrix1;
		dng_matrix fColorMatrix2;
		dng_matrix fColorMatrix3;

		// These matrices map white balanced camera values to XYZ chromatically
		// adapted to D50 (the ICC profile PCS white point).  If the matrices
		// exist, then this implies that white balancing should be done by scaling
		// camera values with a diagonal matrix.
		
		dng_matrix fForwardMatrix1;
		dng_matrix fForwardMatrix2;
		dng_matrix fForwardMatrix3;
	
		// Dimensionality reduction hints for more than three color cameras.
		// This is an optional matrix that maps the camera's color components
		// to 3 components.	 These are only used if the forward matrices don't
		// exist, and are used invert the color matrices.
		
		dng_matrix fReductionMatrix1;
		dng_matrix fReductionMatrix2;
		dng_matrix fReductionMatrix3;
		
		// MD5 hash for all data bits of the profile.

		mutable dng_fingerprint fFingerprint;
		
		// MD5 hash for all data bits of the profile that affect
		// color rendering.
		
		mutable dng_fingerprint fRenderDataFingerprint;

		// Copyright notice from creator of profile.

		dng_string fCopyright;
		
		// Rules for how this profile can be embedded and/or copied.

		uint32 fEmbedPolicy;
		
		// 2-D (or 3-D) hue/sat tables to modify colors.

		dng_hue_sat_map fHueSatDeltas1;
		dng_hue_sat_map fHueSatDeltas2;
		dng_hue_sat_map fHueSatDeltas3;
		
		// Value (V of HSV) encoding for hue/sat tables.

		uint32 fHueSatMapEncoding;

		// 3-D hue/sat table to apply a "look".
		
		dng_hue_sat_map fLookTable;

		// Value (V of HSV) encoding for look table.

		uint32 fLookTableEncoding;

		// Baseline exposure offset. When using this profile, this offset value is
		// added to the BaselineExposure value for the negative to determine the
		// overall baseline exposure to apply.

		dng_srational fBaselineExposureOffset;

		// Default black rendering.

		uint32 fDefaultBlackRender;
		
		// The "as shot" tone curve for this profile.  Check IsValid method 
		// to tell if one exists in profile.

		dng_tone_curve fToneCurve;
		
		// The preferred method for applying the tone curve for this profile.
		
		uint32 fToneMethod;
		
		// If this string matches the fCameraCalibrationSignature of the
		// negative, then use the calibration matrix values from the negative.

		dng_string fProfileCalibrationSignature;
		
		// If non-empty, only allow use of this profile with camera having
		// same unique model name.

		dng_string fUniqueCameraModelRestriction;

		// Was this profile read from inside a DNG file? (If so, we want
		// to be sure to include it again when writing out an updated
		// DNG file)
		
		bool fWasReadFromDNG;
		
		// Was this profile read from disk (i.e., an external profile)? (If so, we
		// may need to refresh when changes are made externally to the profile
		// directory.)
		
		bool fWasReadFromDisk;
		
		// Was this profile stubbed to save memory (and no longer valid
		// for building color conversion tables)?
		
		bool fWasStubbed;

		// ProfileGainTableMap2.

		std::shared_ptr<const dng_gain_table_map> fProfileGainTableMap;

		// RGBTables.

		std::shared_ptr<const dng_masked_rgb_tables> fMaskedRGBTables;

	public:
	
		dng_camera_profile ();
		
		virtual ~dng_camera_profile ();
		
		// API for profile name:

		/// Setter for camera profile name.
		/// \param name Name to use for this camera profile.

		void SetName (const char *name)
			{
			fName.Set (name);
			ClearFingerprint ();
			}

		/// Getter for camera profile name.
		/// \retval Name of profile.

		const dng_string & Name () const
			{
			return fName;
			}
		
		/// Setter for camera profile group name.
		/// \param name Group name to use for this camera profile.

		void SetGroupName (const dng_string &s)
			{
			fGroupName = s;
			ClearFingerprint ();
			}

		/// Getter for camera profile group name.
		/// \retval Group name of profile.

		const dng_string & GroupName () const
			{
			return fGroupName;
			}
		
		/// Test if this name is embedded.
		/// \retval true if the name matches the name of the embedded camera profile.

		bool NameIsEmbedded () const
			{
			return fName.Matches (kProfileName_Embedded, true);
			}
			
		// API for calibration illuminants:

		/// Getter for the illuminant model. Result will be 1, 2, or 3.
		/// A value of 1 means the single-illuminant model, using ColorMatrix1 and related tags.
		/// A value of 2 means the dual-illuminant model, using ColorMatrix1 and ColorMatrix2 and related tags.
		/// A value of 3 means the triple-illuminant model, using ColorMatrix1, ColorMatrix2, ColorMatrix3 and related tags.

		uint32 IlluminantModel () const;
		
		/// Setter for first of up to three light sources used for calibration. 
		/// Uses the EXIF encodings for illuminant and is used to distinguish which
		/// matrix to use.
		/// Corresponds to the DNG CalibrationIlluminant1 tag.

		void SetCalibrationIlluminant1 (uint32 light)
			{
			fCalibrationIlluminant1 = light;
			ClearFingerprint ();
			}
			
		/// Setter for second of up to three light sources used for calibration. 
		/// Uses the EXIF encodings for illuminant and is used to distinguish which
		/// matrix to use.
		/// Corresponds to the DNG CalibrationIlluminant2 tag.

		void SetCalibrationIlluminant2 (uint32 light)
			{
			fCalibrationIlluminant2 = light;
			ClearFingerprint ();
			}
			
		/// Setter for third of up to three light sources used for calibration. 
		/// Uses the EXIF encodings for illuminant and is used to distinguish which
		/// matrix to use.
		/// Corresponds to the DNG CalibrationIlluminant3 tag.

		void SetCalibrationIlluminant3 (uint32 light)
			{
			fCalibrationIlluminant3 = light;
			ClearFingerprint ();
			}
			
		/// Getter for first of up to three light sources used for calibration. 
		/// Uses the EXIF encodings for illuminant and is used to distinguish which
		/// matrix to use.
		/// Corresponds to the DNG CalibrationIlluminant1 tag.

		uint32 CalibrationIlluminant1 () const
			{
			return fCalibrationIlluminant1;
			}
			
		/// Getter for second of up to three light sources used for calibration. 
		/// Uses the EXIF encodings for illuminant and is used to distinguish which
		/// matrix to use.
		/// Corresponds to the DNG CalibrationIlluminant2 tag.

		uint32 CalibrationIlluminant2 () const
			{
			return fCalibrationIlluminant2;
			}
		
		/// Getter for third of up to three light sources used for calibration. 
		/// Uses the EXIF encodings for illuminant and is used to distinguish which
		/// matrix to use.
		/// Corresponds to the DNG CalibrationIlluminant3 tag.

		uint32 CalibrationIlluminant3 () const
			{
			return fCalibrationIlluminant3;
			}

		void SetIlluminantData1 (const dng_illuminant_data &data)
			{
			fIlluminantData1 = data;
			ClearFingerprint ();
			}
		
		const dng_illuminant_data & IlluminantData1 () const
			{
			return fIlluminantData1;
			}
			
		void SetIlluminantData2 (const dng_illuminant_data &data)
			{
			fIlluminantData2 = data;
			ClearFingerprint ();
			}
		
		const dng_illuminant_data & IlluminantData2 () const
			{
			return fIlluminantData2;
			}
			
		void SetIlluminantData3 (const dng_illuminant_data &data)
			{
			fIlluminantData3 = data;
			ClearFingerprint ();
			}
		
		const dng_illuminant_data & IlluminantData3 () const
			{
			return fIlluminantData3;
			}
			
		/// Getter for first of up to three light sources used for calibration, returning
		/// result as color temperature.

		real64 CalibrationTemperature1 () const
			{
			return IlluminantToTemperature (CalibrationIlluminant1 (),
											IlluminantData1 ());
			}

		/// Getter for second of up to three light sources used for calibration, returning
		/// result as color temperature.

		real64 CalibrationTemperature2 () const
			{
			return IlluminantToTemperature (CalibrationIlluminant2 (),
											IlluminantData2 ());
			}
			
		/// Getter for third of up to three light sources used for calibration, returning
		/// result as color temperature.

		real64 CalibrationTemperature3 () const
			{
			return IlluminantToTemperature (CalibrationIlluminant3 (),
											IlluminantData3 ());
			}

		// API for color matrices:
		
		/// Utility function to normalize the scale of the color matrix.
		
		static void NormalizeColorMatrix (dng_matrix &m);
		
		/// Setter for first of up to three color matrices used for reference camera calibrations.
		/// These matrices map XYZ values to camera values.	 The DNG SDK needs to map colors
		/// that direction in order to determine the clipping points for
		/// highlight recovery logic based on the white point.	If cameras
		/// were all three-color, the matrix could be stored as a forward matrix.
		/// The inverse matrix is required to support four-color cameras.

		void SetColorMatrix1 (const dng_matrix &m);

		/// Setter for second of up to three color matrices used for reference camera calibrations.
		/// These matrices map XYZ values to camera values.	 The DNG SDK needs to map colors
		/// that direction in order to determine the clipping points for
		/// highlight recovery logic based on the white point.	If cameras
		/// were all three-color, the matrix could be stored as a forward matrix.
		/// The inverse matrix is required to support four-color cameras.

		void SetColorMatrix2 (const dng_matrix &m);
										
		/// Setter for third of up to three color matrices used for reference camera calibrations.
		/// These matrices map XYZ values to camera values.	 The DNG SDK needs to map colors
		/// that direction in order to determine the clipping points for
		/// highlight recovery logic based on the white point.	If cameras
		/// were all three-color, the matrix could be stored as a forward matrix.
		/// The inverse matrix is required to support four-color cameras.

		void SetColorMatrix3 (const dng_matrix &m);
										
		/// Predicate to test if first camera matrix is set

		bool HasColorMatrix1 () const;

		/// Predicate to test if second camera matrix is set

		bool HasColorMatrix2 () const;
		
		/// Predicate to test if third camera matrix is set

		bool HasColorMatrix3 () const;
		
		/// Getter for first of up to three color matrices used for calibrations.

		const dng_matrix & ColorMatrix1 () const
			{
			return fColorMatrix1;
			}
			
		/// Getter for second of up to three color matrices used for calibrations.

		const dng_matrix & ColorMatrix2 () const
			{
			return fColorMatrix2;
			}
			
		/// Getter for third of up to three color matrices used for calibrations.

		const dng_matrix & ColorMatrix3 () const
			{
			return fColorMatrix3;
			}
			
		// API for forward matrices:
		
		/// Utility function to normalize the scale of the forward matrix.
		
		static void NormalizeForwardMatrix (dng_matrix &m);
		
		/// Setter for first of up to three forward matrices used for calibrations.

		void SetForwardMatrix1 (const dng_matrix &m);

		/// Setter for second of up to three forward matrices used for calibrations.

		void SetForwardMatrix2 (const dng_matrix &m);

		/// Setter for third of up to three forward matrices used for calibrations.

		void SetForwardMatrix3 (const dng_matrix &m);

		/// Getter for first of up to three forward matrices used for calibrations.

		const dng_matrix & ForwardMatrix1 () const
			{
			return fForwardMatrix1;
			}
			
		/// Getter for second of up to three forward matrices used for calibrations.

		const dng_matrix & ForwardMatrix2 () const
			{
			return fForwardMatrix2;
			}
		
		/// Getter for third of up to three forward matrices used for calibrations.

		const dng_matrix & ForwardMatrix3 () const
			{
			return fForwardMatrix3;
			}
		
		// API for reduction matrices:
		
		/// Setter for first of up to three dimensionality reduction hints for four-color cameras.
		/// This is an optional matrix that maps four components to three.
		/// See Appendix 6 of the \ref spec_dng "DNG 1.1.0 specification."

		void SetReductionMatrix1 (const dng_matrix &m);

		/// Setter for second of up to three dimensionality reduction hints for four-color cameras.
		/// This is an optional matrix that maps four components to three.
		/// See Appendix 6 of the \ref spec_dng "DNG 1.1.0 specification."

		void SetReductionMatrix2 (const dng_matrix &m);
		
		/// Setter for third of up to three dimensionality reduction hints for four-color cameras.
		/// This is an optional matrix that maps four components to three.
		/// See Appendix 6 of the \ref spec_dng "DNG 1.1.0 specification."

		void SetReductionMatrix3 (const dng_matrix &m);
		
		/// Getter for first of up to three dimensionality reduction hints for four color cameras.

		const dng_matrix & ReductionMatrix1 () const
			{
			return fReductionMatrix1;
			}
			
		/// Getter for second of up to three dimensionality reduction hints for four color cameras.

		const dng_matrix & ReductionMatrix2 () const
			{
			return fReductionMatrix2;
			}
			
		/// Getter for third of up to three dimensionality reduction hints for four color cameras.

		const dng_matrix & ReductionMatrix3 () const
			{
			return fReductionMatrix3;
			}
			
		/// Getter function for profile fingerprint.
			
		const dng_fingerprint & Fingerprint () const
			{

			if (!fFingerprint.IsValid ())
				{
				fFingerprint = CalculateFingerprint (false);
				}

			return fFingerprint;

			}

		/// Getter function for profile render data fingerprint.

		const dng_fingerprint & RenderDataFingerprint () const
			{

			if (!fRenderDataFingerprint.IsValid ())
				{
				fRenderDataFingerprint = CalculateFingerprint (true);
				}

			return fRenderDataFingerprint;

			}
		
		/// Getter for camera profile unique ID. Use this ID for uniquely
		/// identifying profiles (e.g., for syncing purposes).

		dng_fingerprint UniqueID () const;

		/// Getter for camera profile id.
		/// \retval ID of profile.

		dng_camera_profile_id ProfileID () const
			{
			return dng_camera_profile_id (Name (), Fingerprint ());
			}
		
		/// Setter for camera profile copyright.
		/// \param copyright Copyright string to use for this camera profile.

		void SetCopyright (const char *copyright)
			{
			fCopyright.Set (copyright);
			ClearFingerprint ();
			}

		/// Getter for camera profile copyright.
		/// \retval Copyright string for profile.

		const dng_string & Copyright () const
			{
			return fCopyright;
			}
			
		// Accessors for embed policy.

		/// Setter for camera profile embed policy.
		/// \param policy Policy to use for this camera profile.

		void SetEmbedPolicy (uint32 policy)
			{
			fEmbedPolicy = policy;
			ClearFingerprint ();
			}

		/// Getter for camera profile embed policy.
		/// \retval Policy for profile.

		uint32 EmbedPolicy () const
			{
			return fEmbedPolicy;
			}
			
		/// Returns true iff the profile is legal to embed in a DNG, per the
		/// profile's embed policy.

		bool IsLegalToEmbed () const
			{
			return WasReadFromDNG () ||
				   EmbedPolicy () == pepAllowCopying ||
				   EmbedPolicy () == pepEmbedIfUsed	 ||
				   EmbedPolicy () == pepNoRestrictions;
			}
			
		// Accessors for hue sat maps.

		/// Returns true iff the profile has a valid HueSatMap color table.

		bool HasHueSatDeltas () const
			{
			return fHueSatDeltas1.IsValid ();
			}

		/// Getter for first HueSatMap color table (for calibration illuminant 1).

		const dng_hue_sat_map & HueSatDeltas1 () const
			{
			return fHueSatDeltas1;
			}

		/// Setter for first HueSatMap color table (for calibration illuminant 1).

		void SetHueSatDeltas1 (const dng_hue_sat_map &deltas1);

		/// Getter for second HueSatMap color table (for calibration illuminant 2).

		const dng_hue_sat_map & HueSatDeltas2 () const
			{
			return fHueSatDeltas2;
			}

		/// Setter for second HueSatMap color table (for calibration illuminant 2).

		void SetHueSatDeltas2 (const dng_hue_sat_map &deltas2);

		/// Getter for third HueSatMap color table (for calibration illuminant 3).

		const dng_hue_sat_map & HueSatDeltas3 () const
			{
			return fHueSatDeltas3;
			}

		/// Setter for third HueSatMap color table (for calibration illuminant 3).

		void SetHueSatDeltas3 (const dng_hue_sat_map &deltas3);

		// Accessors for hue sat map encoding.

		/// Returns the hue sat map encoding (see ProfileHueSatMapEncoding tag).

		uint32 HueSatMapEncoding () const
			{
			return fHueSatMapEncoding;
			}

		/// Sets the hue sat map encoding (see ProfileHueSatMapEncoding tag) to the
		/// specified encoding.

		void SetHueSatMapEncoding (uint32 encoding)
			{
			fHueSatMapEncoding = encoding;
			ClearFingerprint ();
			}
		
		// Accessors for look table.

		/// Returns true if the profile has a LookTable.
		
		bool HasLookTable () const
			{
			return fLookTable.IsValid ();
			}
			
		/// Getter for LookTable.

		const dng_hue_sat_map & LookTable () const
			{
			return fLookTable;
			}
			
		/// Setter for LookTable.

		void SetLookTable (const dng_hue_sat_map &table);

		// Accessors for look table encoding.

		/// Returns the LookTable encoding (see ProfileLookTableEncoding tag).

		uint32 LookTableEncoding () const
			{
			return fLookTableEncoding;
			}

		/// Sets the LookTable encoding (see ProfileLookTableEncoding tag) to the
		/// specified encoding.

		void SetLookTableEncoding (uint32 encoding)
			{
			fLookTableEncoding = encoding;
			ClearFingerprint ();
			}

		// Accessors for baseline exposure offset.

		/// Sets the baseline exposure offset of the profile (see
		/// BaselineExposureOffset tag) to the specified value.

		void SetBaselineExposureOffset (real64 exposureOffset)
			{
			fBaselineExposureOffset.Set_real64 (exposureOffset, 100);
			ClearFingerprint ();
			}
					  
		/// Returns the baseline exposure offset of the profile (see
		/// BaselineExposureOffset tag).

		const dng_srational & BaselineExposureOffset () const
			{
			return fBaselineExposureOffset;
			}
		
		// Accessors for default black render.

		/// Sets the default black render of the profile (see DefaultBlackRender tag)
		/// to the specified option.

		void SetDefaultBlackRender (uint32 defaultBlackRender)
			{
			fDefaultBlackRender = defaultBlackRender;
			ClearFingerprint ();
			}
					  
		/// Returns the default black render of the profile (see DefaultBlackRender
		/// tag).

		uint32 DefaultBlackRender () const
			{
			return fDefaultBlackRender;
			}
		
		// Accessors for tone curve.

		/// Returns the tone curve of the profile.

		const dng_tone_curve & ToneCurve () const
			{
			return fToneCurve;
			}

		/// Sets the tone curve of the profile to the specified curve.

		void SetToneCurve (const dng_tone_curve &curve)
			{
			fToneCurve = curve;
			ClearFingerprint ();
			}

		// Accessors for tone method.

		/// Sets the tone method of the profile (see ProfileToneMethod tag).

		void SetToneMethod (uint32 toneMethod)
			{
			fToneMethod = toneMethod;
			ClearFingerprint ();
			}
					  
		/// Returns the tone method of the profile (see ProfileToneMethod tag).

		uint32 ToneMethod () const
			{
			return fToneMethod;
			}
		
		// Accessors for profile calibration signature.

		/// Sets the profile calibration signature (see ProfileCalibrationSignature
		/// tag) to the specified string.

		void SetProfileCalibrationSignature (const char *signature)
			{
			fProfileCalibrationSignature.Set (signature);
			ClearFingerprint ();
			}

		/// Returns the profile calibration signature (see ProfileCalibrationSignature
		/// tag) of the profile.

		const dng_string & ProfileCalibrationSignature () const
			{
			return fProfileCalibrationSignature;
			}

		/// Setter for camera unique model name to restrict use of this profile.
		/// \param camera Camera unique model name designating only camera this
		/// profile can be used with. (Empty string for no restriction.)

		void SetUniqueCameraModelRestriction (const char *camera)
			{
			fUniqueCameraModelRestriction.Set (camera);
			// Not included in fingerprint, so don't need ClearFingerprint ().
			}

		/// Getter for camera unique model name to restrict use of this profile.
		/// \retval Unique model name of only camera this profile can be used with
		/// or empty if no restriction.

		const dng_string & UniqueCameraModelRestriction () const
			{
			return fUniqueCameraModelRestriction;
			}
			
		// Accessors for was read from DNG flag.
		
		/// Sets internal flag to indicate this profile was originally read from a
		/// DNG file.

		void SetWasReadFromDNG (bool state = true)
			{
			fWasReadFromDNG = state;
			}
			
		/// Was this profile read from a DNG?

		bool WasReadFromDNG () const
			{
			return fWasReadFromDNG;
			}

		// Accessors for was read from disk flag.
		
		/// Sets internal flag to indicate this profile was originally read from
		/// disk.

		void SetWasReadFromDisk (bool state = true)
			{
			fWasReadFromDisk = state;
			}
			
		/// Was this profile read from disk?

		bool WasReadFromDisk () const
			{
			return fWasReadFromDisk;
			}

		/// Determines if this a valid profile for this number of color channels?
		/// \retval true if the profile is valid.

		bool IsValid (uint32 channels) const;
		
		/// Predicate to check if two camera profiles are colorwise equal, thus ignores
		/// the profile name.
		/// \param profile Camera profile to compare to.

		bool EqualData (const dng_camera_profile &profile) const
			{
			return RenderDataFingerprint () == profile.RenderDataFingerprint ();
			}
		
		/// Parse profile from dng_camera_profile_info data.

		void Parse (dng_stream &stream,
					dng_camera_profile_info &profileInfo);
					
		/// Parse from an extended profile stream, which is similar to stand alone
		/// TIFF file.
					
		bool ParseExtended (dng_stream &stream);

		/// Convert from a three-color to a four-color Bayer profile.

		virtual void SetFourColorBayer ();
		
		/// Find the hue/sat table to use for a given white point, if any.
		/// The calling routine owns the resulting table.
		
		dng_hue_sat_map * HueSatMapForWhite (const dng_xy_coord &white) const;
		
		/// Stub out the profile (free memory used by large tables).
		
		void Stub ();
		
		/// Was this profile stubbed?
		
		bool WasStubbed () const
			{
			return fWasStubbed;
			}

		/// ProfileGainTableMap2 API.

		bool HasProfileGainTableMap () const;

		std::shared_ptr<const dng_gain_table_map> ShareProfileGainTableMap () const
			{
			return fProfileGainTableMap;
			}

		/// Gives profile shared ownership of gainTableMap.
		
		void SetProfileGainTableMap
			(const std::shared_ptr<const dng_gain_table_map> &gainTableMap);

		/// Dynamic Range API.
		
		const dng_camera_profile_dynamic_range & DynamicRangeInfo () const;

		// Is this profile intended for Standard Dynamic Range render output?
		
		bool IsSDR () const;
		
		// Is this profile intended for High Dynamic Range render output?
		
		bool IsHDR () const;
		
		void SetDynamicRangeInfo (const dng_camera_profile_dynamic_range &info);

		// RGBTables API.

		bool HasMaskedRGBTables () const;

		const dng_masked_rgb_tables & MaskedRGBTables () const;

		std::shared_ptr<const dng_masked_rgb_tables> ShareMaskedRGBTables () const
			{
			return fMaskedRGBTables;
			}

		// Gives negative shared ownership of maskedRGBTables.
		
		void SetMaskedRGBTables
			(const std::shared_ptr<const dng_masked_rgb_tables> &maskedRGBTables);

		// Transfer ownership of maskedRGBTables to negative. After return,
		// maskedRGBTables will be nullptr.
		
		void SetMaskedRGBTables
			(AutoPtr<dng_masked_rgb_tables> &maskedRGBTables);

		// DNG 1.6 compatibility API.

		/// Does this profile use any features introduced in DNG 1.6?
		/// If true, then the DNGVersion tag should be set to at least
		/// 1.6.0.0.

		bool Uses_1_6_Features () const;
		
		/// Does this profile require a DNG 1.6 reader?
		/// If true, then the DNGBackwardVersion tag must be set to
		/// 1.6.0.0 or later.

		/// Note that a profile that uses DNG 1.6 tags might still be
		/// considered backwards compatible with older DNG readers in
		/// some cases.

		bool Requires_1_6_Reader () const;

		/// Does this profile use any features introduced in DNG 1.7?
		/// If true, then the DNGVersion tag should be set to at least
		/// 1.7.0.0.

		bool Uses_1_7_Features () const;
		
	private:
	
		static real64 IlluminantToTemperature (uint32 light,
											   const dng_illuminant_data &data);
		
		void ClearFingerprint ()
			{
			fFingerprint.Clear ();
			fRenderDataFingerprint.Clear ();
			}

		dng_fingerprint CalculateFingerprint (bool renderDataOnly) const;

		static bool ValidForwardMatrix (const dng_matrix &m);

		static void ReadHueSatMap (dng_stream &stream,
								   dng_hue_sat_map &hueSatMap,
								   uint32 hues,
								   uint32 sats,
								   uint32 vals,
								   bool skipSat0);

		dng_hue_sat_map * HueSatMapForWhite_Dual (const dng_xy_coord &white) const;	
								   
		dng_hue_sat_map * HueSatMapForWhite_Triple (const dng_xy_coord &white) const;	
								   
	};

/******************************************************************************/

class dng_camera_profile_metadata
	{
	
	public:
	
		dng_camera_profile_id fProfileID;
		
		dng_string fGroupName;
		
		bool fHDR;
		
		dng_fingerprint fRenderDataFingerprint;
		
		bool fIsLegalToEmbed;
		
		bool fWasReadFromDNG;
		
		bool fWasReadFromDisk;
		
		dng_fingerprint fUniqueID;	// Only valid if fWasReadFromDisk true
		
		dng_string fFilePath;		// Only valid if fWasReadFromDisk true
		
		bool fReadOnly;				// Only valid if fWasReadFromDisk true
		
		int32 fIndex;				// Only valid if attached to negative
		
	public:
	
		dng_camera_profile_metadata (const dng_camera_profile &profile,
									 int32 index = -1);
		
		bool operator== (const dng_camera_profile_metadata &metadata) const;
		
		bool operator!= (const dng_camera_profile_metadata &metadata) const
			{
			return !(*this == metadata);
			}
	
	};

/******************************************************************************/

void SplitCameraProfileName (const dng_string &name,
							 dng_string &baseName,
							 int32 &version);

/*****************************************************************************/

void BuildHueSatMapEncodingTable (dng_memory_allocator &allocator,
								  uint32 encoding,
								  AutoPtr<dng_1d_table> &encodeTable,
								  AutoPtr<dng_1d_table> &decodeTable,
								  bool subSample);
							
/******************************************************************************/

#endif

/******************************************************************************/
