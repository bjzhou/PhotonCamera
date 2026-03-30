.class public final Lkrz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/List;

.field public final c:Lkrx;

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lkrx;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkrz;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lkrz;->c:Lkrx;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object p1, p0, Lkrz;->a:Ljava/util/Set;

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

    :goto_8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput-object p1, p0, Lkrz;->b:Ljava/util/List;

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

    nop
.end method


# virtual methods
.method public final close()V
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    const/4 v6, 0x0

    nop

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

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Lsui;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, p0}, Lkry;-><init>(Lkrz;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-direct {v1, p0, v2}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v5, 0x2e5

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

    :goto_7
    const/4 v3, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_4

    nop

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

    goto/32 :goto_21

    nop

    nop

    :goto_c
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-static {v1, v0, v2}, Lolx;->bk(Lsui;Lsui;Lpcb;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkrz;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v2, Lkry;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lgng;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_19
    invoke-static {v5, v6, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lkrz;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v5, 0x2e6

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aput-object v1, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x7

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Lsui;

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

    nop

    :goto_20
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    const/4 v3, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    aput-object v0, v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method
