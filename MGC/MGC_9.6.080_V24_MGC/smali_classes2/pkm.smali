.class public final Lpkm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpcu;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile c:Ljava/lang/Float;

.field public final d:Ljava/util/concurrent/ConcurrentSkipListSet;


# direct methods
.method public constructor <init>(Lpcu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lpkm;->c:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, v0}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

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

    :goto_3
    iput-object v0, p0, Lpkm;->d:Ljava/util/concurrent/ConcurrentSkipListSet;

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

    :goto_4
    iput-object v0, p0, Lpkm;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    const-string v0, "CameraEvent"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lpkm;->a:Lpcu;

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

    :goto_a
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v0, -0x40800000    # -1.0f

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

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

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpkm;->d:Ljava/util/concurrent/ConcurrentSkipListSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop
.end method
