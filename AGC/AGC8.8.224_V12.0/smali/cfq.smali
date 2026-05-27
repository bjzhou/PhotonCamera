.class final Lcfq;
.super Ljava/lang/Object;

# interfaces
.implements Lceq;


# instance fields
.field private final a:Ljvs;

.field private final b:Ljwb;


# direct methods
.method public constructor <init>(Lgzm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lgzd;->q:Lgzr;

    invoke-interface {p1, v0}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object p1

    iput-object p1, p0, Lcfq;->a:Ljvs;

    new-instance p1, Ljvk;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcfq;->b:Ljwb;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Lcfq;->a:Ljvs;

    return-object v0
.end method

.method public final b()Ljwb;
    .locals 1

    iget-object v0, p0, Lcfq;->b:Ljwb;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Liuw;->a:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method
