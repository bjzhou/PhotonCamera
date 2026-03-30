.class public final Lqdl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqdl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lqdl;->a:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lmoi;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lqdl;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_3
    iput-object p1, p0, Lqdl;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqdl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Lmoi;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const-string v1, "Camcorder.onError(): %s"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    iget-object v0, v0, Lmoi;->m:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v1, 0x11d1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

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

    :goto_12
    check-cast v0, Lscz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lmoi;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lqdl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lmoi;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lmoi;->E:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lqdl;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lmoi;

    nop

    nop

    nop

    iget-object p0, p0, Lmoi;->af:Lmoo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lmoq;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0x11e4

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "onRecordingError() %s"

    nop

    invoke-interface {v1, v2, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lmoo;->e:Lmoq;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lmoq;->l:Loxv;

    nop

    nop

    nop

    nop

    sget-object v1, Lmnp;->h:Lmnp;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Loxv;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lmoo;->f:Lixe;

    nop

    nop

    new-instance v1, Lnei;

    nop

    invoke-direct {v1}, Lnei;-><init>()V

    iget-object v2, p0, Lmoo;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lnei;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xc

    nop

    nop

    iput v3, v1, Lnei;->h:I

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    iput-boolean v3, v1, Lnei;->a:Z

    nop

    nop

    nop

    nop

    nop

    const v3, 0x7f140765

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    iput-object v2, v1, Lnei;->e:Ljava/lang/String;

    nop

    invoke-virtual {v1}, Lnei;->a()Lneh;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Lixe;->a(Lixf;)Lpci;

    iget-object p0, p0, Lmoo;->e:Lmoq;

    nop

    nop

    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Lmoq;->i(I)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
