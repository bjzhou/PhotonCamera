.class final Lqiw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqix;


# instance fields
.field final synthetic a:Lsui;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lsui;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lqiw;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

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
    iput-object p1, p0, Lqiw;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lqix;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-static {p0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget v0, p0, Lqiw;->b:I

    nop

    nop

    goto/32 :goto_6

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

    nop

    :goto_5
    invoke-static {p0}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

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

    nop

    nop

    :goto_6
    iget-object p0, p0, Lqiw;->a:Lsui;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0}, Lqix;->a()V

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lpxf;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lpxf;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-static {p0, v0, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    :goto_10
    iget-object p0, p0, Lqiw;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lqiw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop
.end method
