.class public final synthetic Ljlu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lhxi;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljlu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const-string p1, "camera.onscreen_logcat_filter"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Ljlu;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljlu;->a:Ljava/lang/Object;

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

    :goto_2
    iput p3, p0, Ljlu;->c:I

    nop

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

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljly;Landroid/preference/ListPreference;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p3, p0, Ljlu;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljlu;->a:Ljava/lang/Object;

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

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

    nop

    :goto_1
    if-lt p2, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const p1, 0x7f0801fd

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lhxi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ljlu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Ljlu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lhxi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljlu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    check-cast p2, Ljava/lang/String;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_e
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    :goto_f
    const v0, 0x7f14053a

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto/32 :goto_3a

    nop

    nop

    :goto_11
    goto/16 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, p2

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_63

    nop

    nop

    :goto_17
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v2}, Lkzr;-><init>(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lsbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v3, p2}, Lmgg;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    goto/32 :goto_52

    nop

    nop

    :goto_1d
    iget-object p1, p0, Lmgg;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_5
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v1

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lkzr;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v0, p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lmgg;->g:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_5d

    nop

    :goto_28
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_29
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2d
    iget v0, p0, Ljlu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2f
    return v1

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_31
    const p1, 0x7f08022e

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_32
    iget-object v3, p0, Lmgg;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_33
    iget-object v6, p0, Lmgg;->c:Llyx;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_34
    iget-object v0, v0, Ljly;->b:Llvt;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lmgg;->e:Lrxw;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_38
    check-cast p0, Landroid/preference/ListPreference;

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Lrxw;->g()Lryb;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    :goto_3c
    iget-object p0, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

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

    nop

    :goto_3e
    if-lt p2, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_42
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

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

    nop

    :goto_45
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_46
    iget-object p1, p0, Lmgg;->g:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

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

    :goto_48
    iget-object v4, p0, Lmgg;->g:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_49
    invoke-virtual {p0, v2, v3}, Lmgg;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_4b
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4d
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_4e
    iget v0, v0, Lsbh;->c:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const v0, 0x7f140536

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_53
    iget-object v3, p0, Lmgg;->c:Llyx;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p1, p0, Lmgg;->e:Lrxw;

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

    :goto_55
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/32 :goto_22

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_57
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Lmgg;->e:Lrxw;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5a
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5b
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget v0, v0, Lsbh;->c:I

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-lt p2, v0, :cond_7

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_7
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v0, Lsbh;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    new-instance v0, Lkzr;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_a8

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_38

    nop

    nop

    :goto_63
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v3, v4}, Llyx;->k(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Ljlu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0, v2, v3}, Lmgg;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_6c
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object p1, p0, Lmgg;->e:Lrxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v0, p0, Lmgg;->i:Lryb;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object p1, p0, Lmgg;->d:Lmgh;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_72
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v2, p0, Lmgg;->n:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_74
    iget-object v0, v0, Llvt;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-lt v2, v0, :cond_8

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

    :cond_8
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_9
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_78
    check-cast v0, Lsbh;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_79
    check-cast v0, Ljly;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_a8

    nop

    nop

    :goto_7b
    goto/32 :goto_f

    nop

    nop

    :goto_7c
    iget-object v3, p0, Lmgg;->g:Ljava/util/Map;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez p1, :cond_a

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    nop

    :goto_7e
    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1}, Lrxw;->g()Lryb;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v0, Lmjv;

    nop

    nop

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

    :goto_82
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p0, p1, v0, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_84
    iget v0, v0, Lsbh;->c:I

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_86
    invoke-virtual {p0, v2, v3}, Lmgg;->f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_87
    check-cast v3, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-ne v0, v2, :cond_b

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_b
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_8b
    iget v0, v0, Lsbh;->c:I

    nop

    nop

    :goto_8c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8d
    if-lez v0, :cond_c

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

    :cond_c
    goto/32 :goto_4

    nop

    :goto_8e
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8f
    check-cast v0, Lsbh;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    :cond_d
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1}, Lrxw;->g()Lryb;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6, v7}, Llyx;->k(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v3, Ljava/lang/Boolean;

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

    :goto_96
    invoke-virtual {p0, p1}, Lmgg;->g(Z)V

    goto/32 :goto_a6

    nop

    nop

    :goto_97
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setIcon(I)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v2, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v0, p0, Ljlu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_9b
    invoke-virtual {p1, v0}, Ljly;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0, p1, p0, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9d
    invoke-interface {p1, v0}, Lmgh;->g(Ljava/util/List;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    add-int/lit8 p2, p2, 0x1

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

    :goto_9f
    invoke-virtual {p1, v0}, Ljly;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    return v1

    nop

    nop

    :goto_a1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {p0}, Lmgg;->h()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast v2, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_a5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setIcon(I)V

    :goto_a8
    goto/32 :goto_a0

    nop

    nop

    :goto_a9
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {p1}, Lrxw;->g()Lryb;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast p0, Landroid/preference/ListPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_ac
    invoke-direct {v0, v2}, Lkzr;-><init>(I)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast p0, Lmgg;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_af
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b0
    check-cast v2, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b1
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b2
    const p1, 0x7f0802aa

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object p0, p0, Ljlu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast p1, Ljly;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_b5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setIcon(I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast p0, Landroid/preference/ListPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b9
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    nop

    nop

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

    :goto_ba
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_bc
    invoke-virtual {v2, p1, v0, p2}, Lmjv;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop
.end method
