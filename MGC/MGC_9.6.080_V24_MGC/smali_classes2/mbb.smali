.class public final Lmbb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lmbd;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lmbb;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lmas;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    :goto_3
    iget-object p1, p0, Lmbd;->a:Lmbb;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-direct {v1, p0, v0}, Lmas;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    const v1, 0x1a

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_12
    iput p1, p0, Lmbb;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lmbd;->d:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lmbb;->a:Lmbd;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p1, Lmbb;->a:Lmbd;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lmbd;->d()V

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lmbd;->c:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop
.end method
