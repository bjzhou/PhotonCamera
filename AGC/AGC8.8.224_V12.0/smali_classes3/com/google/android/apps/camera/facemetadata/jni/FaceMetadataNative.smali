.class public final Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createHandle()J
.end method

.method public static native generateFaceInfos([Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;)[J
.end method

.method public static native generateFaceThumbnails(II[JJ)[J
.end method

.method public static native getThumbnailSize(J)I
.end method

.method public static native releaseFaceInfos([J)V
.end method

.method public static native releaseFaceThumbnails([J)V
.end method

.method public static native releaseHandle(J)V
.end method
