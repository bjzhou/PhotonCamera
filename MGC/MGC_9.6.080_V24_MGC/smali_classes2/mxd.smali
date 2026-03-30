.class final Lmxd;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Lmxe;


# direct methods
.method public constructor <init>(Lmxe;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmxd;->a:Lmxe;

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
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    aput-object v2, v1, v4

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

    :goto_1
    const/4 v4, 0x0

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

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    iget-object p0, p0, Lmxd;->a:Lmxe;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput-object v2, v1, v4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    :goto_9
    const v0, 0xd

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const/16 v3, 0x3ce

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget p1, p0, Lmxe;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 p1, p1, -0x1

    nop

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

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p1, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop
.end method
