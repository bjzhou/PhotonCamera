.class public final synthetic Lgci;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p3, p0, Lgci;->c:I

    nop

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgci;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput p2, p0, Lgci;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lgci;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lgci;->a:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lgci;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p0}, Lgcj;->l(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

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

    :goto_7
    invoke-virtual {v0, v1}, Lfdo;->I(Ljava/lang/String;)I

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lgci;->a:I

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

    :goto_9
    const-string v1, "step_by_step_bottom_sheet_skip_instructions"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    :goto_d
    iget-object v0, p1, Lgcj;->A:Lfdo;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_f
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Lgci;->a:I

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lgcj;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_15
    invoke-interface {v2, v1}, Lndc;->b(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, p1, v1}, Lndc;->a(Landroid/view/View;Z)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lgci;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lgci;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_35

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x10

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

    :goto_20
    return-void

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lgcj;->e()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    iget p1, p0, Lgci;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0}, Lgcj;->k(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->h(IZ)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_27
    check-cast p1, Lgcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, v0, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->c:Lndc;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2a
    invoke-interface {v2, v1}, Lndc;->b(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lgcj;->e()V

    goto/32 :goto_8

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lgci;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :goto_2f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p1, Lgcj;->l:Loyn;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v0}, Lgcj;->k(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    if-ne p1, v1, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, v0, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d:Lndc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->h(IZ)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3a
    goto :goto_41

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_40

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

    :goto_3d
    invoke-interface {p0, p1, v1}, Lndc;->a(Landroid/view/View;Z)V

    goto/32 :goto_20

    nop

    nop

    :goto_3e
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq p0, v0, :cond_4

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move v0, p0

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_31

    nop

    nop

    nop

    nop
.end method
