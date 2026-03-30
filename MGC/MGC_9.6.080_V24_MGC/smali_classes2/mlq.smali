.class public final synthetic Lmlq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lmlr;

.field public final synthetic b:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

.field public final synthetic c:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;


# direct methods
.method public synthetic constructor <init>(Lmlr;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p3, p0, Lmlq;->c:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmlq;->a:Lmlr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lmlq;->b:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p1, Lqpa;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v5, v7, v2}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_4
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_5
    sget-object v6, Llyr;->ag:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_6
    check-cast v5, Llyv;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v6, p1, Lqpa;->a:Ljava/lang/Object;

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

    :goto_9
    sget-object v7, Llyr;->aN:Llzf;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_a
    check-cast v5, Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_b
    check-cast v5, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_c
    check-cast v5, Llyv;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

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

    :goto_f
    const-string v7, "medium"

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v6, Llyr;->ag:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v5, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Lmlr;->a()V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v6, p1, Lqpa;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    check-cast v5, Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Lqpa;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_19
    check-cast v2, Llyv;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v2, Loyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1c
    return v3

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v6, v8}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, v1, Lmlr;->h:Lqpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    sget-object v8, Llyr;->aJ:Llzf;

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

    :goto_23
    check-cast v5, Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v5, :cond_0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_26
    iget-object p1, v1, Lmlr;->h:Lqpa;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v5, Llyv;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v7, Llyr;->am:Llze;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v4, Llyk;->a:Llyk;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_2c
    sget-object v7, Llyr;->aj:Llzh;

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

    :goto_2d
    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_2e
    goto/32 :goto_1d

    nop

    :goto_2f
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v2, v4}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    iget-object v5, p1, Lqpa;->i:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_32
    check-cast v5, Llyv;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v8, Llyr;->L:Llze;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v6, v8}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v5, v6}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_38
    iget-object v6, v6, Lnpr;->c:Ljava/lang/Object;

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

    :goto_39
    add-int v0, v0, v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v7, Lhmq;->bT:Lhmn;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v7, Llyr;->an:Llzh;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_3c
    check-cast v5, Llyv;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_3d
    iget-object v6, p1, Lqpa;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lmlq;->a:Lmlr;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v7, Llyr;->ao:Llzh;

    nop

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

    :goto_40
    iget-object v2, p1, Lqpa;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v6, Llyv;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1, v6}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Lqpa;->b()V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_46
    iget-object v6, p1, Lqpa;->i:Ljava/lang/Object;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_49
    sget-object v7, Llyr;->aJ:Llzf;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lmlq;->c:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_78

    nop

    nop

    :goto_4c
    goto/32 :goto_26

    nop

    nop

    :goto_4d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4e
    iget-object v5, p1, Lqpa;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

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

    nop

    nop

    :goto_50
    invoke-virtual {v2, v5, v4}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v5, v6, v4}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_53
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v6}, Llyf;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v6, Llyk;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_56
    iget-object v6, p1, Lqpa;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v2, p1, Lqpa;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v8, v8, Llye;->c:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5a
    goto :goto_60

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p1, v1, Lmlr;->f:Lmjv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5d
    const v1, 0x2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5f
    invoke-virtual {v5, v7, v8}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    :goto_60
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v6, Loyv;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v2, Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p1, v0, p0, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v5, Llyv;

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

    :goto_66
    sget-object v7, Llyr;->ai:Llze;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v5, v6}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v6}, Loyv;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object v5, Llyr;->L:Llze;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v6}, Llyk;->name()Ljava/lang/String;

    move-result-object v6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6d
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v6, Llyv;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6f
    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v5, Llyv;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2, v4}, Loyv;->a(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_72
    iget-object v5, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_73
    iget-object v2, v2, Lnpr;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_74
    check-cast v6, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_75
    iget-object v2, p1, Lqpa;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    :goto_78
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_79
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v5, v7}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v6, Llyf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_7c
    sget-object v7, Llyr;->ak:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    :goto_7e
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v5, p1, Lqpa;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object v8, Llye;->a:Llye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    sget-object v4, Llyf;->c:Llyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v5, v7}, Lhoh;->o(Lhmn;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v6, p1, Lqpa;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v6, Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_88
    sget-object v7, Llyr;->al:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v5, v7, v6}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_8b
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v6, p1, Lqpa;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_8d
    iget-object v0, p0, Lmlq;->b:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_8e
    check-cast v5, Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_90
    invoke-interface {v2, v6}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v5, p1, Lqpa;->c:Ljava/lang/Object;

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
.end method
