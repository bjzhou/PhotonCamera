.class public final synthetic Lqcb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqcb;->b:Ljava/lang/Object;

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
    iput p3, p0, Lqcb;->c:I

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lqcb;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Lqcg;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Lpzj;->c()Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    invoke-static {v3}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v3}, Lpzj;->c()Lsui;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqcb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, v0, p0}, Lqbo;-><init>(Ltlk;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqcb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, v2, Lqcg;->a:Ljava/lang/Object;

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

    nop

    :goto_b
    new-instance v4, Lrob;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lrof;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lrof;->d(I)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, v2, Lqcg;->h:Ljava/lang/Object;

    nop

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
    invoke-direct {v4, v0, p0, v1}, Lrob;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ltlk;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lqcb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3, v4, p0}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v0, Ltlk;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    move-object v2, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Lqcb;->a:I

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

    nop

    nop

    :goto_1a
    iget p0, p0, Lqcb;->a:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Lqcb;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p0, Lqcb;->a:I

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

    :goto_1f
    new-instance v2, Lqbo;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    invoke-static {v1, v2, p0}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_24
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_25
    iget-object p0, v0, Ltlk;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
