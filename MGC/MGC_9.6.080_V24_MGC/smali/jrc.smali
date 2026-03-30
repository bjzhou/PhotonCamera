.class public final Ljrc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lixr;


# instance fields
.field final synthetic a:Lixr;

.field final synthetic n:Ljava/util/concurrent/TimeUnit;

.field final synthetic o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lixr;Ljava/util/concurrent/TimeUnit;)V
    .locals 0

    goto/32 :goto_2

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

    nop

    :goto_1
    const-string p1, "AppSettings"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljrc;->a:Lixr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljrc;->n:Ljava/util/concurrent/TimeUnit;

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

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p1, p0, Ljrc;->o:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Lqxk;)Ljava/lang/Object;
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long v1, v3, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, " ms"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    const-string p1, " took "

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    sub-long/2addr v3, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    iget-object v0, p0, Ljrc;->a:Lixr;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    :goto_11
    const-wide/16 v5, 0x5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-gtz v1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_18

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    nop

    :goto_19
    iget-object v1, p0, Ljrc;->n:Ljava/util/concurrent/TimeUnit;

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

    nop

    :goto_1a
    invoke-interface {v0, p1}, Lixr;->a(Lqxk;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v2, "Warning: providing system service "

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v5, v6, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Ljrc;->o:Ljava/lang/String;

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

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop
.end method
