.class final Lkiv;
.super Lkiu;


# instance fields
.field private final a:Lkow;


# direct methods
.method public constructor <init>(Lkkb;Landroid/view/Surface;Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    invoke-static {p2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkiu;-><init>(Lkkb;Lnou;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lkld;

    invoke-direct {p1, p3}, Lkld;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    :goto_0
    iput-object p1, p0, Lkiv;->a:Lkow;

    return-void
.end method

.method public static b(Lkkb;Landroid/view/Surface;)Lkiv;
    .locals 2

    new-instance v0, Lkiv;

    invoke-static {p0, p1}, Lkiw;->a(Lkkb;Landroid/view/Surface;)Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lkiv;-><init>(Lkkb;Landroid/view/Surface;Landroid/hardware/camera2/params/OutputConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lkow;
    .locals 1

    iget-object v0, p0, Lkiv;->a:Lkow;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lkiv;->b:Lkkb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SurfaceConfig<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
