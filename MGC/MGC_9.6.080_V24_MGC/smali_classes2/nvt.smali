.class public final Lnvt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnwz;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lgjw;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p2, p0, Lnvt;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lnvu;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lnvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lnvt;->b:I

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
.method public final k(I)V
    .locals 10

    goto/32 :goto_76

    nop

    nop

    :goto_0
    invoke-direct {v5, v6}, Lnif;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    iget-object v5, v4, Lnvu;->W:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_2
    check-cast v4, Lnvu;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v8, Ljava/lang/Float;

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

    :goto_4
    invoke-virtual {v4, p1}, Lows;->d(Lpci;)V

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v7, 0x7f0c00db

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

    :goto_7
    const/4 v7, 0x2

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_8
    if-ne p1, v2, :cond_0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_9
    iget v8, v4, Lnvu;->L:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v5, v8

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v9, v9, Loxv;->d:Ljava/lang/Object;

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

    :goto_10
    iget-object p0, p0, Lnvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_12
    move-object v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v6}, Lfdo;->G(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v5, v6}, Lnif;->d(Ljava/util/function/Supplier;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lnvt;->b:I

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_16
    const/16 v6, 0x3e8

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v7, 0x7f1407fb

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_2
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, v4, Lnvu;->W:Lfdo;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v5}, Lnif;->h()V

    goto/32 :goto_6e

    nop

    nop

    :goto_1e
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x7

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v7, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_22
    iget-object v5, v4, Lnvu;->v:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, v4, Lnvu;->T:Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v5, v6}, Lnif;->q(Landroid/view/View;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v5, v4, Lnvu;->v:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_29
    check-cast p0, Lnvu;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v6, Lgju;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    iget-object v5, v4, Lnvu;->W:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2c
    if-ltz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

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

    :goto_2e
    iget-object v6, v4, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2f
    move p1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v8, v4, Lnvu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    :goto_33
    invoke-virtual {v5}, Lnif;->l()V

    goto/32 :goto_42

    nop

    nop

    :goto_34
    div-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v5, v6}, Lfdo;->I(Ljava/lang/String;)I

    :goto_37
    goto/32 :goto_63

    nop

    nop

    :goto_38
    check-cast v9, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_39
    iput p1, p0, Lgjw;->D:I

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

    :goto_3a
    cmpg-float v5, v8, v5

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v7, 0x4

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v9, v4, Lnvu;->e:Loyn;

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

    nop

    :goto_3d
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-ne p1, v1, :cond_5

    nop

    goto/32 :goto_78

    nop

    :cond_5
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v5}, Lnif;->a()Lpci;

    move-result-object p1

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

    nop

    nop

    :goto_43
    iget-object v5, v4, Lnvu;->v:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v5, v6}, Lfdo;->G(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v5, :cond_6

    nop

    goto/32 :goto_5

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    :goto_47
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_48
    iget-object p0, p0, Lnvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v5, v4, Lnvu;->W:Lfdo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4a
    iput v6, v5, Lnif;->f:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4b
    iget-object v5, v4, Lnvu;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p0, Lnvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4d
    iput v7, v5, Lnif;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4e
    double-to-float v8, v8

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4f
    iput v6, v5, Lnif;->e:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v8}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v4, v4, Lnvu;->c:Lows;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_52
    const v1, 0x11

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

    :goto_53
    invoke-direct {v6, p1, v7}, Lgju;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    :goto_55
    goto/32 :goto_27

    nop

    nop

    :goto_56
    float-to-double v8, v8

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_57
    if-ne p1, v2, :cond_7

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_40

    nop

    nop

    :goto_58
    new-instance v6, Lnue;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iput-boolean v1, p0, Lnvu;->I:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5a
    if-gt v5, v7, :cond_8

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_5b
    iget-object v6, v4, Lnvu;->w:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5c
    if-eq p1, v3, :cond_9

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5d
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, v6, v3}, Lfdo;->J(Ljava/lang/String;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v5, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v4}, Lnvu;->ay()Z

    move-result v5

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v5}, Lpci;->close()V

    :goto_62
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    new-instance v5, Lnif;

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

    :goto_64
    goto/16 :goto_5

    nop

    :goto_65
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v6, v4, Lnvu;->w:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_68
    iput-boolean v0, v5, Lnif;->g:Z

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

    :goto_69
    iput-object p1, v5, Lnif;->m:Lixe;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_6b
    move v1, v0

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v5}, Lnif;->k()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6f
    if-lt v5, v7, :cond_b

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v6, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->EpkUjMMqjnFjSQG:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_71
    iget-object p1, v5, Lnif;->b:Ljava/util/List;

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

    nop

    :goto_72
    invoke-direct {v6, p1, v7}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_73
    iget-boolean v0, p0, Lgjw;->y:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_74
    check-cast v5, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_76
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p0}, Lgjw;->g()V

    :goto_78
    goto/32 :goto_39

    nop

    nop

    :goto_79
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int/lit16 v6, v6, -0x3e8

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop
.end method
