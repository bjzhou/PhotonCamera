.class public final synthetic Lobm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lobm;->a:Ljava/lang/Object;

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

    :goto_2
    iput p2, p0, Lobm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop
.end method

.method public constructor <init>(Lrga;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lobm;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2
    iget-boolean p1, p1, Lrga;->e:Z

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean v2, p1, Lrga;->f:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    iget-object p0, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lobn;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    iget-object p1, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_9
    invoke-virtual {p0}, Lnuj;->d()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lrga;->isShowing()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_2

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->v()Z

    goto/32 :goto_3a

    nop

    nop

    :goto_d
    iput-boolean v0, p1, Lrga;->e:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lrga;

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

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_4

    nop

    goto/32 :goto_2d

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;->u()Z

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-boolean v1, p1, Lrga;->f:Z

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v3, 0x101035b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1d
    const v1, 0x18

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    goto/32 :goto_3b

    nop

    :goto_21
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p0, :cond_6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lnuj;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lobn;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lobn;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lobn;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_c

    nop

    nop

    :goto_2e
    check-cast p1, Lrga;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lrga;->cancel()V

    :goto_31
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_32
    if-ne p1, v1, :cond_8

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lnuj;->n:Lnup;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    filled-new-array {v3}, [I

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget p1, p0, Lobm;->b:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lobm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p1, Lrga;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_39
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :goto_3b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v2, p1, Lrga;->d:Z

    nop

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

    :goto_3d
    invoke-virtual {p0, v0}, Lnuk;->c(Z)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    :goto_3f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Lrga;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    :goto_42
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop
.end method
