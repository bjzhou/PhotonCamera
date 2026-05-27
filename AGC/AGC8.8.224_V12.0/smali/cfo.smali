.class public final Lcfo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/googlex/gcam/FloatDeque;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/googlex/gcam/FloatDeque;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FloatDeque__SWIG_0()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlex/gcam/FloatDeque;-><init>(JZ)V

    iput-object v0, p0, Lcfo;->a:Lcom/google/googlex/gcam/FloatDeque;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/FloatDeque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfo;->a:Lcom/google/googlex/gcam/FloatDeque;

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 3

    iget-object v0, p0, Lcfo;->a:Lcom/google/googlex/gcam/FloatDeque;

    iget-wide v1, v0, Lcom/google/googlex/gcam/FloatDeque;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatDeque_getitem(JLcom/google/googlex/gcam/FloatDeque;I)F

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 3

    iget-object v0, p0, Lcfo;->a:Lcom/google/googlex/gcam/FloatDeque;

    iget-wide v1, v0, Lcom/google/googlex/gcam/FloatDeque;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatDeque_size(JLcom/google/googlex/gcam/FloatDeque;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(F)V
    .locals 3

    iget-object v0, p0, Lcfo;->a:Lcom/google/googlex/gcam/FloatDeque;

    iget-wide v1, v0, Lcom/google/googlex/gcam/FloatDeque;->a:J

    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatDeque_push_back(JLcom/google/googlex/gcam/FloatDeque;F)V

    return-void
.end method
