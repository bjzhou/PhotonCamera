.class public final Lkwu;
.super Lpuq;
.source "PG"


# instance fields
.field public final a:Lmjv;

.field private final b:Lowu;


# direct methods
.method public constructor <init>(Lmjv;Lowu;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkwu;->a:Lmjv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lkwu;->b:Lowu;

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final cI(Lpna;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lkli;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1, v2}, Lkli;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lpna;->a()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_13
    invoke-virtual {p1, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lkwu;->b:Lowu;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
