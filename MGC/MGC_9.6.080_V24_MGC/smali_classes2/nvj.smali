.class public final synthetic Lnvj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p2, p0, Lnvj;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnvj;->a:Ljava/lang/Object;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvu;->t:Lnwp;

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
    iget-object p0, p0, Lnvj;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnvj;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lobn;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lnvw;->h()V

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lnvu;

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

    nop

    :goto_8
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p1, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lnvu;

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

    :goto_c
    check-cast p0, Lobn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lobn;->b()V

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return v0

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    :goto_11
    if-ne p1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lnvu;->t:Lnwp;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_15
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lobn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lobn;->b()V

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p1, v1, :cond_2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lnvj;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lnvj;->a:Ljava/lang/Object;

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

    :goto_21
    return v0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_23
    iget p1, p0, Lnvj;->b:I

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

    :goto_24
    if-lez v0, :cond_4

    nop

    goto/32 :goto_27

    nop

    :cond_4
    goto/32 :goto_26

    nop

    :goto_25
    iput-boolean v0, p0, Lobn;->c:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_10

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    :goto_28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

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

    :goto_2a
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v0

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne p1, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    if-ne p1, v3, :cond_6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_32
    if-eq p1, v1, :cond_7

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

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-ne p1, v3, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lnvw;->d()V

    :goto_37
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    if-eq p1, v1, :cond_9

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_9
    :goto_39
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method
