.class public LExifSanitizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sanitize(Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aK:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    sget v1, Lcom/google/android/libraries/camera/exif/ExifInterface;->aL:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lkdq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lkdq;)V

    return-void
.end method
