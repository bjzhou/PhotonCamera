.class public abstract Ltfr;
.super Ltdx;
.source "PG"


# instance fields
.field private final a:Ltfu;


# direct methods
.method public constructor <init>(Ltfu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltdx;-><init>()V

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

    :goto_2
    iput-object p1, p0, Ltfr;->a:Ltfu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lthn;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_8
    invoke-direct {p1, p0}, Ltdu;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltfr;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Ltfr;->a:Ltfu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :catch_1
    move-exception p0

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

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    new-instance p1, Ltdu;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lthn;->t()I

    move-result v0

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

    :goto_17
    invoke-static {p0}, Lthh;->b(Ljava/lang/IllegalAccessException;)Ljava/lang/RuntimeException;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lthn;->o()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, v1, Ltfu;->b:Ljava/util/Map;

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Lthn;->m()V

    :goto_1a
    invoke-virtual {p1}, Lthn;->r()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    invoke-virtual {p1}, Lthn;->h()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ltfs;

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    invoke-virtual {p1}, Lthn;->q()V

    goto :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {p0, v0, p1, v2}, Ltfr;->e(Ljava/lang/Object;Lthn;Ltfs;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lthn;->p()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0}, Ltfr;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract d(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract e(Ljava/lang/Object;Lthn;Ltfs;)V
.end method
