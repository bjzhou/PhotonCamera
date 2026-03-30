.class public final synthetic Ljta;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Ljta;->b:I

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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Ljta;->a:I

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

    :goto_3
    iput p4, p0, Ljta;->d:I

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

    :goto_4
    iput-object p1, p0, Ljta;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 9

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    iget-object p0, v0, Lhif;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ljta;->d:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    iget-object v1, v0, Lhif;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v6}, Lhhg;->n(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_7
    invoke-virtual {p0, v1, v0}, Lke;->e(II)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget v0, Lfxi;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v3, Lmjv;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    iget v5, p0, Ljta;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    check-cast v1, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    :goto_f
    iget-object v1, v0, Lhif;->f:Ljava/lang/Object;

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

    :goto_10
    const-string p0, " at stage "

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, v1}, Lfxi;->b(Landroid/content/Context;Landroid/app/Activity;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Ljta;->a:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    const-string v3, "Hardware help dialog for unavailability of any cameras due to reason: "

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-static {v5}, Lrkm;->q(I)Ljava/lang/String;

    move-result-object v1

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

    nop

    nop

    :goto_16
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lhif;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    iget v0, p0, Ljta;->b:I

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

    :goto_19
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, p0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    :goto_21
    const-string p0, "Learn more button clicked"

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Ljta;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_23
    invoke-virtual/range {v3 .. v8}, Lmjv;->t(IIILpog;I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lke;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Ljta;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    move-object v3, p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_c

    nop

    nop

    :goto_2a
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    :goto_2e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    goto/32 :goto_12

    nop

    nop

    :goto_31
    iget v6, p0, Ljta;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
