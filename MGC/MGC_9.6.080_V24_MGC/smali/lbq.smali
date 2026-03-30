.class public final synthetic Llbq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llbs;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Llbs;ZZZZ)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean p3, p0, Llbq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p4, p0, Llbq;->d:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p5, p0, Llbq;->e:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Llbq;->b:Z

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

    :goto_6
    iput-object p1, p0, Llbq;->a:Llbs;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_11

    nop

    nop

    :goto_0
    iget-boolean v2, p0, Llbq;->b:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lpik;->q(ZZZ)V

    goto/32 :goto_10

    nop

    nop

    :goto_2
    iget-object p0, v0, Llbs;->q:Lhwy;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p0, p0, Llbq;->e:Z

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

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    check-cast v2, Lphr;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    invoke-static {}, Lpik;->v()Lpgc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lpik;->r(Lpgd;)V

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lphq;-><init>(Lphr;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object p0, v0, Llbs;->q:Lhwy;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v3, p0, Llbq;->c:Z

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v1, p0, Llbq;->d:Z

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    :goto_15
    iput-object p0, v2, Lphr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Llbq;->a:Llbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p0, v1, Lphr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    iget-object p0, v0, Llbs;->o:Lpik;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Lphr;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v4, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    check-cast v1, Lphr;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    iget-object v1, v0, Llbs;->o:Lpik;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p0, v2, Lphr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    :goto_25
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v3, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lhwy;->b()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lphq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    iget-object p0, v0, Llbs;->q:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method
