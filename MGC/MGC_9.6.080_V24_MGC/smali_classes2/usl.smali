.class public abstract Lusl;
.super Lusc;
.source "PG"


# direct methods
.method protected constructor <init>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Network bound to request not found"

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, v0, v1}, Lusc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v1, 0x20

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

    :goto_c
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()I
.end method

.method public abstract c()Z
.end method
