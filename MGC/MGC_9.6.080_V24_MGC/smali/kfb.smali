.class final Lkfb;
.super Lhhg;
.source "PG"


# instance fields
.field final synthetic a:Lkfc;


# direct methods
.method public constructor <init>(Lkfc;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    iput-object p1, p0, Lkfb;->a:Lkfc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lhhg;-><init>([S)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkfb;->a:Lkfc;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lglz;->e()V

    goto/32 :goto_3

    nop

    nop

    nop

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

.method public final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkfb;->a:Lkfc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lkfc;->c()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkfb;->a:Lkfc;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lkfc;->h:Lgqg;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, v1, Lkfc;->f:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    const-string v2, "URI not set."

    nop

    nop

    invoke-static {v1, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "android.intent.action.VIEW"

    nop

    nop

    nop

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lkfb;->a:Lkfc;

    nop

    nop

    iget-object v2, v2, Lkfc;->f:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Landroid/net/Uri;

    nop

    nop

    nop

    iget-object v3, p0, Lkfb;->a:Lkfc;

    nop

    iget-object v3, v3, Lkfc;->h:Lgqg;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lgqg;->g:Lozm;

    nop

    nop

    nop

    iget-object v3, v3, Lozm;->a:Lozf;

    nop

    nop

    iget-object v3, v3, Lozf;->f:Lpsz;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lpsz;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lkfb;->a:Lkfc;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkfc;->i:Ljhy;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Ljhy;->t:Z

    nop

    nop

    nop

    nop

    const/high16 v2, 0x80000

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Ljhy;->J:Lluq;

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lluq;->c(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    iget-object v0, p0, Lkfb;->a:Lkfc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    :catch_0
    move-exception p0

    nop

    :try_start_2
    sget-object v1, Lkfc;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xb64

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Couldn\'t view video"

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    iget-object v0, v0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
