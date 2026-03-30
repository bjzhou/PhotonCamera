.class public Lkis;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/os/Handler;

.field private final c:Lkjc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "kis"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lkis;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lkjc;Landroid/os/Handler;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lkis;->c:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkis;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lkjc;->a()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkis;->c:Lkjc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final b(Lpge;Lkmq;Lkjj;Lkjb;)V
    .locals 6

    goto/32 :goto_16

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_2
    iget-object v3, p0, Lkis;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Lkir;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, p0, v1, v0, p4}, Lkir;-><init>(Lkis;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lkjb;)V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Ljava/lang/Object;

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

    :goto_8
    iget-object p0, p0, Lkis;->c:Lkjc;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v0, p4, v3, v4}, Lkbu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v4, 0x2710

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, p1, p2, p3, v2}, Lkjc;->b(Lpge;Lkmq;Lkjj;Lkjb;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    new-instance v2, Lkbu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    const/16 v3, 0x9

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

    nop
.end method

.method public final c(Lpge;Llgc;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method
