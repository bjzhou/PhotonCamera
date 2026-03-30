.class public final synthetic Lhil;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final synthetic b:F

.field public final synthetic c:F

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lhil;->c:F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput p2, p0, Lhil;->b:F

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
    iput p4, p0, Lhil;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhil;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lhir;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, v0, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_0
    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lhir;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Lhil;->c:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_8
    iput v2, v0, Lhir;->k:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, v2, v3, v4}, Lhtc;-><init>(FFJ)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_c
    iget p0, p0, Lhil;->b:F

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v2}, Lhst;->S(FF)Z

    move-result v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_11
    iput p0, v0, Lhir;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_12
    iget v1, v0, Lhjg;->k:F

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

    :goto_13
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p0}, Lhst;->S(FF)Z

    move-result v1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lhil;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lhjg;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1b
    iput p0, v0, Lhjg;->j:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_13

    nop

    nop

    :goto_1e
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    iput p0, v0, Lhir;->n:F

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    iput v2, v0, Lhjg;->k:F

    nop

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1d

    nop

    :goto_24
    goto/32 :goto_41

    nop

    nop

    :goto_25
    iget v2, p0, Lhil;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_26
    iput-boolean v1, v0, Lhiz;->h:Z

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_27
    iget v1, v0, Lhjg;->l:F

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

    :goto_28
    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p0, v0, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    iget v1, v0, Lhir;->m:F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v1, v0, Lhir;->i:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2e
    iget p0, p0, Lhil;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2f
    iget v3, v1, Lhtc;->c:F

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

    :goto_30
    iget-object v1, v0, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_31
    invoke-static {p0, v3}, Lhst;->S(FF)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, p0}, Lhst;->S(FF)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    :goto_34
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_35
    iget p0, p0, Lhil;->b:F

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_36
    invoke-static {v1, v2}, Lhst;->S(FF)Z

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, p0}, Lhst;->S(FF)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x15

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

    nop

    :goto_3a
    iget v1, v0, Lhir;->n:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lhil;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lhil;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3f
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    :goto_40
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v0, p0, Lhil;->d:I

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    if-nez p0, :cond_9

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_9
    :goto_44
    goto/32 :goto_29

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v2, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_47
    iget-object v1, v0, Lhiz;->l:Lhtc;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_48
    invoke-virtual {p0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput p0, v0, Lhjg;->l:F

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4b
    iget v2, p0, Lhil;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v1, v0, Lhiz;->k:Lhtc;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput v2, v0, Lhir;->m:F

    nop

    :goto_4f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v1, Lhtc;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_51
    const v0, 0x13

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

    :goto_52
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_53
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_a
    goto/32 :goto_23

    nop

    :goto_54
    if-eqz v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_56
    iput v2, v0, Lhjg;->i:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_57
    return-void

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-boolean v1, v0, Lhjg;->h:Z

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5a
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_c
    :goto_5b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v0, Lhiz;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :goto_5e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget p0, v1, Lhtc;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop
.end method
