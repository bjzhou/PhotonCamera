.class public final synthetic Liag;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnnz;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

.field public final synthetic b:Lryy;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lryy;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Liag;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Liag;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p2, p0, Liag;->b:Lryy;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrss;)V
    .locals 3

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_0
    iget-object p1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Liag;->b:Lryy;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    iget-object v0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
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

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    :goto_a
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

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

    :goto_c
    iget-object p1, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

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

    :goto_d
    iget-object p1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Liag;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    iget-object p0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->k:Loyn;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    if-ne v0, v1, :cond_1

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
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b()V

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0, p1, v2}, Liag;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lryy;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1b
    iget v0, p0, Liag;->c:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->m:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    iget-object p0, p0, Liag;->b:Lryy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Liag;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

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

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->d()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_28
    iget-object p0, p0, Liag;->b:Lryy;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, p0}, Liac;->d(Lryy;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->q:Liac;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2d
    invoke-interface {v0, p1}, Liac;->c(Lryy;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2e
    iget-object p1, v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Liag;->b:Lryy;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->e()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->o:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_36
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_37
    iget-object p1, p0, Liag;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1, v0}, Lnoa;->b(Lnnz;)V

    :goto_39
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1, p0}, Liac;->d(Lryy;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v1}, Lnob;->a()Lnoa;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3d
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->J:Lnob;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    :goto_40
    const/4 v1, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Liag;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1, p0}, Liac;->d(Lryy;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x2

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

    :goto_45
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->c()V

    goto/32 :goto_2b

    nop

    nop

    :goto_47
    const v0, 0x3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_48
    if-nez p1, :cond_6

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

    :cond_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_7
    goto/32 :goto_40

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p0, Liag;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
