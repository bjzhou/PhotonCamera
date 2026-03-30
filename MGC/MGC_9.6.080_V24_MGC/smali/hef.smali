.class public final Lhef;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Ldux;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Lhef;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lhef;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lhef;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhef;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Lpcu;Ljava/lang/Runnable;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lhef;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhef;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhef;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lhef;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    const-string v3, "SQLite error while recording fatal error"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhef;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroid/os/Handler;

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

    nop

    :goto_4
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    iget-object v2, p0, Lhef;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v3, Lat;

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

    nop

    :goto_7
    const/16 v4, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, v2, v1, v4, v0}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lhef;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v1, Ldur;

    nop

    nop

    nop

    invoke-virtual {v1}, Ldur;->a()Lqei;

    move-result-object v1

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    :try_start_1
    iget-object v0, p0, Lhef;->d:Ljava/lang/Object;

    nop

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_d

    nop

    nop

    :goto_16
    iget-object p0, p0, Lhef;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    invoke-static {v3, v2}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    iget v0, p0, Lhef;->a:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    invoke-interface {v1, v2, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lhef;->b:Ljava/lang/Object;

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

    nop
.end method
