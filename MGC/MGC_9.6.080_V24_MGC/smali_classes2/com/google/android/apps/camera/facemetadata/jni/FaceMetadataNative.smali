.class public final Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
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
