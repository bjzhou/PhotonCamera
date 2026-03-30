.class public final synthetic Lgdd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lgdf;

.field public final synthetic b:Z

.field public final synthetic c:[F

.field public final synthetic d:Lqiu;

.field public final synthetic e:Lqjs;


# direct methods
.method public synthetic constructor <init>(Lgdf;Z[FLqiu;Lqjs;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgdd;->c:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Lgdd;->a:Lgdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-boolean p2, p0, Lgdd;->b:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p5, p0, Lgdd;->e:Lqjs;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lgdd;->d:Lqiu;

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, v6, Lgdf;->d:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5a

    nop

    :cond_0
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2
    iget-object v0, v6, Lgdf;->c:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3
    mul-float/2addr v4, v3

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Ltam;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5
    check-cast v7, Lqhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_37

    nop

    :goto_8
    iget-object v0, v6, Lgdf;->c:[F

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v7, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->OVD:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_a
    sget-object v0, Lgcx;->a:Lgcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    const-string v6, "u_ClipSpaceToPlaneMatrix"

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    int-to-float v7, v7

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

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_e
    check-cast p0, [F

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

    :goto_f
    goto/32 :goto_38

    nop

    nop

    :goto_10
    iget-object v5, v6, Lgdf;->f:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, v6, Lgdf;->f:Lj$/time/Instant;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5, v7, v2}, Lqio;->b(Ljava/lang/String;I)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v4, p1, Ltam;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v5, v7}, Lqxk;->b(Lqjs;)Lqio;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Lgdd;->b:Z

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lqfe;->b()I

    move-result p0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    nop

    :goto_1b
    iget-object v7, v7, Lqhe;->a:Lqfd;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Lqjs;->i()Lqhe;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Lqjs;->i()Lqhe;

    move-result-object v7

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

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v7}, Lsrr;->a()Lj$/time/Instant;

    move-result-object v7

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v9, "u_ViewfinderTextureSize"

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_22
    const v1, 0x15

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_24
    aget v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_25
    iget p0, p1, Ltam;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lgdd;->e:Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_27
    long-to-float v5, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    sget-object v0, Lgcx;->b:Lgcx;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v5}, Lj$/time/Duration;->toMillis()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    invoke-static {v7, v5}, Lqio;->m(ILqjy;)Lqxk;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string p0, "u_FrameThickness"

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

    :goto_2e
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v5, p0, v4}, Lqio;->e(Ljava/lang/String;F)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_30
    const-string v6, "u_FrameSize"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_31
    const/4 v2, 0x2

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

    :goto_32
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_33
    const p0, 0x3d4ccccd    # 0.05f

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_34
    const-string v7, "u_ViewfinderTexture"

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v7}, Lqfe;->a()I

    move-result v7

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

    :goto_37
    goto/32 :goto_17

    nop

    nop

    :goto_38
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v5, v6, p0, p1}, Lqio;->g(Ljava/lang/String;FF)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3b
    iget v3, p1, Ltam;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v5, v9, p0, v7}, Lqio;->g(Ljava/lang/String;FF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3d
    iget-object v7, v6, Lgdf;->b:Lsrr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v0, Lgcx;->c:[F

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const p1, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lgdd;->d:Lqiu;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v5, v7, v8}, Lqio;->b(Ljava/lang/String;I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_42
    aget p0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v5, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_44
    iget-object v7, v6, Lgdf;->h:Lqjs;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v2, p0, Lgdd;->c:[F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aget p1, v0, v8

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

    :goto_47
    iget-object v6, p0, Lgdd;->a:Lgdf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_48
    goto :goto_50

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4a
    iget-object v4, v6, Lgdf;->g:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4b
    const-string v7, "a_ClipSpacePosition"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, v6, Lgdf;->b:Lsrr;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4d
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lgcx;->c:[F

    nop

    :goto_50
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v6, Lgdf;->d:[F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v5, v1}, Lqio;->n(Lqjs;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v5, v2, p0, p1, v0}, Lqio;->h(Ljava/lang/String;FFF)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_55
    const v0, 0x1c

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_56
    invoke-static {v5}, Lqjd;->a(Lqht;)Lqjy;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_57
    iget-object v0, v6, Lgdf;->d:[F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string p0, "u_FrameRadius"

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :goto_5a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5b
    check-cast p1, Ltam;

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

    :goto_5c
    invoke-static {v5, v7}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5d
    iget-boolean v1, v6, Lgdf;->e:Z

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v5, p0, v3}, Lqio;->e(Ljava/lang/String;F)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v0}, Lsrr;->a()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_61
    check-cast p0, Lqhf;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_62
    iget v4, p1, Ltam;->c:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v5, v6, Lgdf;->a:Lqht;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_64
    const-string v2, "u_FrameColor"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v1, v2, v0, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

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

    :goto_66
    if-nez v0, :cond_4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_4
    :goto_67
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v5, p0, p1}, Lqio;->e(Ljava/lang/String;F)V

    goto/32 :goto_42

    nop

    nop

    :goto_69
    goto :goto_67

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_6b
    const-string p0, "u_OutsideFrameTransparency"

    nop

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

    nop

    :goto_6c
    invoke-virtual {v5, v6, p0}, Lqio;->f(Ljava/lang/String;[F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    mul-float/2addr v3, p0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v5, v7, p0}, Lqio;->c(Ljava/lang/String;Lqiu;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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
.end method
