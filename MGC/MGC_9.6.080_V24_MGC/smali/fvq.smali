.class final Lfvq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lowp;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lfvq;->b:I

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

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lsui;
    .locals 3

    goto/32 :goto_41

    nop

    nop

    :goto_0
    iget-object p1, p1, Lfvu;->b:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2
    iput-object p2, p1, Lfwa;->f:Lnoa;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_55

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_0
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Lfvu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    check-cast p2, Lfvr;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lfwa;->f:Lnoa;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p2, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p2, Lfvj;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_d
    iget-object p2, p2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->t:Lnob;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x4

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->i()Lnoa;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_72

    nop

    :goto_12
    invoke-interface {p1, p2}, Lnoa;->b(Lnnz;)V

    :goto_13
    goto/32 :goto_2c

    nop

    nop

    :goto_14
    new-instance p2, Lfux;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p2, p1, Lfvr;->d:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Lfwa;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j()Lnoa;

    move-result-object p2

    nop

    :goto_1a
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_6b

    nop

    nop

    :goto_1d
    invoke-direct {p2, p0, v0}, Lfux;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_1e
    if-ne v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p2}, Lnob;->a()Lnoa;

    move-result-object p2

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p2, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_71

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_26
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2c
    return-object v1

    nop

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v0, p0, Lfvq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_30
    new-instance p2, Lfux;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_31
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p2, p0, v0}, Lfux;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_77

    nop

    :goto_34
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p2}, Lnob;->a()Lnoa;

    move-result-object p2

    nop

    nop

    :goto_36
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->j()Lnoa;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p1, :cond_6

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

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_39
    iget-object p2, p2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->D:Lnob;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Lfwa;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p2, Lfsh;

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_3c
    return-object v1

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean p2, p1, Lfvj;->c:Z

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_3f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_40
    check-cast p1, Lfvr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_41
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p1, Lfvj;->e:Lnoa;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object p2, p1, Lfvj;->e:Lnoa;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_45
    iput-object v1, p2, Lfvr;->c:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1, p2}, Lnoa;->b(Lnnz;)V

    :goto_47
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4a
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_4c
    const/16 v0, 0xa

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, p2, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->M:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4e
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_4f
    check-cast p1, Lfvj;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_51
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_52
    return-object v1

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p2, p1, Lfwa;->h:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_56
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p2, p1, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_58
    if-nez p1, :cond_8

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_59
    iput-object p2, p1, Lfvr;->b:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5a
    sget-object p2, Lnob;->a:Lnoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5b
    const v1, 0x8

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5c
    check-cast p2, Lfsh;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p2, p0, v0}, Lfux;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p2, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_62
    check-cast p1, Lfvr;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_63
    iput-object v1, p2, Lfvj;->g:Lsuu;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_64
    new-instance p2, Lfux;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_65
    new-instance p2, Lfux;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    :goto_67
    check-cast p2, Lfwa;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_68
    if-ne v0, v2, :cond_a

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_a
    goto/32 :goto_80

    nop

    nop

    :goto_69
    invoke-interface {p1, p2}, Lnoa;->b(Lnnz;)V

    :goto_6a
    goto/32 :goto_52

    nop

    nop

    :goto_6b
    iget-object p2, p1, Lfvj;->l:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object p2, p1, Lfvu;->c:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6e
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6f
    invoke-interface {p2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_70
    iput-object p2, p1, Lfvu;->b:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_53

    nop

    nop

    :goto_72
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-nez p2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_b
    goto/32 :goto_57

    nop

    nop

    :goto_75
    iget-object p1, p1, Lfvr;->b:Lnoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {p1, p2}, Lnoa;->b(Lnnz;)V

    :goto_77
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_78
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_79
    iget-object p1, p0, Lfvq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-direct {p2, p0, v0}, Lfux;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_d

    nop

    nop

    :goto_7d
    iget-object p2, p2, Lfwa;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast p1, Lfvj;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast p1, Lfvu;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v2, 0x2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_81
    if-nez p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_c
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_82
    sget-object p2, Lnob;->a:Lnoa;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_83
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop
.end method
