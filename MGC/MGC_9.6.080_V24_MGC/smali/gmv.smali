.class public final synthetic Lgmv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmlv;


# instance fields
.field public final synthetic a:Lgmy;


# direct methods
.method public synthetic constructor <init>(Lgmy;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgmv;->a:Lgmy;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lmlx;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgmv;->a:Lgmy;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgmy;->m:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    :try_start_0
    sget-object v2, Lgmy;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    const/16 v3, 0x1ec

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    const-string v3, "Stopping recording due to low storage. Remaining bytes=%d"

    nop

    nop

    nop

    nop

    nop

    iget-wide v4, p1, Lmlx;->b:J

    nop

    nop

    nop

    invoke-interface {v2, v3, v4, v5}, Lscz;->u(Ljava/lang/String;J)V

    iget-object v2, p0, Lgmy;->x:Lgmx;

    nop

    sget-object v3, Lgmx;->e:Lgmx;

    nop

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_1
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v2}, Lgmy;->l(Z)V

    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lmlx;->b()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lqpa;->c(Lmlx;)V

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Lmlu;->a(Lmlx;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lmlu;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    throw p0

    nop

    :goto_15
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_18
    iget-object v0, p0, Lgmy;->l:Ltxm;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Lqpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    :goto_1b
    iget-object v0, p0, Lgmy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
