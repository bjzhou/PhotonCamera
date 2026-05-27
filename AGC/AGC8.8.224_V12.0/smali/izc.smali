.class public final Lizc;
.super Liyw;


# instance fields
.field public final a:Lizb;

.field public c:Lizt;

.field private final d:Lizm;

.field private final e:Ljad;


# direct methods
.method protected constructor <init>(Liyz;)V
    .locals 1

    invoke-direct {p0, p1}, Liyw;-><init>(Liyz;)V

    new-instance v0, Ljad;

    invoke-direct {v0}, Ljad;-><init>()V

    iput-object v0, p0, Lizc;->e:Ljad;

    new-instance v0, Lizb;

    invoke-direct {v0, p0}, Lizb;-><init>(Lizc;)V

    iput-object v0, p0, Lizc;->a:Lizb;

    new-instance v0, Liza;

    invoke-direct {v0, p0, p1}, Liza;-><init>(Lizc;Liyz;)V

    iput-object v0, p0, Lizc;->d:Lizm;

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    iget-object v0, p0, Lizc;->e:Ljad;

    invoke-virtual {v0}, Ljad;->b()V

    iget-object v0, p0, Lizc;->d:Lizm;

    sget-object v1, Lizq;->x:Ligo;

    invoke-virtual {v1}, Ligo;->D()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lizm;->d(J)V

    return-void
.end method

.method public final D()Z
    .locals 1

    invoke-static {}, Liys;->a()V

    invoke-virtual {p0}, Liyw;->z()V

    iget-object v0, p0, Lizc;->c:Lizt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final E(Lizs;)Z
    .locals 7

    invoke-static {p1}, Ljhp;->ab(Ljava/lang/Object;)V

    invoke-static {}, Liys;->a()V

    invoke-virtual {p0}, Liyw;->z()V

    iget-object v0, p0, Lizc;->c:Lizt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p1, Lizs;->e:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lizl;->f()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lizl;->h()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Lizs;->a:Ljava/util/Map;

    iget-wide v5, p1, Lizs;->c:J

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Lcbe;->z(ILandroid/os/Parcel;)V

    invoke-virtual {p0}, Lizc;->C()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    const-string p1, "Failed to send hits to AnalyticsService"

    invoke-virtual {p0, p1}, Liyv;->q(Ljava/lang/String;)V

    return v1
.end method

.method protected final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Liys;->a()V

    invoke-virtual {p0}, Liyw;->z()V

    :try_start_0
    invoke-static {}, Ljhw;->a()Ljhw;

    move-result-object v0

    invoke-virtual {p0}, Liyv;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lizc;->a:Lizb;

    invoke-virtual {v0, v1, v2}, Ljhw;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v0, p0, Lizc;->c:Lizt;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lizc;->c:Lizt;

    invoke-virtual {p0}, Lizc;->c()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Liyv;->f()Liyu;

    move-result-object v0

    invoke-virtual {v0}, Liyw;->z()V

    invoke-static {}, Liys;->a()V

    iget-object v0, v0, Liyu;->a:Lizj;

    invoke-static {}, Liys;->a()V

    invoke-virtual {v0}, Liyw;->z()V

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Liyv;->q(Ljava/lang/String;)V

    return-void
.end method
