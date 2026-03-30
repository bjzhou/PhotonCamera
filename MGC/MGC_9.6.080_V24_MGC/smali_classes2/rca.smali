.class final Lrca;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field final synthetic a:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lrcc;

.field final synthetic d:J


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/String;Lrcc;JLtzy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrca;->a:Landroid/content/BroadcastReceiver$PendingResult;

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

    :goto_1
    invoke-direct {p0, p1, p6}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-wide p4, p0, Lrca;->d:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lrca;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lrca;->c:Lrcc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    check-cast p2, Ltzy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    check-cast p0, Lrca;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    sget-object p1, Ltyg;->a:Ltyg;

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
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lrca;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    check-cast p1, Lufs;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    goto/32 :goto_9

    nop

    nop

    :goto_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_2
    iget-object v0, p0, Lrca;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    sub-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultData(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lrca;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, -0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lrca;->a:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    :goto_13
    iget-object p1, p0, Lrca;->a:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v2, p0, Lrca;->d:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1c
    iget-object p1, p0, Lrca;->a:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-static {p1}, Lrcc;->a(Landroid/content/BroadcastReceiver$PendingResult;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Lrca;->b:Ljava/lang/String;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lrca;->a:Landroid/content/BroadcastReceiver$PendingResult;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    iget-object v3, p0, Lrca;->c:Lrcc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-wide v4, p0, Lrca;->d:J

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
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    move-object v6, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Lrca;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct/range {v0 .. v6}, Lrca;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Ljava/lang/String;Lrcc;JLtzy;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    const v1, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
