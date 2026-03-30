.class public final synthetic Ljlw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

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

    nop

    nop

    :goto_2
    iput p2, p0, Ljlw;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p2, v7, Lrlo;->k:I

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_2
    invoke-direct {p1, p0, p2}, Ljag;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v1}, Lmgg;->g(Z)V

    :goto_4
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljly;->getView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhdu;->c:Ljava/lang/Object;

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

    :goto_7
    invoke-virtual {p0, p2}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move v0, v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_108

    nop

    nop

    :goto_a
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, v0, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Llyr;->ae:Llze;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Ljly;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p2, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v7

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, v7, Lrlo;->i:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_14
    iget-object p2, p0, Llvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_16
    move-object v0, v2

    nop

    :goto_17
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_18
    iget p1, v0, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    const/high16 v2, 0x1000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v3, :cond_0

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_0
    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_1
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p2, Lrlq;->t:[I

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_22
    aget-object v2, v3, v2

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p2, Lhdu;

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmgg;->k:Landroid/widget/Toast;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_28
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_fe

    nop

    nop

    :goto_2a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 p0, 0x8

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 p2, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return v1

    nop

    nop

    :goto_32
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Llvt;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_2
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_36
    invoke-virtual {v6, v7, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_bb

    nop

    nop

    :goto_3a
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v6, :cond_3

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a9

    nop

    nop

    :goto_3c
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_3d
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_3e
    iget-object p0, p0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v6, v2, v3}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_156

    nop

    nop

    :goto_40
    sget-object v0, Lskc;->S:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v0, Lskd;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_42
    or-int/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_43
    new-instance v2, Lnin;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_45
    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_46
    if-nez v0, :cond_4

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_d8

    nop

    nop

    :goto_49
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4b
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, p2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_4f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lhdu;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p2, v0, v1}, Llyx;->j(Ljava/lang/String;Z)V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_52
    if-eqz p1, :cond_7

    nop

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

    :cond_7
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v7, Lrlq;

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_54
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_55
    iget-object v0, p0, Lmgg;->a:Landroid/content/Context;

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v6, v0, Ljly;->a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_58
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_8
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_5a
    or-int/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_5b
    check-cast p0, Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_60
    aget-object p2, v0, p2

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_61
    if-eqz p0, :cond_a

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v2, v1}, Lnik;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-ne v9, v8, :cond_b

    nop

    goto/32 :goto_e6

    nop

    nop

    :cond_b
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_66
    if-ne v0, v1, :cond_d

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :cond_d
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    return v1

    nop

    :goto_68
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v7, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lmgg;->n:Lmjv;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    aget-object v2, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_6d
    invoke-virtual {p0, p1}, Llyx;->k(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const v7, 0x7f0e0064

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v6

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_70
    instance-of v6, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_73
    sget-object v0, Llyr;->aQ:Llze;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v7}, Lrlq;->i()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object p2

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_75
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v1, 0x1

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

    :goto_77
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_78
    check-cast p1, Lsmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_79
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_7a
    iget-object v2, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_7b
    if-eqz p1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_dc

    nop

    nop

    :goto_7c
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iput p1, v0, Lskd;->c:I

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-gt v0, v4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v3, p0, Lmgg;->l:Llyv;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_81
    const v3, 0x7f12000b

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-eq v0, v6, :cond_10

    nop

    nop

    goto/32 :goto_106

    nop

    :cond_10
    goto/32 :goto_148

    nop

    nop

    :goto_83
    const p2, 0x7f1403dc

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_84
    if-eqz v2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_85
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object p0, p0, Llvt;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p2, Ljava/lang/String;

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    :goto_88
    throw p0

    nop

    nop

    :goto_89
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v7}, Lrlq;->i()Lcom/google/android/material/snackbar/SnackbarContentLayout;

    move-result-object p1

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_8b
    iget-object v2, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    instance-of v6, p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_8e
    move-object v2, p2

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    check-cast v0, Ljly;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_90
    if-eqz p1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_92
    if-ne v10, v8, :cond_13

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v3, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_94
    iget-object p1, p1, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object p2, p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;->b:Landroid/widget/Button;

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const v6, 0x1020002

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_97
    return v1

    nop

    nop

    :goto_98
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-object p1, v0, Lskd;->V:Lsmq;

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

    nop

    :goto_9b
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    :cond_14
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_9c
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/16 v0, 0xd

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lmgg;->c:Llyx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_9f
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_a0
    iget-object p0, p0, Ljly;->b:Llvt;

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

    :goto_a1
    iput-boolean v1, v7, Lrlq;->v:Z

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    new-instance p1, Ljag;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a3
    or-int/2addr v3, v1

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p0, p1}, Llyx;->k(Ljava/lang/String;)Z

    move-result p0

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

    :goto_a5
    or-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_a6
    move-object v0, p0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_a7
    invoke-static {}, Lrlt;->a()Lrlt;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_a8
    aget-object v3, v3, p2

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_ab
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_ad
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_ae
    iput v8, v7, Lrlo;->k:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_af
    iput v3, v2, Lsmq;->b:I

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v6, :cond_15

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_b2
    iget v0, v2, Lskd;->b:I

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-lez v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_16
    goto/32 :goto_114

    nop

    nop

    :goto_b4
    const/4 v2, 0x2

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_b5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9a

    nop

    nop

    :goto_b6
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_b7
    check-cast v0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_ba
    move v0, v3

    nop

    nop

    nop

    nop

    :goto_bb
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_bc
    check-cast p0, Lmjv;

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_bd
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_c1
    iput-object v0, p0, Lmgg;->k:Landroid/widget/Toast;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_c4
    iget-object v1, v7, Lrlq;->u:Landroid/view/accessibility/AccessibilityManager;

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

    :goto_c5
    check-cast p0, Ljly;

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_c6
    iget-boolean v0, v7, Lrlq;->v:Z

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_c7
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p0, p1, v2, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_ca
    iget-object p0, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {p0, p1, v2, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_144

    nop

    nop

    :goto_cc
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_ce
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_cf
    iget-object v0, p0, Lmgg;->k:Landroid/widget/Toast;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object p2, p0, Llvt;->l:Ljava/lang/Object;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez p1, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :cond_17
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object p2, p2, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-ne v0, v2, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_14c

    nop

    nop

    :goto_d6
    check-cast p0, Llyx;

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

    :goto_d7
    iput-boolean v5, v7, Lrlq;->v:Z

    nop

    :goto_d8
    goto/32 :goto_a7

    nop

    nop

    :goto_d9
    aget-object p2, v0, p2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_da
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_dc
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_dd
    invoke-interface {p2, p0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_df
    invoke-direct {v2, v3, v4, v1}, Lnin;-><init>(II[Ljava/lang/Object;)V

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_e1
    iput v0, v2, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {p0}, Lmgg;->h()V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    const v0, 0x1f

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

    :goto_e4
    const v0, 0x7f140102

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_e5
    const v7, 0x7f0e00d4

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_36

    nop

    nop

    :goto_e7
    move-object p2, p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e8
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    if-ne v1, v0, :cond_19

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_eb
    if-nez p1, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_ec
    move v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_f0
    aget-object v3, v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    check-cast v2, Lmjv;

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_f3
    sget-object p1, Llyr;->ag:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_f4
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_f5
    const/4 v8, -0x1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_f6
    invoke-direct {p0, v7, p1, v0}, Ljsy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_f9
    check-cast p0, Ljly;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_fa
    iget-object p0, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_fb
    check-cast p0, Lmjv;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_fc
    if-eqz v2, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_b3

    nop

    nop

    :goto_fd
    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_fe
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v0, v2}, Llyx;->k(Ljava/lang/String;)Z

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v0, v2, p0, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_101
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_103
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_104
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_105
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_e0

    nop

    nop

    :goto_107
    move-object p1, v2

    nop

    nop

    :goto_108
    goto/32 :goto_52

    nop

    nop

    :goto_109
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_10a
    iget-object p0, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    iget-object p0, p0, Lmgg;->c:Llyx;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    const/4 v2, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget v3, v2, Lsmq;->b:I

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

    :goto_10e
    iget-object v0, v7, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_10f
    check-cast p0, Ljly;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    check-cast p0, Lmgg;

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v0}, Ljly;->b()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_112
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_113
    check-cast v2, Lskd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {p0, v5}, Lmgg;->g(Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-direct {v7, v0, p1, v6, v6}, Lrlq;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_116
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v2, v2, Llvt;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_118
    check-cast v0, Landroid/preference/ListPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_119
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_11a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_11d
    iput-boolean p1, v2, Lsmq;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iput v0, v2, Lskd;->b:I

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    :goto_11f
    iget v0, p0, Ljlw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {p0}, Lmgg;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_122
    iget-object p1, p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_123
    invoke-virtual {p0, v0, v5}, Lmgg;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_124
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    if-nez v3, :cond_1c

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    :cond_1c
    goto/32 :goto_7f

    nop

    nop

    :goto_126
    monitor-enter p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v0}, Lrlt;->g(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1d

    nop

    iget-object v0, p0, Lrlt;->c:Lrls;

    nop

    nop

    nop

    iput p2, v0, Lrls;->a:I

    nop

    iget-object p2, p0, Lrlt;->b:Landroid/os/Handler;

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p2, p0, Lrlt;->c:Lrls;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p2}, Lrlt;->b(Lrls;)V

    monitor-exit p1

    nop

    nop

    nop

    :goto_127
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_ad

    nop

    :cond_1d
    invoke-virtual {p0, v0}, Lrlt;->h(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result v1

    nop

    if-eqz v1, :cond_1e

    nop

    iget-object v0, p0, Lrlt;->d:Lrls;

    nop

    iput p2, v0, Lrls;->a:I

    nop

    nop

    goto :goto_128

    nop

    nop

    nop

    :cond_1e
    new-instance v1, Lrls;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p2, v0}, Lrls;-><init>(ILandroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iput-object v1, p0, Lrlt;->d:Lrls;

    nop

    nop

    nop

    nop

    :goto_128
    iget-object p2, p0, Lrlt;->c:Lrls;

    nop

    nop

    nop

    if-eqz p2, :cond_1f

    nop

    invoke-virtual {p0, p2, v3}, Lrlt;->d(Lrls;I)Z

    move-result p2

    nop

    if-eqz p2, :cond_1f

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    goto :goto_127

    nop

    nop

    :cond_1f
    iput-object v2, p0, Lrlt;->c:Lrls;

    nop

    nop

    nop

    invoke-virtual {p0}, Lrlt;->c()V

    monitor-exit p1

    nop

    nop

    goto :goto_127

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_129
    if-nez p1, :cond_20

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    return v1

    nop

    nop

    nop

    :goto_12c
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v0, p1}, Ljly;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_12e
    iget-object p0, p0, Llvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object v6, p0, Lmgg;->m:Llyv;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_130
    instance-of v6, p1, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_131
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_133
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    new-instance p0, Ljsy;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_135
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :goto_136
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v2, p1, v6, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_138
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_139
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_13a
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_13b
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_13c
    goto/16 :goto_30

    nop

    :goto_13d
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-virtual {v1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p2

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_13f
    check-cast p2, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_141
    check-cast v0, Landroid/preference/ListPreference;

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

    :goto_142
    sget-object v0, Lsmq;->a:Lsmq;

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_143
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_144
    return v1

    nop

    nop

    nop

    :goto_145
    goto/32 :goto_29

    nop

    nop

    :goto_146
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_147
    iget-object p1, p0, Lrlt;->a:Ljava/lang/Object;

    nop

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

    :goto_148
    check-cast p1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    if-lez v0, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_fd

    nop

    :goto_14a
    iget-object p0, p0, Ljly;->b:Llvt;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14b
    check-cast v6, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    nop

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

    :goto_14c
    if-ne v0, v4, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_1b

    nop

    nop

    :goto_14d
    if-nez p1, :cond_23

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    iget-object v1, p0, Lmgg;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-static {p2}, Lhdu;->d(Landroid/content/Context;)V

    :goto_152
    goto/32 :goto_50

    nop

    nop

    :goto_153
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_154
    sget-object v7, Lrlq;->t:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_155
    if-eqz v0, :cond_24

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_156
    sget-object v2, Llyr;->aa:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_157
    check-cast p2, Llyx;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    check-cast v2, Lsmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    move-object v0, p1

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_15b
    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_15c
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    iget-object p0, p0, Ljlw;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop
.end method
