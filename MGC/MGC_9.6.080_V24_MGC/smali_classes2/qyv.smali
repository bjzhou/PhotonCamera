.class public final synthetic Lqyv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqyn;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lqro;


# direct methods
.method public synthetic constructor <init>(Lqro;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lqyv;->b:Ljava/util/Map;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqyv;->c:Lqro;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqyv;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lqyv;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_2
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-static {v2}, Lqqy;->d(Ljava/util/Map;)V

    invoke-static {p0}, Lqqy;->d(Ljava/util/Map;)V

    goto :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lqqy;->d(Ljava/util/Map;)V

    invoke-static {v2}, Lqqy;->d(Ljava/util/Map;)V

    goto :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-static {v2}, Lqqy;->d(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lrow;->close()V

    goto/32 :goto_16

    nop

    nop

    :goto_7
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    nop

    nop

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

    :goto_9
    cmpg-double v0, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Lqrf;->t(Ljava/lang/String;)Lrow;

    move-result-object v1

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Lqro;->a()Z

    move-result v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lqyv;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    :goto_14
    iget-object v0, p0, Lqyv;->c:Lqro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_10

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v1}, Lrow;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_17
    const-string v1, "Startup Listeners"

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

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
