.class public Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lejv;


# instance fields
.field public a:I

.field public b:Z

.field private exposureScalesRef:J

.field private modelRef:J

.field private rendererRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cyclops"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZDD)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->rendererRef:J

    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->modelRef:J

    iput-wide v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->exposureScalesRef:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->a:I

    iput-boolean v0, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeInitialize(Ljava/lang/String;IZDD)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->b:Z

    return-void
.end method

.method private native nativeInitialize(Ljava/lang/String;IZDD)Z
.end method


# virtual methods
.method public final finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/imax/cyclops/processing/OmnistereoRendererImpl;->nativeRelease()V

    return-void
.end method

.method public native getResult(Z)Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;
.end method

.method public native nativeApplyTexture(IIII)V
.end method

.method public native nativeRelease()V
.end method
