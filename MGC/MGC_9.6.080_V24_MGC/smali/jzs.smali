.class public Ljzs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lsuu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "jzs"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Ljzs;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lsui;Lsui;Lsuu;)V
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v4, 0xf

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v3, p3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p4, v6, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_7
    move-object v2, p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p4, p0, Ljzs;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v6, Lhfj;

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

    :goto_e
    move-object v0, v6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p4, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    invoke-static {p4}, Lsgj;->U(Ljava/lang/Iterable;)Lsui;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct/range {v0 .. v5}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[S)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
