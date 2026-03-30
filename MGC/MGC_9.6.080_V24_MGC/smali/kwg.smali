.class final Lkwg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkwo;


# instance fields
.field final synthetic a:Lkwh;

.field private final b:Lrsu;

.field private c:Z


# direct methods
.method public constructor <init>(Lkwh;Lrsu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkwg;->b:Lrsu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkwg;->a:Lkwh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lrsu;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkwg;->b:Lrsu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final close()V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v0, v0, Lkwh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    iget-object v0, p0, Lkwg;->a:Lkwh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkwg;->a:Lkwh;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v1, p0, Lkwg;->c:Z

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lkwg;->c:Z

    nop

    nop

    iget-object v2, p0, Lkwg;->a:Lkwh;

    nop

    nop

    nop

    nop

    nop

    iget v3, v2, Lkwh;->j:I

    nop

    nop

    if-lez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Lkwh;->j:I

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_2
    sget-object v2, Lkwh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    const/16 v3, 0xc2f

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    const-string v3, "Metering lock was invalid."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    :goto_f
    iget-object v2, p0, Lkwg;->a:Lkwh;

    nop

    nop

    nop

    iget v3, v2, Lkwh;->j:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    iget-boolean v2, v2, Lkwh;->k:Z

    nop

    if-eqz v2, :cond_3

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_3
    move v1, v4

    nop

    :goto_10
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_12
    invoke-virtual {p0}, Lkwh;->c()V

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
