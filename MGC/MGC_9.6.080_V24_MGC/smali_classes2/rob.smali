.class public final synthetic Lrob;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p3, p0, Lrob;->c:I

    nop

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
    iput-object p1, p0, Lrob;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput p2, p0, Lrob;->a:I

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lsui;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lrof;->d(I)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lrof;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iget p1, p0, Lrob;->a:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, v0, p1, p0}, Lqcc;-><init>(Lqcg;Ljava/util/List;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/lang/Throwable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lqcg;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    iget-object p0, v0, Lqcg;->h:Ljava/lang/Object;

    nop

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

    nop

    :goto_c
    iget-object v1, v0, Lqcg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lrob;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrob;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljava/util/List;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_11
    invoke-interface {v1}, Lpzj;->e()Lsui;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lrob;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    iget p0, p0, Lrob;->a:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    new-instance v2, Lqcc;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
