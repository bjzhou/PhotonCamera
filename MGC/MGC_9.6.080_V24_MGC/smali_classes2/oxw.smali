.class final Loxw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field private final a:Lpcm;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lows;

.field private d:Lows;


# direct methods
.method public constructor <init>(Lpcm;Ljava/util/concurrent/Executor;Lows;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Loxw;->c:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3}, Lows;->c()Lows;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Loxw;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput-object p1, p0, Loxw;->d:Lows;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Loxw;->a:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lows;->close()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, v2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

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

    :goto_2
    invoke-virtual {v0}, Lows;->c()Lows;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_5
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    iget-object v2, p0, Loxw;->a:Lpcm;

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

    :goto_9
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_0

    nop

    nop

    :goto_a
    check-cast p1, Loyd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Loxw;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    iput-object v0, p0, Loxw;->d:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Loxw;->d:Lows;

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

    :goto_13
    iget-object v0, p0, Loxw;->c:Lows;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
