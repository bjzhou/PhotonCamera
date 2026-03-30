.class public final synthetic Lfdb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfat;


# instance fields
.field public final synthetic a:Lfdc;


# direct methods
.method public synthetic constructor <init>(Lfdc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfdb;->a:Lfdc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final d()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lfbc;->k()F

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    iget-object p0, p0, Lfdb;->a:Lfdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lfdc;->n(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lfdc;->d:Lfbc;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
