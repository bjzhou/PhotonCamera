.class public abstract Lluc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llud;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Loxv;

.field private c:J


# direct methods
.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m(ZLjava/lang/String;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_8

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

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    return-void

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    iget-wide v3, p0, Lluc;->c:J

    nop

    sub-long v3, v0, v3

    nop

    nop

    invoke-virtual {p0}, Lluc;->b()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    cmp-long v3, v3, v5

    nop

    nop

    nop

    if-ltz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_2
    const/4 v2, 0x0

    nop

    nop

    :cond_3
    :goto_f
    iget-object v3, p0, Lluc;->a:Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eq v3, p1, :cond_0

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    iput-wide v0, p0, Lluc;->c:J

    nop

    nop

    sget-object v0, Lluc;->b:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0xfb9

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    invoke-virtual {p0}, Lluc;->c()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    const-string v2, "Updating availability of feature \"%s\" to %s due to %s"

    nop

    invoke-interface {v0, v2, v1, p1, p2}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lluc;->a:Loxv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Loxv;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lluc;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "luc"

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
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    new-instance v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lluc;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    iput-object v0, p0, Lluc;->a:Loxv;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()J
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()V
.end method

.method public final declared-synchronized e(III)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lluc;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    if-ge p2, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    goto :goto_2

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    :goto_2
    packed-switch p1, :pswitch_data_0

    const-string p1, "null"

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :pswitch_0
    const-string p1, "IDLE"

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :pswitch_1
    const-string p1, "NORMAL"

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :pswitch_2
    const-string p1, "MODERATE"

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    :pswitch_3
    const-string p1, "SEVERE"

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :pswitch_4
    const-string p1, "CRITICAL"

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    :pswitch_5
    const-string p1, "UNKNOWN"

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    nop

    nop

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    const-string p2, "State: %s ActiveShots: %s, ticketCount: %s"

    nop

    nop

    nop

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {p0, v0, p1}, Lluc;->7ecc92917e9c4556cc19f457ddc41af8m(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_5
    monitor-exit p0

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
.end method
