.class final Lbpl;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lbpv;


# direct methods
.method public constructor <init>(Lbpv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbpl;->a:Lbpv;

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Luch;->K(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lbpv;->d:Lugy;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    iget-object v3, p0, Lbpv;->o:Lulh;

    nop

    nop

    nop

    nop

    sget-object v4, Lbpi;->b:Lbpi;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lulh;->d(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Lugy;->p(Ljava/util/concurrent/CancellationException;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lbpv;->k:Luez;

    nop

    nop

    new-instance v0, Lbpk;

    nop

    invoke-direct {v0, p0, p1}, Lbpk;-><init>(Lbpv;Ljava/lang/Throwable;)V

    invoke-interface {v2, v0}, Lugy;->n(Lubk;)Lugg;

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iput-object v0, p0, Lbpv;->e:Ljava/lang/Throwable;

    nop

    nop

    iget-object p0, p0, Lbpv;->o:Lulh;

    nop

    sget-object p1, Lbpi;->a:Lbpi;

    nop

    invoke-virtual {p0, p1}, Lulh;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    monitor-exit v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "Recomposer effect job completed"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    :goto_11
    iget-object v1, p0, Lbpv;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lbpl;->a:Lbpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
