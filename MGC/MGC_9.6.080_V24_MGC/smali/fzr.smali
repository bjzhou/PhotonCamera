.class public final Lfzr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnsq;


# instance fields
.field public a:Loyd;

.field private final b:Lfzu;


# direct methods
.method public constructor <init>(Lfzu;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfzr;->b:Lfzu;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 8

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_32

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfzu;->c:Lgah;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4
    if-gt v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_0
    goto/32 :goto_7e

    nop

    nop

    :goto_5
    iget-object v0, p0, Lfzu;->a:Loyn;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_1
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v7, v6, Lsjy;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lfzu;->a(Landroid/view/MotionEvent;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    sget-object v4, Lskd;->a:Lskd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lfzu;->f:Llyv;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Lgae;->o()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-virtual {v4}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_14
    check-cast v6, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1}, Lfzu;->a(Landroid/view/MotionEvent;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Lfzu;->a(Landroid/view/MotionEvent;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1c
    if-lt p1, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lfzu;->a:Loyn;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    :goto_1f
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v5, v5, Lskc;->aG:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Lgae;->q()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Lgae;->f()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v1, Lskd;

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

    :goto_26
    check-cast v0, Lsjy;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p1, Lgah;->a:Lmjv;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v5, Lskc;->aA:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1, p1}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lfzu;->b:Lgae;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v6, :cond_7

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

    :cond_7
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2f
    if-ne v0, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lgah;->e()V

    :goto_32
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_36
    iget v7, v6, Lsjy;->b:I

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_37
    iget-object v0, p0, Lfzu;->a:Loyn;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_38
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3e
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lfzu;->c:Lgah;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lfzu;->e:Llyv;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v0}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_46
    check-cast v6, Lsjy;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_47
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_48
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_49
    const v1, 0x16

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4b
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_32

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v1, Llyr;->aA:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4f
    iget-object v1, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1, v4}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_3b

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_54
    add-int/2addr p1, v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-ne v0, v2, :cond_a

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lgah;->d()V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iput-object v0, v1, Lskd;->aB:Lsjy;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lfzu;->b:Lgae;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Lfzu;->c:Lgah;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v0, Llyr;->aA:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lfzu;->b:Lgae;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iput v5, v6, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_5e
    if-nez v0, :cond_b

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    sget-object v5, Lsjy;->a:Lsjy;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lfzu;->b:Lgae;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p0, p0, Lfzr;->b:Lfzu;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    return v2

    nop

    :goto_63
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget v0, v1, Lskd;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_65
    iput v5, v6, Lskd;->f:I

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v6, v4, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_67
    or-int/2addr v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_68
    invoke-interface {v0}, Lgae;->p()Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_69
    iget-object p1, p0, Lfzu;->b:Lgae;

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

    :goto_6a
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_c
    goto/32 :goto_61

    nop

    nop

    :goto_6b
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p0}, Lgae;->h()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lfzu;->b:Lgae;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v4}, Ltkb;->o()V

    :goto_71
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz v6, :cond_d

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_70

    nop

    nop

    :goto_74
    goto/16 :goto_48

    nop

    nop

    :goto_75
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_76
    or-int/2addr v7, v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_77
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {p0}, Lgae;->m()V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lfzu;->d:Landroid/view/GestureDetector;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_7d
    or-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_45

    nop

    nop

    :goto_80
    iput v0, v1, Lskd;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_81
    iget v5, v6, Lskd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_82
    const/high16 v5, 0x10000000

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_83
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Lfzr;->a:Loyd;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_86
    iput-wide v0, v6, Lsjy;->c:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

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
    const-string p0, "BobaOverlappingAreaListener"

    nop

    goto/32 :goto_0

    nop

    nop
.end method
