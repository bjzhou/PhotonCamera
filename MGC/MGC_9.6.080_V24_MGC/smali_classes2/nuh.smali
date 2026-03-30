.class public final Lnuh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field a:Z

.field final synthetic b:Lnuj;


# direct methods
.method public constructor <init>(Lnuj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lnuh;->b:Lnuj;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lnuh;->a:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Lnuj;->c:Lrss;

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

    nop

    :goto_2
    iget-object p0, p0, Lnuj;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2, p3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_8
    check-cast p2, Loxv;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v2, 0x43480000    # 200.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1}, Lhwy;->n(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_c
    add-float/2addr v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lnuj;->n:Lnup;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ltz p2, :cond_2

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

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p1, Lnuj;->n:Lnup;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_15
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lnuk;->j()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 p3, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lnuh;->b:Lnuj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    check-cast p3, Ljry;

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

    :goto_1d
    const/high16 p1, -0x3d380000    # -100.0f

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p2, :cond_3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    cmpg-float p2, v0, p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p1, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean p1, p0, Lnuh;->a:Z

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_27
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_28
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v1, p3

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p2, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1}, Lnuj;->j(Lnuj;)V

    :goto_30
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4c

    nop

    :goto_32
    goto/32 :goto_58

    nop

    nop

    :goto_33
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, p3}, Lhwy;->n(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 p3, 0xc8

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_28

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_49

    nop

    nop

    :goto_39
    check-cast p1, Ljava/lang/Boolean;

    nop

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

    :goto_3a
    invoke-interface {p1, p3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-float/2addr v2, v3

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

    nop

    nop

    :goto_3e
    if-eqz p1, :cond_4

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

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p2, p2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_41
    if-nez p3, :cond_5

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_59

    nop

    nop

    :goto_42
    const/4 p3, 0x0

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

    nop

    :goto_43
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_44
    div-float v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_a

    nop

    nop

    :goto_47
    check-cast p1, Loxv;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, p2, p3}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->e(II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    int-to-float v0, p2

    nop

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

    :goto_4a
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/high16 v3, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4f
    cmpl-float p1, v0, p1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_50
    if-eqz p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    :goto_51
    invoke-virtual {p1, v1}, Lnuj;->e(Z)V

    :goto_52
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_53
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Lnuk;->h()V

    goto/32 :goto_33

    nop

    nop

    :goto_55
    iput-object v2, p3, Ljry;->f:Lj$/util/Optional;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_56
    div-float/2addr v0, p3

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_57
    add-float/2addr v0, p1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_58
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_59
    iget-object p1, p1, Lnuj;->r:Loyn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_5b
    if-ne p1, v1, :cond_7

    nop

    goto/32 :goto_28

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lnuh;->a:Z

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnuh;->b:Lnuj;

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
    iget-object p1, p1, Lnuj;->n:Lnup;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object p1, p0, Lnuh;->b:Lnuj;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lnuk;->h()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lnuj;->j(Lnuj;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Lnuh;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method
