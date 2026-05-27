.class public final Lnrl;
.super Lcom/google/googlex/gcam/YuvWriteView;


# instance fields
.field final synthetic a:Lcom/google/googlex/gcam/YuvImage;

.field private final d:Lcom/google/googlex/gcam/YuvImage;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/YuvWriteView;Lcom/google/googlex/gcam/YuvImage;)V
    .locals 2

    iput-object p2, p0, Lnrl;->a:Lcom/google/googlex/gcam/YuvImage;

    invoke-static {p1}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvWriteView__SWIG_1(JLcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(J)V

    iput-object p2, p0, Lnrl;->d:Lcom/google/googlex/gcam/YuvImage;

    return-void
.end method
