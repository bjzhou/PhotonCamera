.class public final synthetic Lgjq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field public final synthetic a:Lgjp;

.field public final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public synthetic constructor <init>(Lgjp;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgjq;->b:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lgjq;->a:Lgjp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p3, p0, Lgjq;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lgjn;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lgjq;->b:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lgjn;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lgjq;->a:Lgjp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p1, v0, v1, v2}, Lgjn;-><init>(Lgjp;Ljava/util/concurrent/ScheduledExecutorService;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lgjq;->c:Ljava/util/concurrent/ScheduledExecutorService;

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

    nop

    :goto_d
    new-instance p1, Lgjn;

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

    :goto_e
    invoke-direct {p1, v0, p0, v1}, Lgjn;-><init>(Lgjp;Ljava/util/concurrent/ScheduledExecutorService;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lgjn;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    check-cast p1, Lgit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
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

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
