.class public final Likt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:J


# instance fields
.field public b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    sput-wide v0, Likt;->a:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const-wide/16 v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xc

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Loyd;Ljava/util/concurrent/Executor;Lows;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, v0, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    new-instance v0, Lifd;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Likt;->b:Ljava/util/HashMap;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, v1}, Lifd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p3, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method
