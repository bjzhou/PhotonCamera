.class public final Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lgtk;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;->a:Lnak;

    invoke-static {}, Lgtl;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;->b:J

    return-void
.end method

.method public static native initializeImpl()J
.end method

.method private static native releaseImpl(J)V
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;->b:J

    return-wide v0
.end method

.method public final close()V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;->releaseImpl(J)V

    iput-wide v2, p0, Lcom/google/android/apps/camera/rectiface/jni/RectifaceWarpfieldImpl;->b:J

    :cond_0
    return-void
.end method
