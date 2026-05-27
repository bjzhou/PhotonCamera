.class final Lkig;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Lkiq;

.field final synthetic b:Lkoo;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljuf;

.field final synthetic e:Lkih;


# direct methods
.method public constructor <init>(Lkih;Lkiq;Lkoo;Landroid/os/Handler;Ljuf;)V
    .locals 0

    iput-object p1, p0, Lkig;->e:Lkih;

    iput-object p2, p0, Lkig;->a:Lkiq;

    iput-object p3, p0, Lkig;->b:Lkoo;

    iput-object p4, p0, Lkig;->c:Landroid/os/Handler;

    iput-object p5, p0, Lkig;->d:Ljuf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lkig;->e:Lkih;

    iget-object v0, v0, Lkih;->b:Lkaq;

    const-string v1, "createConstrainedHighSpeedCaptureSession"

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lkig;->e:Lkih;

    iget-object v0, v0, Lkih;->c:Lkbc;

    const-string v1, "createCaptureSessionByOutputConfigurations"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    new-instance v3, Lkov;

    new-instance v4, Lkld;

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    invoke-direct {v4, v5}, Lkld;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-direct {v3, v4}, Lkov;-><init>(Lkow;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lkig;->e:Lkih;

    iget-object v1, v1, Lkih;->a:Lkjn;

    iget-object v2, p0, Lkig;->a:Lkiq;

    invoke-virtual {v1, v2}, Lkjn;->d(Lkiq;)V

    iget-object v1, p0, Lkig;->e:Lkih;

    iget-object v1, v1, Lkih;->a:Lkjn;

    iget-object v2, p0, Lkig;->a:Lkiq;

    invoke-virtual {v1, v2, v0}, Lkjn;->a(Lkiq;Ljava/util/Collection;)V

    iget-object v0, p0, Lkig;->b:Lkoo;

    iget-object v1, p0, Lkig;->a:Lkiq;

    iget-object v2, p0, Lkig;->c:Landroid/os/Handler;

    invoke-interface {v0, p1, v1, v2}, Lkoo;->f(Ljava/util/List;Lkom;Landroid/os/Handler;)V
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lkig;->e:Lkih;

    iget-object p1, p1, Lkih;->c:Lkbc;

    :goto_1
    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p1, p0, Lkig;->d:Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lkig;->e:Lkih;

    iget-object p1, p1, Lkih;->c:Lkbc;

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lkig;->e:Lkih;

    iget-object v0, v0, Lkih;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
