.class public final Lbx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Lcj;


# direct methods
.method public constructor <init>(Lcj;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lbx;->a:Lcj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_0
    const-string p2, "class"

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p4, v0, p1}, Ldzn;-><init>(Lbo;Landroid/view/ViewGroup;)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_0
    goto/32 :goto_64

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_6
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a6

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b2

    nop

    nop

    :goto_8
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a
    iget-object p3, p0, Lbx;->a:Lcj;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    return-object p1

    nop

    :goto_d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v3, v0, Lbo;->x:Z

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_84

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    :goto_11
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v1, v0, Lbo;->D:Lbw;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_13
    move v2, v4

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c1

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p3, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, v0, Lbo;->Q:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Lcj;->c(I)Lbo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    :goto_1f
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Lbo;->D:Lbw;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget v8, Lbv;->a:I

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v1, p2}, Lbv;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-class v8, Lbo;

    nop

    nop

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    nop

    nop
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v4, Ldzk;->d:Ldzk;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lcj;->g()Lbv;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, v0, Lbo;->R:Landroid/view/View;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p2, p1, p3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    nop

    :goto_26
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_27
    if-nez p4, :cond_5

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    :goto_28
    if-nez v2, :cond_6

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v1, v2, v4}, Ldzm;->e(Ldzl;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_1e

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :goto_2d
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz p2, :cond_9

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v6}, Lcj;->T(I)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p4, Ldzn;

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

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :catch_0
    :goto_33
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_34
    const-string v0, "fragment"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lbx;->a:Lcj;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_36
    if-nez p2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-ne v2, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_b
    goto/32 :goto_35

    nop

    nop

    :goto_39
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_3a
    invoke-virtual {p3}, Lohx;->d()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_68

    nop

    nop

    :goto_3c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3d
    move p3, v2

    nop

    nop

    :goto_3e
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance p2, Ljeh;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_41
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_42
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    :goto_46
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v6}, Lcj;->T(I)Z

    move-result p4

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

    :goto_4a
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v1, v0, Lbo;->i:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p3, p3, Lcj;->l:Lbw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4d
    throw p0

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p3, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_50
    invoke-virtual {v0, v5}, Lcj;->c(I)Lbo;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {p4}, Ldzm;->d(Ldzw;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v0}, Ldzm;->b(Lbo;)Ldzl;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, v0, Lbo;->R:Landroid/view/View;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {p1, p3, p4, p0}, Lbu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcj;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move p3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_5b
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-ne v5, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_c
    goto/32 :goto_bf

    nop

    nop

    :goto_5e
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v0, p3, p4, v1}, Lbo;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p3, p0, Lbx;->a:Lcj;

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_62
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v5, :cond_d

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_67
    move v5, v2

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_69
    iput-object p3, v0, Lbo;->C:Lcj;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6a
    iget-object p3, p3, Lbw;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object p1, v0, Lbo;->R:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object p1, v0, Lbo;->R:Landroid/view/View;

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

    :goto_6d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_b1

    nop

    nop

    :goto_6f
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8c

    nop

    nop

    :goto_70
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p3, v0}, Lcj;->ae(Lbo;)Lohx;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_73
    iput-boolean v3, v0, Lbo;->x:Z

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_75
    if-nez p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const-string p1, "Fragment "

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_77
    if-eq v5, v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_4

    nop

    nop

    :goto_78
    invoke-virtual {v0, v7}, Lcj;->d(Ljava/lang/String;)Lbo;

    move-result-object v0

    nop

    :goto_79
    goto/32 :goto_2b

    nop

    nop

    :goto_7a
    if-eqz p2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p3}, Lohx;->e()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_57

    nop

    nop

    :goto_7d
    iget-object p3, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_7e
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lbx;->a:Lcj;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p3, v0}, Lcj;->af(Lbo;)Lohx;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v2, :cond_11

    nop

    goto/32 :goto_8f

    nop

    nop

    :cond_11
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_83
    new-instance p1, Lbu;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v7, :cond_12

    nop

    goto/32 :goto_79

    nop

    :cond_12
    goto/32 :goto_7f

    nop

    nop

    :goto_85
    if-eq v2, v4, :cond_13

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

    :cond_13
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v1, p3, Lcj;->l:Lbw;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object p1, v0, Lbo;->R:Landroid/view/View;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v1, p3, Lcj;->l:Lbw;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_89
    goto/16 :goto_3e

    nop

    :goto_8a
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_8c
    const-string p3, ": Duplicate id 0x"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8d
    const-string p3, " did not create a view."

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8e
    invoke-static {v1, p4}, Ldzm;->c(Ldzl;Ldzw;)V

    :goto_8f
    goto/32 :goto_1c

    nop

    nop

    :goto_90
    if-nez v0, :cond_14

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_33

    nop

    nop

    :goto_92
    goto/32 :goto_0

    nop

    nop

    :goto_93
    iget-object p3, p0, Lbx;->a:Lcj;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_94
    iget-object p0, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_95
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_81

    nop

    nop

    :goto_96
    const-string p3, " with another fragment for "

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0, p3, p4, v1}, Lbo;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_98
    goto/16 :goto_14

    nop

    nop

    :goto_99
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_9c
    iget-object p3, p3, Lbw;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iput p3, v0, Lbo;->G:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_9e
    invoke-direct {p2, p0, p3, v3}, Ljeh;-><init>(Lbx;Lohx;I)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_9f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_a1
    if-eqz p1, :cond_15

    nop

    goto/32 :goto_5b

    nop

    :cond_15
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0, p2}, Lbv;->b(Ljava/lang/String;)Lbo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_a4
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a5
    iput v2, v0, Lbo;->H:I

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_a8
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    :goto_a9
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_aa
    iget-boolean p3, v0, Lbo;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_ac
    const-string p3, ", or parent id 0x"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object p3, p3, Lcj;->l:Lbw;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-nez p4, :cond_16

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_af
    new-instance p1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iput-object v7, v0, Lbo;->I:Ljava/lang/String;

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

    :goto_b4
    iget-object v2, v1, Ldzl;->b:Ljava/util/Set;

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

    :goto_b5
    sget p4, Ldzm;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b6
    if-nez v5, :cond_17

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_17
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_b7
    iput-boolean v3, v0, Lbo;->w:Z

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v1, v0, Lbo;->i:Landroid/os/Bundle;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/4 v2, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    sget-object v1, Lag;->a:[I

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_bf
    iget-object v0, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_c0
    iput-object p3, v0, Lbo;->C:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object v0, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c2
    iget-object p3, p0, Lbx;->a:Lcj;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_c3
    if-eqz p3, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_e

    nop

    nop

    :goto_c4
    const-class v0, Lbu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const-string p3, ", tag "

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    throw p0

    nop

    nop

    :goto_c8
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lbx;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
