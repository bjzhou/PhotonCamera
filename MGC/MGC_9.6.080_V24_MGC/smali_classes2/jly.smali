.class public final Ljly;
.super Landroid/preference/PreferenceFragment;
.source "PG"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

.field public b:Llvt;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

.field private fa:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

.field private g:Lows;

.field private final h:Ljava/util/HashMap;

.field private i:Lkpg;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const-string v0, "Failed to remove preference :%s"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x9ac

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->s:Lsdb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p0, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    goto :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    :goto_d
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_5

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x20

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    goto :goto_1e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    :goto_16
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

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

    :goto_1d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v0, p2}, Ljly;->33f5b80483094659737b73d90f80a8a4m(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Landroid/preference/PreferenceScreen;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const-class v1, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, "pref_screen_extra"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    const-string p0, "pref_screen_title"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

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
    return-void

    nop

    nop

    nop

    :goto_3
    check-cast p1, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    instance-of v0, p1, Landroid/preference/PreferenceScreen;

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

    :goto_5
    invoke-direct {p0, p1}, Ljly;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/preference/PreferenceScreen;)V

    :goto_6
    goto/32 :goto_2

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/preference/PreferenceGroup;)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_d

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    check-cast v1, Landroid/preference/PreferenceGroup;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v1}, Ljly;->da190e616797844b591057d0190e7728m(Landroid/preference/PreferenceGroup;)V

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    if-lt v0, v1, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    const v1, 0xa

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
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljly;->a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Llvt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Llyx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljly;->b:Llvt;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    sget-object v1, Llyr;->b:Llze;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v2}, Llyx;->j(Ljava/lang/String;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v1, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    const v1, 0xe

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v0

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

    :goto_6
    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v0, 0x16

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_16

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    return p0

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    :goto_1
    invoke-direct {p0, v0, v1}, Ljly;->33f5b80483094659737b73d90f80a8a4m(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const-string v2, "key "

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    const-string p0, " not found"

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    nop

    :goto_e
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_13

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Landroid/widget/ListView;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const-string v5, "-1"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Landroid/preference/PreferenceCategory;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5
    const v1, 0x102000a

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    if-eqz v4, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v1, v2, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_f
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xd

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    check-cast v0, Landroid/preference/PreferenceScreen;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_15
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Ljly;->da190e616797844b591057d0190e7728m(Landroid/preference/PreferenceGroup;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    iget-object v4, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

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

    :goto_21
    goto/32 :goto_e

    nop

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "pref_category_custom_hotkeys"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_24
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v0}, Ljly;->da190e616797844b591057d0190e7728m(Landroid/preference/PreferenceGroup;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_27
    const-string v0, "pref_category_resolution_camera"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ljly;->getView()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    :goto_2c
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    iget-object v0, v0, Lkpg;->m:Ljava/lang/Object;

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

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    nop

    :goto_2f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Ljly;->i:Lkpg;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_33
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_34
    const-string v0, "pref_category_resolution_video"

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

    :goto_35
    check-cast v0, Landroid/preference/PreferenceCategory;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 27

    goto/32 :goto_2d7

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v1, Lleu;->t:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2f9

    nop

    nop

    nop

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v10, 0xa

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v5, v0, v7}, Lhrv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v15, v14, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->g:Ljava/lang/Integer;

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

    nop

    :goto_7
    check-cast v4, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    :goto_9
    iput-object v14, v9, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->m:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v23, Lmjv;

    nop

    nop

    goto/32 :goto_377

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v4}, Ljly;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    :goto_c
    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t(Lmjv;Landroid/preference/Preference;)V

    goto/32 :goto_1ba

    nop

    nop

    :goto_e
    new-instance v7, Llbc;

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

    :goto_f
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_36a

    nop

    nop

    :goto_10
    iget-object v5, v5, Ljip;->eN:Ltur;

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_391

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2b7

    nop

    :cond_1
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v6, v10}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSelectable(Z)V

    goto/32 :goto_400

    nop

    nop

    :goto_14
    new-instance v10, Lnin;

    nop

    goto/32 :goto_387

    nop

    nop

    :goto_15
    iget-object v5, v5, Ljip;->M:Ltur;

    nop

    nop

    goto/32 :goto_39e

    nop

    nop

    :goto_16
    check-cast v2, Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    :goto_17
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_18
    check-cast v23, Llzj;

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v10, v2

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v5, Ljip;

    nop

    goto/32 :goto_419

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_1f
    goto/16 :goto_182

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_406

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_38b

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_24
    if-nez v5, :cond_2

    nop

    goto/32 :goto_c4

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_25
    const v11, 0x7f0801fd

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    goto/32 :goto_3d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v4, v10, Lmlr;->e:Lmly;

    nop

    nop

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v5, Llyr;->aO:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v7, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_320

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v5, v5, Llvt;->j:Ljava/lang/Object;

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_2b
    const v10, 0x7f0e0104

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v4, v14, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    :goto_2d
    goto/32 :goto_280

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v2}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    nop

    goto/32 :goto_3aa

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    :goto_30
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v11, 0x7f0802aa

    nop

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    :goto_32
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput-object v10, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    aget-object v4, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_36
    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a6

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    goto/32 :goto_2a7

    nop

    nop

    :goto_38
    sget-object v6, Llyr;->l:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f5

    nop

    nop

    :goto_39
    new-instance v15, Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_2cc

    nop

    nop

    :goto_3a
    check-cast v5, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a3

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_378

    nop

    nop

    nop

    :goto_3e
    invoke-static {v5, v2}, Lgpl;->c(Ltxm;Lhoh;)Lrss;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_3f
    invoke-virtual/range {p0 .. p0}, Ljly;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v7, v6, v5, v10, v9}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b5

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v2, v2, Ljip;->lh:Ltur;

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    :goto_43
    iget-object v5, v5, Ljip;->jq:Ltur;

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_44
    sget-object v14, Llyr;->l:Llzf;

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    :goto_46
    iget-object v5, v2, Ljip;->bY:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    :goto_47
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_48
    check-cast v18, Lrss;

    nop

    nop

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4a
    goto/32 :goto_312

    nop

    nop

    :goto_4b
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    goto/32 :goto_375

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v5, v3}, Lrvb;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v5, Lrss;

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_4f
    if-ne v7, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_32f

    nop

    nop

    :cond_4
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v7, Ligz;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_32e

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v4, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2d0

    nop

    nop

    :goto_55
    invoke-virtual {v0, v5}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_57
    invoke-direct {v7, v5, v9}, Lhos;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_59
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_5b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast v1, Lmjv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v3}, Ljly;->addPreferencesFromResource(I)V

    goto/32 :goto_319

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v15, v6, v12, v4}, Lfwq;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_304

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/high16 v5, 0x2000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_62
    check-cast v24, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v6, v0, Ljly;->i:Lkpg;

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/32 :goto_33b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v9, v7}, Lows;->d(Lpci;)V

    goto/32 :goto_271

    nop

    nop

    nop

    :goto_67
    invoke-interface {v1}, Lsak;->r()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v5, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_69
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    :goto_6a
    move-object/from16 v20, v2

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_6e
    goto/32 :goto_352

    nop

    nop

    nop

    :goto_6f
    iget-object v2, v2, Ljip;->u:Ltur;

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v13}, Lmgg;->c()Lsui;

    move-result-object v4

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

    :goto_71
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_72
    move-object/from16 v22, v5

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v2, Ljip;

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    :goto_74
    const v13, 0x7f14061f

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v5, v5, Ljip;->dd:Ltur;

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

    :goto_76
    invoke-direct/range {v20 .. v25}, Lhwy;-><init>(Loyn;Loyn;Llzj;Lnpr;Llyv;)V

    goto/32 :goto_3ce

    nop

    nop

    :goto_77
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_35f

    nop

    nop

    :goto_78
    iput-object v9, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->i:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_3c8

    nop

    nop

    :goto_7a
    iget-object v5, v5, Ljip;->i:Ltur;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_7b
    iput-object v3, v0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    :goto_7c
    const-string v5, "pref_category_developer"

    nop

    goto/32 :goto_267

    nop

    nop

    :goto_7d
    invoke-direct {v0, v4}, Ljly;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    goto/32 :goto_27e

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast v2, Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_7f
    iget-object v6, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    goto/32 :goto_36f

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v19, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_81
    new-instance v11, Ljlu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    :goto_82
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_83
    iput-object v13, v6, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;->a:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_3fc

    nop

    nop

    nop

    nop

    nop

    :goto_84
    new-instance v11, Ljlx;

    nop

    goto/32 :goto_2b2

    nop

    nop

    :goto_85
    check-cast v7, Landroid/preference/Preference;

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_86
    move-object/from16 v22, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_87
    iput-object v4, v14, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->f:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_364

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v5, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_3cf

    nop

    nop

    :goto_89
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_409

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast v7, Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38d

    nop

    nop

    nop

    nop

    :goto_8d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_303

    nop

    nop

    :goto_8f
    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3ec

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v4, Llyr;->K:Llze;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {v1}, Ljjk;->e()Ljip;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_95
    iget-object v5, v5, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34e

    nop

    nop

    nop

    :goto_97
    iget-object v6, v6, Lkpg;->i:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_98
    invoke-static {v5, v2}, Lgpl;->d(Ltxm;Lhoh;)Lrss;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v5, Landroid/preference/Preference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    :goto_9a
    if-eqz v4, :cond_7

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_9b
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/16 v12, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    :goto_9d
    invoke-static {v2}, Liai;->d(Lfdo;)Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v6, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_351

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    const-string v6, "pref_camera_enable_iris"

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v4, Llyr;->p:Llze;

    nop

    nop

    goto/32 :goto_3ef

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v6, v11}, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_3b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_a6
    sget-object v4, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->ZfsSeVSRX:Ljava/lang/String;

    nop

    goto/32 :goto_3a2

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_29a

    nop

    nop

    :goto_a8
    iget-object v5, v1, Lleu;->p:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast v9, Lhdu;

    nop

    nop

    goto/32 :goto_41b

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v6}, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_ab
    new-instance v5, Ljag;

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_412

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/32 :goto_2fe

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-ltz v8, :cond_9

    nop

    nop

    goto/32 :goto_3ca

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    :cond_a
    goto/32 :goto_1d0

    nop

    :goto_b1
    if-nez v15, :cond_b

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :cond_b
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-direct {v2}, Lows;-><init>()V

    goto/32 :goto_41a

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move-object/from16 v7, v16

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-nez v8, :cond_c

    nop

    goto/32 :goto_3b7

    nop

    nop

    :cond_c
    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v2, v2, Ljip;->M:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v0, v3}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2d1

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_3ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-direct {v0, v3}, Ljly;->7ecc92917e9c4556cc19f457ddc41af8m(Landroid/preference/PreferenceScreen;)V

    goto/32 :goto_3b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iput-object v12, v9, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->k:Ljava/lang/String;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_bc
    invoke-direct {v13, v10, v12, v9}, Lmlq;-><init>(Lmlr;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;)V

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    :goto_bd
    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->o:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_1e4

    nop

    nop

    :goto_bf
    sget-object v14, Llyr;->aa:Llze;

    nop

    goto/32 :goto_305

    nop

    nop

    :goto_c0
    const/16 v9, 0xb

    nop

    nop

    goto/32 :goto_2d4

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-direct {v15, v4, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_328

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v4, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_c4
    goto/32 :goto_36e

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v5, v9, Lhdu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_306

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast v10, Ljava/lang/Boolean;

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

    nop

    nop

    :goto_c7
    if-nez v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_290

    nop

    nop

    nop

    nop

    :goto_c8
    filled-new-array {v12, v4}, [[I

    move-result-object v4

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    :goto_c9
    if-nez v5, :cond_e

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

    :cond_e
    goto/32 :goto_276

    nop

    nop

    :goto_ca
    invoke-virtual {v0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast v18, Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    :goto_cc
    const v12, 0x7f140525

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    check-cast v19, Lrss;

    nop

    nop

    goto/32 :goto_31e

    nop

    nop

    nop

    nop

    :goto_ce
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_214

    nop

    nop

    nop

    :goto_d0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_d1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast v22, Loyn;

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-direct/range {v7 .. v15}, Lmgg;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lhoh;Llyx;Llyv;Llyv;Lmgh;Lmjv;)V

    goto/32 :goto_262

    nop

    nop

    nop

    :goto_d4
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const-string v1, "pref_open_setting_page"

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    move-object v15, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    check-cast v4, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0, v12}, Ljly;->getString(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    :goto_da
    if-eqz v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    :cond_f
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_db
    new-instance v14, Landroid/app/AlertDialog$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_35e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(I)V

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    new-instance v13, Lmlq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    nop

    nop

    :goto_df
    invoke-virtual {v6, v11}, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_e0
    goto/32 :goto_eb

    nop

    nop

    :goto_e1
    check-cast v2, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v4, v4, Llvt;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_e4
    iget-object v2, v2, Ljip;->ik:Ltur;

    nop

    nop

    goto/32 :goto_396

    nop

    nop

    :goto_e5
    invoke-virtual {v11}, Landroid/app/AlertDialog;->show()V

    :goto_e6
    goto/32 :goto_34c

    nop

    nop

    nop

    :goto_e7
    iget-object v6, v0, Ljly;->b:Llvt;

    nop

    goto/32 :goto_325

    nop

    nop

    :goto_e8
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    :goto_e9
    const-string v7, "Could not add %s"

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    check-cast v6, Lhxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30a

    nop

    nop

    nop

    nop

    :goto_eb
    sget-object v6, Llyr;->n:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_ec
    new-instance v11, Lmlr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    check-cast v5, Ljip;

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    aget-object v11, v11, v13

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_349

    nop

    nop

    :goto_f1
    check-cast v13, Llyx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v4, v7}, Lmly;->b(Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    :goto_f3
    check-cast v11, Llyx;

    nop

    nop

    nop

    nop

    goto/32 :goto_395

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v4, v4, Llzf;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2c8

    nop

    nop

    :goto_f5
    move-object/from16 v23, v5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_365

    nop

    nop

    nop

    :goto_f8
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    :goto_f9
    iget-object v5, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    goto/32 :goto_3df

    nop

    nop

    nop

    :goto_fa
    iget-object v2, v2, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_fb
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_fc
    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    :goto_fd
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v2}, Liai;->d(Lfdo;)Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_3b9

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-eqz v6, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_100
    check-cast v2, Ljip;

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

    nop

    :goto_101
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    const v9, 0x7f140219

    nop

    goto/32 :goto_35a

    nop

    nop

    :goto_103
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_104
    move-object v14, v2

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_39d

    nop

    nop

    nop

    nop

    nop

    :goto_106
    check-cast v13, Llyv;

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_107
    check-cast v3, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_108
    check-cast v5, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_408

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    nop

    goto/32 :goto_2e2

    nop

    nop

    nop

    nop

    :goto_10a
    new-instance v9, Lhrv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_414

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    check-cast v26, Lhoh;

    nop

    goto/32 :goto_35b

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_39f

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    sget-object v2, Lght;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_10f
    if-nez v1, :cond_11

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual {v0, v12}, Ljly;->getString(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v10, v0, Ljly;->i:Lkpg;

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    :goto_112
    iget-object v2, v5, Ljip;->ec:Ltur;

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    goto/32 :goto_368

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_194

    nop

    nop

    :goto_116
    invoke-virtual {v8}, Llzt;->d()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_117
    sget-object v9, Llyr;->ag:Llze;

    nop

    goto/32 :goto_369

    nop

    nop

    nop

    nop

    :goto_118
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_382

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_11a
    iput-object v7, v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    nop

    :goto_11b
    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    :goto_11c
    invoke-virtual {v8}, Llzt;->a()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    :goto_11e
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_33c

    nop

    nop

    :goto_120
    check-cast v7, Llzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v0, v5}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_122
    const-string v5, "pref_category_social_share"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    :goto_123
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v7, v7, Ljip;->u:Ltur;

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_126
    iget-object v5, v1, Lleu;->b:Ltxm;

    nop

    goto/32 :goto_40c

    nop

    nop

    nop

    :goto_127
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(I)V

    :goto_128
    goto/32 :goto_c2

    nop

    nop

    :goto_129
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_12a
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_12b
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

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

    :goto_12c
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto/32 :goto_164

    nop

    nop

    :goto_12d
    new-instance v4, Ljlz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_398

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    const v6, 0x7f14055d

    nop

    nop

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    :goto_131
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v0, v5}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    const/4 v7, -0x1

    nop

    nop

    :goto_134
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_135
    iget-object v5, v2, Ljip;->jj:Ltur;

    nop

    nop

    goto/32 :goto_2a2

    nop

    nop

    :goto_136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_137
    goto/32 :goto_285

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    check-cast v4, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_139
    invoke-direct {v5, v0, v11}, Ljlw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    iput-object v13, v9, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    goto/32 :goto_281

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual {v8}, Llzt;->b()I

    move-result v11

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    :goto_13d
    iget-object v9, v0, Ljly;->g:Lows;

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

    :goto_13e
    check-cast v24, Lnpr;

    nop

    goto/32 :goto_3f4

    nop

    nop

    nop

    nop

    :goto_13f
    new-instance v5, Ljlw;

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_140
    filled-new-array/range {v19 .. v19}, [I

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    :goto_141
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f7

    nop

    nop

    nop

    nop

    nop

    :goto_142
    move-object/from16 v24, v2

    nop

    nop

    nop

    goto/32 :goto_3e0

    nop

    nop

    nop

    nop

    :goto_143
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_144
    if-nez v5, :cond_12

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    :cond_12
    goto/32 :goto_287

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_145
    move-object/from16 v25, v2

    nop

    goto/32 :goto_3d9

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_147
    filled-new-array/range {v21 .. v21}, [I

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_148
    iget-object v12, v0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3e7

    nop

    nop

    nop

    nop

    nop

    :goto_149
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    nop

    nop

    goto/32 :goto_3c3

    nop

    nop

    nop

    :goto_14a
    iget-object v2, v2, Ljip;->lk:Lmhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f9

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_14c
    invoke-interface {v7}, Ltur;->a()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_14d
    iget-object v2, v2, Ljip;->i:Ltur;

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(I)V

    goto/32 :goto_2af

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    :goto_152
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    move-object v13, v2

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_154
    invoke-virtual {v7}, Llzs;->a()I

    move-result v8

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_155
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_371

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    nop

    nop

    :goto_157
    iget-object v1, v1, Llzf;->a:Ljava/lang/String;

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

    :goto_158
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    :goto_159
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iget-object v2, v2, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_329

    nop

    nop

    :goto_15b
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    iput-object v9, v10, Lmlr;->c:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    const/4 v1, -0x1

    nop

    goto/32 :goto_339

    nop

    nop

    :goto_15e
    sget-object v6, Llyr;->k:Llze;

    nop

    nop

    nop

    goto/32 :goto_3f6

    nop

    nop

    :goto_15f
    goto/16 :goto_137

    nop

    nop

    :goto_160
    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    :goto_161
    check-cast v14, Lmgh;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    check-cast v2, Lhoh;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_163
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_405

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v8}, Llzt;->e()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    :goto_165
    const v4, 0x7f140566

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_166
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    check-cast v13, Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ff

    nop

    nop

    :goto_168
    move-object v4, v3

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_169
    if-nez v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    check-cast v7, Lkcu;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    sget-object v5, Llyr;->aT:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e3

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    sget-object v4, Llyr;->K:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    :goto_16d
    const/16 v9, 0xf

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_16e
    if-nez v6, :cond_14

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_284

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_350

    nop

    nop

    :goto_170
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    :goto_171
    move-object v9, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_172
    new-instance v7, Lhos;

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    :goto_173
    move-object v9, v5

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_174
    invoke-direct {v10, v12, v9, v7}, Lnin;-><init>(II[Ljava/lang/Object;)V

    goto/32 :goto_2e0

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_176
    invoke-static {v15, v7, v12}, Lrgw;->g(Landroid/content/Context;II)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    :goto_177
    check-cast v10, Lhoh;

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    sget-object v6, Llyr;->M:Llzh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_179
    iget-object v12, v12, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    check-cast v5, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    nop

    :goto_17b
    const/4 v12, -0x1

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_17c
    invoke-direct {v0, v11}, Ljly;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    if-nez v14, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_17e
    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_17f
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_180
    iget-object v1, v1, Llvt;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_34f

    nop

    nop

    :goto_181
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_182
    goto/32 :goto_260

    nop

    nop

    nop

    nop

    nop

    :goto_183
    invoke-virtual {v0, v8}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    nop

    goto/32 :goto_3c9

    nop

    nop

    :goto_184
    new-instance v4, Ljlu;

    nop

    nop

    nop

    goto/32 :goto_2ce

    nop

    nop

    :goto_185
    invoke-direct {v2, v3, v4}, Lfdo;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_220

    nop

    nop

    nop

    nop

    :goto_186
    new-instance v11, Ljlw;

    nop

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    if-nez v4, :cond_16

    nop

    goto/32 :goto_12a

    nop

    :cond_16
    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_188
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_189
    sget-object v4, Llyr;->r:Llze;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_18a
    iget-object v5, v1, Lleu;->h:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    :goto_18b
    invoke-interface {v6, v7, v5}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18c
    const-string v1, "pref_make_setting_page_root"

    nop

    nop

    nop

    nop

    goto/32 :goto_370

    nop

    nop

    nop

    nop

    :goto_18d
    check-cast v6, Lsbn;

    nop

    nop

    goto/32 :goto_3b6

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    goto/32 :goto_3be

    nop

    nop

    nop

    :goto_190
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    :goto_191
    if-eqz v5, :cond_17

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_25c

    nop

    nop

    :goto_192
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v5

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v6, v12}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_194
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    goto/32 :goto_26c

    nop

    nop

    :goto_195
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    :goto_196
    invoke-virtual {v0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    :goto_197
    check-cast v5, Ljip;

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    nop

    :goto_198
    invoke-virtual {v12, v13}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_199
    iget-object v2, v2, Ljip;->L:Ltur;

    nop

    goto/32 :goto_2a0

    nop

    nop

    :goto_19a
    check-cast v8, Llzt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36d

    nop

    nop

    nop

    :goto_19b
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19c
    invoke-direct {v9, v7, v12}, Lhrv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2c3

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    :goto_19e
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    :goto_1a0
    const/high16 v3, 0x7f180000

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    invoke-virtual {v13, v10}, Lmgg;->d(Z)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_3a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    check-cast v7, Ljip;

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    iput-boolean v8, v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Z

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

    :goto_1a4
    iget-object v4, v4, Llvt;->n:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_324

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    iput-object v4, v0, Ljly;->fa:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    :goto_1a6
    goto/32 :goto_337

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    invoke-virtual/range {p0 .. p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v7

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    invoke-virtual {v1, v2}, Lkpg;->a(Landroid/content/Context;)V

    goto/32 :goto_32c

    nop

    nop

    nop

    :goto_1a9
    move-object/from16 v19, v5

    nop

    nop

    nop

    goto/32 :goto_31d

    nop

    nop

    :goto_1aa
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    invoke-direct {v11, v7}, Ljlx;-><init>(I)V

    goto/32 :goto_33f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    goto/16 :goto_182

    nop

    nop

    nop

    :goto_1ad
    goto/32 :goto_3fd

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    sget-object v6, Llyr;->k:Llze;

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    :goto_1af
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_323

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    check-cast v5, Lrvb;

    nop

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

    nop

    :goto_1b1
    check-cast v11, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    if-eqz v5, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    :cond_18
    goto/32 :goto_1de

    nop

    nop

    :goto_1b3
    check-cast v22, Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    check-cast v21, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_1b5
    invoke-virtual/range {p0 .. p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v1

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    :goto_1b6
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b7
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_1b8
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_3af

    nop

    nop

    nop

    nop

    :goto_1b9
    invoke-virtual/range {p0 .. p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    return-void

    nop

    nop

    nop

    :goto_1bb
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_1bc
    if-nez v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    :cond_19
    goto/32 :goto_282

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    const/4 v9, 0x3

    nop

    nop

    goto/32 :goto_37c

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    sget-object v4, Llyr;->KA:Llze;

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_1bf
    move-object/from16 v23, v5

    nop

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

    :goto_1c0
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_397

    nop

    nop

    nop

    :goto_1c1
    iget-object v2, v1, Lleu;->t:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    check-cast v23, Lnpr;

    nop

    goto/32 :goto_40a

    nop

    nop

    nop

    nop

    :goto_1c3
    iget-object v6, v0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    new-instance v10, Ljlw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_346

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    iget-object v6, v6, Llzh;->a:Ljava/lang/String;

    nop

    goto/32 :goto_334

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    new-instance v2, Lfdo;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1c7
    iget-object v5, v5, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    :goto_1c8
    iget-object v2, v2, Ljip;->i:Ltur;

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :goto_1c9
    check-cast v22, Lowu;

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_1ca
    move-object/from16 v17, v2

    nop

    nop

    nop

    goto/32 :goto_374

    nop

    nop

    :goto_1cb
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    invoke-virtual/range {p0 .. p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f2

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_1ce
    goto/32 :goto_1d4

    nop

    nop

    nop

    :goto_1cf
    sget-object v4, Llyr;->KA:Llze;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    goto/32 :goto_1bb

    nop

    nop

    :goto_1d1
    goto/32 :goto_28a

    nop

    nop

    :goto_1d2
    move-object/from16 v21, v5

    nop

    goto/32 :goto_416

    nop

    nop

    nop

    :goto_1d3
    sget-object v10, Llyr;->aa:Llze;

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    nop

    :goto_1d4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    :goto_1d6
    iget-object v15, v13, Lmgg;->l:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_1d8
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d9
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_3ba

    nop

    nop

    nop

    :goto_1da
    const-string v9, "pref_storage_status"

    nop

    nop

    goto/32 :goto_373

    nop

    nop

    :goto_1db
    invoke-direct {v7, v0, v6, v9}, Ljlu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_1dc
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    invoke-virtual {v4, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_3d1

    nop

    nop

    :goto_1de
    check-cast v4, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e2

    nop

    nop

    nop

    nop

    :goto_1df
    iget-object v7, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    if-nez v7, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_3fb

    nop

    :cond_1a
    goto/32 :goto_82

    nop

    nop

    :goto_1e1
    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    move-object v12, v2

    nop

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    :goto_1e3
    sget-object v9, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->mxaNtRyOWcv:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1e4
    const-string v4, "pref_category_advanced"

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1e5
    check-cast v13, Lmgg;

    nop

    nop

    nop

    goto/32 :goto_363

    nop

    nop

    :goto_1e6
    check-cast v5, Ljip;

    nop

    nop

    goto/32 :goto_34b

    nop

    nop

    :goto_1e7
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3ee

    nop

    nop

    nop

    :goto_1e8
    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    :goto_1e9
    goto/32 :goto_16c

    nop

    nop

    :goto_1ea
    const v4, 0x7f14055c

    nop

    nop

    goto/32 :goto_335

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_1ec
    const-string v9, "pref_free_up_space"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    :goto_1ed
    iget-object v2, v2, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    :goto_1ef
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f0
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    goto/32 :goto_3d5

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    check-cast v5, Ljip;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setIcon(I)V

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    if-nez v11, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_2f2

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_3f3

    nop

    nop

    :goto_1f6
    invoke-virtual {v0, v5}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    :goto_1f7
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    check-cast v9, Loyn;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f9
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    goto/32 :goto_410

    nop

    nop

    :goto_1fa
    new-instance v4, Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_1fb
    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_3cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    invoke-virtual {v0, v5}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c1

    nop

    nop

    :goto_1fd
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    :goto_1fe
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    iget-object v6, v6, Lkpg;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_200
    iget-object v2, v2, Ljip;->jr:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_201
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_3a0

    nop

    nop

    nop

    nop

    :goto_202
    sget-object v6, Llyr;->M:Llzh;

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_203
    iget-object v2, v2, Ljip;->jq:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_348

    nop

    nop

    :goto_204
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_359

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_205
    iget-object v5, v10, Lmlr;->b:Lowu;

    nop

    goto/32 :goto_3d2

    nop

    nop

    nop

    nop

    :goto_206
    const/4 v10, 0x0

    nop

    goto/32 :goto_340

    nop

    nop

    nop

    nop

    :goto_207
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_208
    const v12, 0x7f140511

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_209
    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_39a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20a
    check-cast v2, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    :goto_20b
    check-cast v15, Lmjv;

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

    :goto_20c
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    :goto_20e
    iget-object v2, v2, Ljip;->av:Ltur;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_20f
    iget-object v4, v4, Llvt;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    :goto_210
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_39b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_211
    invoke-virtual {v0, v3}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_212
    iget-object v4, v13, Lmgg;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    :goto_213
    new-instance v3, Llvt;

    nop

    nop

    nop

    goto/32 :goto_389

    nop

    nop

    nop

    :goto_214
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_215
    if-nez v1, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :goto_216
    invoke-virtual {v12, v13}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_2dd

    nop

    nop

    nop

    :goto_217
    invoke-static {v4, v7, v5}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    :goto_218
    goto/32 :goto_40f

    nop

    nop

    :goto_219
    iget-object v5, v5, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_21a
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_21b
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_21c
    if-nez v6, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    :cond_1d
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_21d
    invoke-direct {v11, v0, v7}, Ljlw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2f3

    nop

    nop

    nop

    :goto_21e
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    :goto_21f
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    nop

    :goto_220
    invoke-virtual {v1, v2}, Ljip;->t(Lfdo;)Lleu;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_393

    nop

    nop

    nop

    nop

    nop

    :goto_221
    move-object/from16 v16, v2

    nop

    nop

    goto/32 :goto_3ae

    nop

    nop

    nop

    nop

    nop

    :goto_222
    check-cast v6, Ljmo;

    nop

    goto/32 :goto_3c4

    nop

    nop

    nop

    nop

    :goto_223
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    :goto_224
    sget-object v4, Llyr;->q:Llze;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_225
    iget-object v10, v10, Lkpg;->C:Lcom/F;

    nop

    nop

    nop

    goto/32 :goto_356

    nop

    nop

    nop

    nop

    :goto_226
    invoke-virtual {v8}, Llzt;->c()Landroid/content/Intent;

    move-result-object v8

    nop

    goto/32 :goto_2ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_227
    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_228
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_229
    iget-object v13, v13, Lkpg;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_22a
    iget-object v11, v1, Lleu;->u:Ljava/lang/Object;

    nop

    goto/32 :goto_34a

    nop

    nop

    nop

    :goto_22b
    invoke-direct {v5, v0, v6}, Ljag;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26f

    nop

    nop

    :goto_22c
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_22d
    goto/32 :goto_314

    nop

    nop

    nop

    nop

    :goto_22e
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_22f
    iget-object v9, v10, Lmlr;->c:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_39c

    nop

    nop

    nop

    nop

    nop

    :goto_230
    invoke-virtual {v15, v10}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_231
    check-cast v5, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c6

    nop

    nop

    nop

    nop

    nop

    :goto_232
    check-cast v1, Ljjk;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_233
    iget-object v2, v2, Ljip;->u:Ltur;

    nop

    nop

    goto/32 :goto_342

    nop

    nop

    nop

    nop

    :goto_234
    move-object/from16 v17, v11

    nop

    nop

    nop

    goto/32 :goto_402

    nop

    nop

    :goto_235
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    :goto_236
    iget-object v2, v2, Ljip;->jf:Ltur;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_237
    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_238
    iget-object v1, v1, Lkpg;->m:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    nop

    :goto_239
    check-cast v11, Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3dd

    nop

    nop

    nop

    nop

    nop

    :goto_23a
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    if-eqz v4, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_411

    nop

    :cond_1e
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_23d
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3f1

    nop

    nop

    nop

    nop

    :goto_23e
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_3fa

    nop

    nop

    :goto_23f
    sget-object v6, Llyr;->M:Llzh;

    nop

    nop

    nop

    nop

    goto/32 :goto_386

    nop

    nop

    :goto_240
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    :goto_241
    check-cast v2, Ljava/text/NumberFormat;

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_242
    invoke-static {v7, v4}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v4

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

    nop

    nop

    :goto_243
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_244
    move-object/from16 v20, v7

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_245
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    :goto_246
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e1

    nop

    nop

    nop

    nop

    nop

    :goto_247
    check-cast v5, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_248
    move-object/from16 v25, v5

    nop

    nop

    goto/32 :goto_413

    nop

    nop

    :goto_249
    iget-object v15, v0, Ljly;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_24a
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setIcon(I)V

    :goto_24c
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_24d
    invoke-direct/range {v17 .. v24}, Lmlr;-><init>(Lqpa;Lmly;Lhwy;Ljava/util/concurrent/ScheduledExecutorService;Lowu;Lmjv;Lhoh;)V

    goto/32 :goto_31b

    nop

    nop

    :goto_24e
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    check-cast v4, Ljmo;

    nop

    goto/32 :goto_3dc

    nop

    nop

    nop

    :goto_250
    move-object/from16 v23, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    :goto_251
    const-string v3, "list_pref_extra"

    nop

    nop

    nop

    nop

    goto/32 :goto_38a

    nop

    nop

    nop

    nop

    :goto_252
    invoke-virtual/range {p0 .. p0}, Ljly;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    nop

    nop

    :goto_253
    check-cast v4, Loyb;

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_254
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    nop

    nop

    nop

    :goto_255
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_256
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_257
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

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

    :goto_258
    invoke-interface {v7}, Ltur;->a()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_259
    iput-object v3, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    goto/32 :goto_31c

    nop

    nop

    :goto_25a
    const-string v3, "pref_screen_extra"

    nop

    nop

    nop

    goto/32 :goto_357

    nop

    nop

    nop

    nop

    nop

    :goto_25b
    if-eqz v6, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_2c9

    nop

    nop

    nop

    nop

    nop

    :goto_25c
    check-cast v4, Lrss;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_25d
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    :goto_25e
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    goto/32 :goto_3c6

    nop

    nop

    nop

    nop

    :goto_25f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_260
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_261
    const v15, 0x7f140554

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    :goto_262
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_384

    nop

    nop

    nop

    nop

    nop

    :goto_263
    check-cast v2, Ljip;

    nop

    goto/32 :goto_3e9

    nop

    nop

    nop

    nop

    nop

    :goto_264
    iget-object v6, v6, Llzh;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    nop

    nop

    :goto_265
    iget-object v2, v5, Ljip;->L:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_266
    sget-object v12, Llyr;->ah:Llze;

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_267
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_360

    nop

    nop

    :goto_268
    check-cast v20, Loyn;

    nop

    goto/32 :goto_3fe

    nop

    nop

    nop

    :goto_269
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setIcon(I)V

    goto/32 :goto_2f1

    nop

    nop

    nop

    nop

    nop

    :goto_26a
    if-nez v11, :cond_20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_3eb

    nop

    nop

    nop

    :goto_26b
    iput-object v6, v0, Ljly;->a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_26c
    if-nez v7, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_38e

    nop

    nop

    nop

    nop

    :goto_26d
    goto/16 :goto_8e

    nop

    :goto_26e
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_26f
    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->o:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    :goto_270
    goto/32 :goto_34d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_271
    goto/16 :goto_115

    nop

    nop

    nop

    nop

    :goto_272
    goto/32 :goto_3d4

    nop

    nop

    nop

    :goto_273
    filled-new-array {v12, v15}, [[I

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    nop

    :goto_274
    iget-object v7, v10, Lmlr;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_275
    filled-new-array {v7, v7}, [I

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_276
    sget-object v5, Llyr;->aT:Llze;

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    :goto_277
    iget-object v11, v0, Ljly;->i:Lkpg;

    nop

    nop

    nop

    goto/32 :goto_35c

    nop

    nop

    nop

    :goto_278
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    goto/32 :goto_231

    nop

    nop

    :goto_279
    invoke-interface {v1}, Ltur;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_27a
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_27b
    sget-object v1, Llyr;->aV:Llzf;

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_27c
    const-string v5, "pref_ses_config"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_27d
    iget-object v5, v5, Ljip;->i:Ltur;

    nop

    nop

    nop

    goto/32 :goto_367

    nop

    nop

    nop

    nop

    :goto_27e
    goto/16 :goto_1e9

    nop

    nop

    :goto_27f
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_280
    const-string v4, "key_social_share_info"

    nop

    nop

    goto/32 :goto_2d8

    nop

    nop

    nop

    nop

    nop

    :goto_281
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

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

    :goto_282
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

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

    :goto_283
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_284
    const-string v6, "pref_category_manual_controls"

    nop

    nop

    goto/32 :goto_33d

    nop

    nop

    nop

    :goto_285
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_286
    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v11

    nop

    goto/32 :goto_31a

    nop

    nop

    nop

    :goto_287
    sget-object v5, Llyr;->aO:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_288
    invoke-interface {v11}, Ltur;->a()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_289
    move-object v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_28a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_390

    nop

    nop

    nop

    :goto_28b
    if-nez v6, :cond_22

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_121

    nop

    nop

    nop

    :goto_28c
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28d
    iget-object v6, v0, Ljly;->i:Lkpg;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    if-eqz v4, :cond_23

    nop

    goto/32 :goto_2a6

    nop

    :cond_23
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_28f
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3bd

    nop

    nop

    nop

    nop

    :goto_290
    sget-object v6, Llyr;->k:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    :goto_291
    check-cast v6, Landroid/preference/ListPreference;

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

    nop

    :goto_292
    invoke-virtual {v6, v13}, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v13

    nop

    goto/32 :goto_3b0

    nop

    nop

    nop

    :goto_293
    invoke-virtual {v14, v15, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    :goto_294
    const/16 v12, 0x10

    nop

    nop

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    :goto_295
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_296
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    :goto_297
    invoke-static {v5, v7, v2}, Lgcq;->c(Ltxm;Lkcu;Lhoh;)Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_298
    if-eqz v6, :cond_24

    nop

    goto/32 :goto_3ad

    nop

    :cond_24
    goto/32 :goto_2a3

    nop

    nop

    nop

    :goto_299
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_29a
    invoke-interface {v10, v7}, Lnik;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_29b
    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(I)V

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29c
    new-instance v5, Lhrv;

    nop

    nop

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29d
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_29e
    invoke-direct {v11, v0, v10}, Ljlw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_29f
    move-object v9, v2

    nop

    goto/32 :goto_3f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a0
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_326

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a1
    iget-object v5, v5, Ljip;->n:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_2a2
    iget-object v2, v2, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    :goto_2a3
    sget-object v6, Llyr;->n:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a4
    if-eqz v1, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a5
    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->o:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    nop

    nop

    :goto_2a6
    goto/32 :goto_327

    nop

    nop

    nop

    nop

    :goto_2a7
    check-cast v5, Ljip;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a8
    const/16 v12, 0x8

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2a9
    invoke-direct {v11, v0, v6, v7}, Ljlu;-><init>(Ljly;Landroid/preference/ListPreference;I)V

    goto/32 :goto_318

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2aa
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    :goto_2ab
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_3c1

    nop

    nop

    nop

    nop

    nop

    :goto_2ac
    invoke-direct {v4, v12, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_2e4

    nop

    nop

    :goto_2ad
    sget-object v4, Llyr;->aV:Llzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_2ae
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2af
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    :goto_2b0
    invoke-direct {v0, v6}, Ljly;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b1
    if-nez v3, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    :cond_26
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_2b2
    invoke-direct {v11, v10}, Ljlx;-><init>(I)V

    goto/32 :goto_3ab

    nop

    nop

    nop

    nop

    :goto_2b3
    iget-object v3, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_2b4
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    goto/32 :goto_2b

    nop

    nop

    :goto_2b5
    new-instance v7, Lpxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_392

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b6
    goto/16 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_2b7
    goto/32 :goto_311

    nop

    nop

    nop

    :goto_2b8
    const-string v5, "0"

    nop

    goto/32 :goto_358

    nop

    nop

    nop

    nop

    :goto_2b9
    invoke-virtual {v5}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2ba
    invoke-direct {v10, v2, v5, v7}, Lhdu;-><init>(Landroid/content/Context;Loyn;Lmjv;)V

    goto/32 :goto_fd

    nop

    nop

    :goto_2bb
    const/16 v6, 0x13

    nop

    nop

    goto/32 :goto_40d

    nop

    nop

    nop

    nop

    :goto_2bc
    move-object/from16 v24, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_2bd
    iget-object v1, v1, Lkpg;->f:Ljava/lang/Object;

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

    :goto_2be
    check-cast v7, Lpci;

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_2bf
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_361

    nop

    nop

    nop

    nop

    nop

    :goto_2c0
    filled-new-array/range {v21 .. v21}, [I

    move-result-object v15

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c1
    check-cast v5, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_2c2
    check-cast v14, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3db

    nop

    nop

    nop

    nop

    nop

    :goto_2c3
    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c4
    invoke-virtual {v0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v11

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_2c5
    filled-new-array {v7, v7}, [I

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    :goto_2c6
    iget-object v5, v5, Ljip;->ik:Ltur;

    nop

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    :goto_2c7
    move v7, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_2c8
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    nop

    nop

    nop

    nop

    :goto_2c9
    sget-object v6, Llyr;->l:Llzf;

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    nop

    :goto_2ca
    check-cast v5, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    :goto_2cb
    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

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

    nop

    :goto_2cc
    const v19, -0x10100a0

    nop

    goto/32 :goto_32a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2cd
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ce
    invoke-direct {v4, v6, v14, v11}, Ljlu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2cf
    iget-object v5, v5, Ljip;->jr:Ltur;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_2d0
    check-cast v2, Ljip;

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    :goto_2d1
    check-cast v4, Landroid/preference/PreferenceGroup;

    nop

    nop

    goto/32 :goto_289

    nop

    nop

    :goto_2d2
    invoke-virtual {v6, v12}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2d3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d4
    invoke-direct {v7, v6, v9}, Llbc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2bf

    nop

    nop

    nop

    :goto_2d5
    sget-object v6, Llyr;->L:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d6
    if-nez v2, :cond_27

    nop

    goto/32 :goto_37b

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_25a

    nop

    nop

    nop

    nop

    :goto_2d7
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3ea

    nop

    nop

    nop

    nop

    :goto_2d8
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d9
    new-instance v15, Lfwq;

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    :goto_2da
    iget-object v6, v6, Llzf;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    nop

    :goto_2db
    iget-object v2, v2, Ljip;->dd:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2dc
    invoke-direct {v7, v6, v4, v8, v9}, Lpxk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    :goto_2dd
    invoke-virtual {v9}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v13

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2de
    const/16 v7, 0x9aa

    nop

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

    :goto_2df
    invoke-virtual {v0, v3}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e0
    iget-object v7, v13, Lmgg;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_2e1
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    nop

    :goto_2e2
    if-eqz v12, :cond_28

    nop

    nop

    goto/32 :goto_2d3

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_394

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e3
    const v7, 0x7f040184

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_2e4
    iput-object v4, v14, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a9

    nop

    nop

    nop

    nop

    nop

    :goto_2e5
    const-string v8, "pref_category_general"

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_2e6
    new-instance v9, Landroid/preference/PreferenceCategory;

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_2e7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_2e8
    new-instance v9, Lhsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_310

    nop

    nop

    :goto_2e9
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_37d

    nop

    nop

    nop

    nop

    :goto_2ea
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    :goto_2eb
    if-eqz v6, :cond_29

    nop

    goto/32 :goto_20

    nop

    :cond_29
    goto/32 :goto_399

    nop

    nop

    nop

    :goto_2ec
    if-nez v8, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_2a
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ed
    check-cast v1, Landroid/preference/ListPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    :goto_2ee
    iget-object v1, v1, Lkpg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    :goto_2ef
    new-instance v16, Lmgg;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_2f0
    sget-object v6, Llyr;->aU:Llze;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_2f1
    goto/16 :goto_24c

    nop

    nop

    :goto_2f2
    goto/32 :goto_b2

    nop

    nop

    :goto_2f3
    iput-object v11, v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_2f4
    invoke-interface {v2, v4}, Lney;->a(Ljava/util/function/Function;)V

    goto/32 :goto_2b6

    nop

    nop

    nop

    :goto_2f5
    invoke-virtual {v9, v12}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->setLayoutResource(I)V

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_2f6
    if-eqz v11, :cond_2b

    nop

    nop

    nop

    nop

    goto/32 :goto_3e8

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_404

    nop

    nop

    nop

    :goto_2f7
    check-cast v8, Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_2f8
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    goto/32 :goto_3d8

    nop

    nop

    nop

    nop

    nop

    :goto_2f9
    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    nop

    :goto_2fa
    sget-object v4, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->TEsa:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    :goto_2fb
    if-nez v2, :cond_2c

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_2b3

    nop

    nop

    nop

    :goto_2fc
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    goto/32 :goto_36c

    nop

    nop

    nop

    nop

    nop

    :goto_2fd
    if-lt v6, v7, :cond_2d

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_237

    nop

    nop

    :goto_2fe
    iget-object v5, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2ff
    iget-object v2, v2, Ljip;->M:Ltur;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_300
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_301
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_302
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_296

    nop

    nop

    nop

    :goto_303
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fd

    nop

    nop

    :goto_304
    invoke-virtual {v14, v11, v15}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_19e

    nop

    nop

    nop

    :goto_305
    iget-object v14, v14, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_306
    check-cast v5, Landroid/content/Context;

    nop

    nop

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    nop

    :goto_307
    check-cast v13, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    :goto_308
    iget-object v1, v1, Lleu;->g:Ltxm;

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_309
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_344

    nop

    nop

    :goto_30a
    invoke-virtual {v6, v5}, Lhxi;->c(Landroid/preference/PreferenceScreen;)V

    :goto_30b
    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    :goto_30c
    const/4 v11, 0x4

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_30d
    check-cast v12, Llyv;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_30e
    invoke-direct {v11, v0, v12}, Ljag;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3ac

    nop

    nop

    nop

    nop

    :goto_30f
    if-nez v7, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_33a

    nop

    nop

    :cond_2e
    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_310
    invoke-direct {v9, v7, v6}, Lhsx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_311
    iget-object v1, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    :goto_312
    new-instance v4, Lnfc;

    nop

    nop

    nop

    nop

    goto/32 :goto_40b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_313
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_3de

    nop

    nop

    nop

    :goto_314
    iget-object v1, v0, Ljly;->i:Lkpg;

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    nop

    :goto_315
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_403

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_316
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    :goto_317
    check-cast v2, Ljip;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_318
    invoke-virtual {v6, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/32 :goto_3a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_319
    const-string v3, "prefscreen_top"

    nop

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    :goto_31a
    invoke-direct {v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_13c

    nop

    nop

    :goto_31b
    iget-object v2, v1, Lleu;->c:Ltxm;

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31c
    iget-object v1, v0, Ljly;->i:Lkpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_353

    nop

    nop

    nop

    nop

    nop

    :goto_31d
    check-cast v19, Lmly;

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_31e
    move-object v5, v3

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31f
    check-cast v10, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_38c

    nop

    nop

    :goto_320
    invoke-direct {v5, v0, v7}, Ljag;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_321
    invoke-interface {v10}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    nop

    :goto_322
    check-cast v6, Landroid/preference/PreferenceCategory;

    nop

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    nop

    :goto_323
    iget-object v13, v10, Lmlr;->g:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_41c

    nop

    nop

    nop

    nop

    :goto_324
    const-string v5, "pref_camera_kepler_enabled_key"

    nop

    nop

    nop

    goto/32 :goto_315

    nop

    nop

    :goto_325
    iget-object v6, v6, Llvt;->k:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_326
    move-object v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_327
    sget-object v4, Llyr;->q:Llze;

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    :goto_328
    iput-object v15, v14, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    :goto_329
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_32a
    filled-new-array/range {v19 .. v19}, [I

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_345

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32b
    if-eqz v4, :cond_2f

    nop

    nop

    goto/32 :goto_270

    nop

    :cond_2f
    goto/32 :goto_224

    nop

    nop

    nop

    nop

    nop

    :goto_32c
    iget-object v1, v0, Ljly;->i:Lkpg;

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    :goto_32d
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_32e
    invoke-virtual/range {v4 .. v9}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_32f
    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_330
    check-cast v9, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_331
    invoke-direct {v0, v6}, Ljly;->23ce148e54b083367f51e25c7971761em(Ljava/lang/String;)V

    :goto_332
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_333
    iget-object v7, v2, Ljip;->ce:Ltur;

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_334
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    nop

    nop

    :goto_335
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(I)V

    :goto_336
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_337
    iget-object v4, v0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_338
    check-cast v5, Ljip;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_339
    goto/16 :goto_134

    nop

    nop

    nop

    nop

    :goto_33a
    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_33b
    invoke-virtual {v7}, Llzs;->c()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36b

    nop

    nop

    :goto_33c
    move-object/from16 v24, v5

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33d
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    nop

    nop

    :goto_33e
    const/16 v11, 0x11

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_33f
    const v15, 0x7f14018b

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_340
    if-eqz v6, :cond_30

    nop

    goto/32 :goto_3a8

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    nop

    :goto_341
    invoke-virtual {v6, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_342
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_343
    move-object v13, v6

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    :goto_344
    check-cast v6, Loyb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3cc

    nop

    nop

    nop

    :goto_345
    const v21, 0x10100a0

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_346
    invoke-direct {v10, v5, v8}, Ljlw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_347
    check-cast v2, Lfdo;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_348
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    :goto_349
    invoke-static {v2}, Ltum;->b(Ltur;)Ltud;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_34a
    check-cast v11, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_388

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34b
    iget-object v5, v5, Ljip;->j:Ltur;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_34c
    invoke-virtual {v6, v13}, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;->setValueIndex(I)V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_34d
    sget-object v4, Llyr;->r:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_354

    nop

    nop

    nop

    nop

    :goto_34e
    invoke-virtual/range {p0 .. p0}, Ljly;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    nop

    nop

    :goto_34f
    invoke-virtual/range {p0 .. p0}, Ljly;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_350
    new-instance v11, Ljag;

    nop

    goto/32 :goto_294

    nop

    nop

    nop

    :goto_351
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_352
    const v8, 0x7f0e011a

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    :goto_353
    invoke-virtual/range {p0 .. p0}, Ljly;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_354
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3f0

    nop

    nop

    nop

    :goto_355
    check-cast v11, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_356
    if-nez v5, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_3e8

    nop

    :cond_31
    goto/32 :goto_2c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_357
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_358
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40e

    nop

    nop

    nop

    :goto_359
    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_341

    nop

    nop

    nop

    :goto_35a
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_2e8

    nop

    nop

    nop

    nop

    :goto_35b
    new-instance v2, Lqpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_35c
    iget-object v11, v11, Lkpg;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e4

    nop

    nop

    nop

    nop

    nop

    :goto_35d
    invoke-virtual {v13}, Lmgg;->e()V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_35e
    invoke-virtual/range {p0 .. p0}, Ljly;->getContext()Landroid/content/Context;

    move-result-object v15

    nop

    goto/32 :goto_18e

    nop

    nop

    :goto_35f
    iget-object v2, v2, Ljip;->jh:Ltur;

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_360
    if-eqz v6, :cond_32

    nop

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    :goto_361
    invoke-static {v4, v7, v9}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    :goto_362
    invoke-virtual {v7}, Llzs;->b()I

    move-result v10

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_363
    iput-object v5, v13, Lmgg;->j:Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_35d

    nop

    nop

    :goto_364
    invoke-virtual {v14, v10}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_365
    move-object/from16 v21, v2

    nop

    nop

    goto/32 :goto_3c0

    nop

    nop

    nop

    nop

    :goto_366
    if-nez v4, :cond_33

    nop

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    :cond_33
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_367
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_368
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_369
    iget-object v9, v9, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_36a
    check-cast v9, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36b
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    goto/32 :goto_417

    nop

    nop

    nop

    nop

    nop

    :goto_36c
    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    goto/32 :goto_3a1

    nop

    nop

    :goto_36d
    new-instance v10, Landroid/preference/Preference;

    nop

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    nop

    nop

    :goto_36e
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    goto/32 :goto_163

    nop

    nop

    :goto_36f
    iget-object v6, v6, Llvt;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_343

    nop

    nop

    nop

    :goto_370
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_371
    check-cast v2, Ljip;

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    :goto_372
    iput-object v2, v0, Ljly;->i:Lkpg;

    nop

    nop

    goto/32 :goto_316

    nop

    nop

    :goto_373
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_330

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_374
    invoke-direct/range {v17 .. v26}, Lqpa;-><init>(Loyn;Loyn;Loyn;Llzj;Loyn;Lnpr;Llyv;Llyv;Lhoh;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_375
    check-cast v4, Landroid/preference/PreferenceScreen;

    nop

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    :goto_376
    check-cast v5, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    :goto_377
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_376

    nop

    nop

    nop

    :goto_378
    iget-object v5, v2, Ljip;->ca:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_379
    check-cast v19, Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    :goto_37a
    iput-object v3, v0, Ljly;->e:Ljava/lang/String;

    nop

    :goto_37b
    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_37c
    if-eqz v7, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    nop

    :goto_37d
    move-object v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_37e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3c7

    nop

    nop

    nop

    nop

    :goto_37f
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_366

    nop

    nop

    nop

    :goto_380
    invoke-direct {v4, v3, v5}, Ljlz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2f4

    nop

    nop

    :goto_381
    check-cast v2, Ljip;

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    :goto_382
    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_383
    iget-object v2, v2, Ljip;->M:Ltur;

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_384
    check-cast v2, Ljip;

    nop

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

    :goto_385
    sget-object v4, Llyr;->p:Llze;

    nop

    goto/32 :goto_3c5

    nop

    nop

    :goto_386
    iget-object v6, v6, Llzh;->a:Ljava/lang/String;

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_387
    const v12, 0x7f12000a

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    :goto_388
    iget-object v11, v11, Ljip;->i:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    :goto_389
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_38a
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_37a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38b
    sget-object v4, Llyr;->aT:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_32d

    nop

    nop

    nop

    :goto_38c
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_418

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38d
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_38e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    :goto_38f
    invoke-direct {v12, v11}, Liol;-><init>(I)V

    goto/32 :goto_3d0

    nop

    nop

    nop

    :goto_390
    invoke-virtual/range {p0 .. p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v1

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    :goto_391
    if-eqz v11, :cond_35

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_277

    nop

    nop

    :goto_392
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_2dc

    nop

    nop

    nop

    :goto_393
    invoke-virtual {v1}, Lleu;->c()Lkpg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_372

    nop

    nop

    :goto_394
    invoke-virtual {v0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_395
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a5

    nop

    nop

    :goto_396
    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3bb

    nop

    nop

    nop

    nop

    :goto_397
    check-cast v4, Lmhz;

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    :goto_398
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_380

    nop

    nop

    nop

    :goto_399
    sget-object v6, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->s:Lsdb;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_39a
    check-cast v17, Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_39b
    const/16 v6, 0x12

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39c
    const v12, 0x7f0e0111

    nop

    nop

    nop

    nop

    goto/32 :goto_2f5

    nop

    nop

    :goto_39d
    move-object/from16 v21, v5

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :goto_39e
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    :goto_39f
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_3a0
    move-object v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a1
    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_3a2
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_37f

    nop

    nop

    nop

    nop

    :goto_3a3
    new-instance v10, Lhdu;

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_3a4
    invoke-virtual {v14, v15}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_3b2

    nop

    nop

    nop

    nop

    nop

    :goto_3a5
    check-cast v2, Ljip;

    nop

    nop

    nop

    nop

    goto/32 :goto_383

    nop

    nop

    nop

    nop

    :goto_3a6
    if-nez v5, :cond_36

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

    :cond_36
    goto/32 :goto_309

    nop

    nop

    nop

    :goto_3a7
    goto/16 :goto_332

    nop

    nop

    nop

    :goto_3a8
    goto/32 :goto_202

    nop

    nop

    :goto_3a9
    invoke-virtual {v13}, Lmgg;->b()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    :goto_3aa
    check-cast v2, Lney;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fb

    nop

    nop

    :goto_3ab
    invoke-virtual {v14, v15, v13, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_3da

    nop

    nop

    nop

    nop

    :goto_3ac
    iput-object v11, v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->o:Landroid/view/View$OnClickListener;

    nop

    nop

    nop

    nop

    nop

    :goto_3ad
    goto/32 :goto_401

    nop

    nop

    nop

    nop

    nop

    :goto_3ae
    invoke-direct/range {v5 .. v19}, Llvt;-><init>(Lhxi;Lmgg;Lmjv;Loyn;Lhdu;Lmlr;Ltud;Llyx;Lrss;Lrss;Lrss;Lrss;Lrss;Lrss;)V

    goto/32 :goto_259

    nop

    nop

    :goto_3af
    iget-object v2, v2, Ljip;->dd:Ltur;

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

    :goto_3b0
    sget-object v14, Llyr;->l:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b1
    check-cast v10, Lmlr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_3b2
    iget-object v15, v13, Lmgg;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    :goto_3b3
    new-instance v11, Ljlw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    :goto_3b4
    new-instance v6, Lhxi;

    nop

    nop

    nop

    goto/32 :goto_347

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b5
    check-cast v2, Ljip;

    nop

    nop

    goto/32 :goto_415

    nop

    nop

    :goto_3b6
    invoke-virtual {v6}, Lsbn;->em()Lscp;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_3b7
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_3b8
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b9
    check-cast v5, Ljip;

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_3ba
    check-cast v5, Loyn;

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    :goto_3bb
    move-object/from16 v19, v2

    nop

    goto/32 :goto_379

    nop

    nop

    nop

    nop

    nop

    :goto_3bc
    new-instance v13, Ljag;

    nop

    goto/32 :goto_3c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3bd
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_32b

    nop

    nop

    :goto_3be
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3bf
    if-lez v6, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_3c0
    check-cast v21, Llzj;

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_3c1
    move-object/from16 v22, v5

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_3c2
    invoke-direct {v13, v0, v12}, Ljag;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c3
    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    goto/32 :goto_362

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c4
    const v6, 0x7f14054f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_3c5
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_3c6
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/BlockableListPreference;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_3c8
    const-string v4, "pref_category_storage"

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_3c9
    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_3ca
    goto/32 :goto_3d6

    nop

    nop

    :goto_3cb
    if-eqz v4, :cond_38

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_189

    nop

    nop

    :goto_3cc
    const v6, 0x7f140567

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_3cd
    if-nez v5, :cond_39

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_313

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ce
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    :goto_3cf
    if-nez v5, :cond_3a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_3d0
    iput-object v12, v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->n:Ljava/util/function/Function;

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_3d1
    check-cast v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_3d2
    invoke-static {v4, v7, v5}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :goto_3d3
    goto/32 :goto_385

    nop

    nop

    nop

    nop

    nop

    :goto_3d4
    const-string v6, "pref_audio_zoom_key"

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_3d5
    new-instance v5, Ljag;

    nop

    nop

    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    nop

    :goto_3d6
    invoke-virtual {v7}, Llzs;->d()Ljava/util/List;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    :goto_3d7
    check-cast v5, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_3d8
    check-cast v2, Ljip;

    nop

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    nop

    nop

    nop

    :goto_3d9
    check-cast v25, Llyv;

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_3da
    new-instance v11, Ljlx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3db
    if-nez v14, :cond_3b

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

    :cond_3b
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_3dc
    const v4, 0x7f14054e

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_3dd
    invoke-virtual {v11, v12}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    :goto_3de
    check-cast v6, Lmhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_3df
    iget-object v5, v5, Llvt;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e0
    check-cast v24, Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    :goto_3e1
    iget-object v14, v14, Llzf;->a:Ljava/lang/String;

    nop

    goto/32 :goto_249

    nop

    nop

    :goto_3e2
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e3
    iget-object v5, v5, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    nop

    :goto_3e4
    sget-object v12, Llyr;->L:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e5
    invoke-direct {v14, v7, v13}, Lmln;-><init>(Landroid/content/Context;Lhoh;)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e6
    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->j:Ljava/lang/String;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_3e7
    invoke-virtual {v10, v5, v11, v12}, Lcom/F;->mod_menu(Landroid/preference/PreferenceScreen;Landroid/app/Activity;Ljava/lang/String;)V

    :goto_3e8
    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_3e9
    iget-object v5, v2, Ljip;->cd:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_333

    nop

    nop

    :goto_3ea
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_37e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3eb
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_355

    nop

    nop

    nop

    nop

    nop

    :goto_3ec
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_3ed
    new-instance v2, Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_3ee
    move-object/from16 v26, v2

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

    :goto_3ef
    iget-object v4, v4, Llze;->a:Ljava/lang/String;

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f0
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3cb

    nop

    nop

    nop

    nop

    nop

    :goto_3f1
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_407

    nop

    nop

    nop

    :goto_3f2
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    :goto_3f3
    invoke-virtual {v6, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/32 :goto_31

    nop

    nop

    :goto_3f4
    iget-object v5, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3f5
    iget-object v6, v6, Llzf;->a:Ljava/lang/String;

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_3f6
    iget-object v6, v6, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_3f7
    new-instance v5, Ljag;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3f8
    check-cast v9, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f9
    check-cast v11, Lhoh;

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_3fa
    goto/16 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_3fb
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3fc
    iget-object v13, v0, Ljly;->i:Lkpg;

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    :goto_3fd
    iget-object v1, v0, Ljly;->i:Lkpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ee

    nop

    nop

    :goto_3fe
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_381

    nop

    nop

    nop

    nop

    :goto_3ff
    invoke-virtual {v13, v14}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_307

    nop

    nop

    :goto_400
    new-instance v12, Liol;

    nop

    goto/32 :goto_38f

    nop

    nop

    nop

    :goto_401
    sget-object v6, Llyr;->b:Llze;

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_402
    move-object/from16 v18, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    :goto_403
    if-eqz v6, :cond_3c

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :cond_3c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_404
    invoke-virtual {v0, v5}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_405
    const-wide/16 v8, 0x0

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

    :goto_406
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    goto/32 :goto_1ac

    nop

    nop

    nop

    :goto_407
    new-instance v7, Ljlu;

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_408
    invoke-direct {v6, v2, v5}, Lhxi;-><init>(Landroid/content/Context;Lhoh;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_409
    move-object/from16 v18, v2

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_40a
    iget-object v2, v1, Lleu;->u:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40b
    invoke-direct {v4, v8}, Lnfc;-><init>(I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_40c
    invoke-interface {v5}, Ltur;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40d
    invoke-direct {v5, v0, v6}, Ljag;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_40e
    if-eqz v4, :cond_3d

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_2cd

    nop

    nop

    :goto_40f
    const/4 v4, 0x0

    nop

    goto/32 :goto_2fa

    nop

    nop

    nop

    nop

    nop

    :goto_410
    iput-object v4, v0, Ljly;->f:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    :goto_411
    goto/32 :goto_1be

    nop

    nop

    :goto_412
    new-instance v7, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_413
    check-cast v25, Llyv;

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    :goto_414
    const/4 v12, 0x5

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_415
    iget-object v2, v2, Ljip;->M:Ltur;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    nop

    :goto_416
    check-cast v21, Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    :goto_417
    invoke-virtual {v7}, Llzs;->a()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_418
    invoke-virtual {v4, v10}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_419
    iget-object v5, v5, Ljip;->u:Ltur;

    nop

    nop

    nop

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41a
    iput-object v2, v0, Ljly;->g:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41b
    iget-object v10, v9, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_321

    nop

    nop

    nop

    nop

    :goto_41c
    new-instance v14, Lmln;

    nop

    nop

    goto/32 :goto_3e5

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ljly;->g:Lows;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onPause()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljly;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onResume()V
    .locals 9

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_0
    const v6, 0x7f140547

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    iget-object v2, v2, Lkpg;->m:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v5}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    invoke-direct {p0, v1}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_9
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_0

    nop

    goto/32 :goto_7c

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u(Landroid/preference/PreferenceFragment;Llvt;Lkpg;)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, v2, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v2, v0}, L_004;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v2, L_012;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, v0}, L_010;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_cb

    nop

    nop

    :goto_12
    const v5, 0x7f140552

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v1}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_15
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_16
    iget-object v5, v6, Lmgg;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_17
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    check-cast v1, Landroid/preference/ListPreference;

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v2}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_1e
    sput-object v1, Lcom/a;->menu_pthcr:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "pref_ses_config"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_22
    const v5, 0x7f14021a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "custom_lib_setting_key"

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_28
    const-string v1, "cHJlZl9vcGVuX2tleQ=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_29
    check-cast v6, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v2}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v5, "pref_category_custom_hotkeys"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v7, Ljava/lang/Boolean;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Ljly;->fa:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "c2F2ZV9zdG9yYWdlX2tleQ"

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    iget-object v6, v5, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_33
    const/16 v8, 0xa

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_36
    aget-object v2, v4, v2

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const-string v4, "auto_ns_key"

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

    :goto_38
    const-string v2, "pref_category_developer"

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_39
    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_68

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0}, Ljly;->getActivity()Landroid/app/Activity;

    move-result-object v0

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

    nop

    nop

    :goto_3d
    if-ne v3, v5, :cond_4

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0x0

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v6, v7, v5}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v5

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_41
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    :goto_42
    goto/32 :goto_2d

    nop

    nop

    :goto_43
    iget-object v0, p0, Ljly;->f:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_44
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_45
    invoke-virtual {p0, v3}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

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

    :goto_46
    sget-object v2, Llyr;->s:Llze;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v2, p0, Ljly;->i:Lkpg;

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

    :goto_48
    check-cast v1, Landroid/preference/ListPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v5, p0, Ljly;->b:Llvt;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

:goto_4d
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

:goto_4e
    goto/32 :goto_mgc_filter_bind

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v2, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_50
    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_51
    const-string v1, "pref_camera_resolution"

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {p0, v1}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v5, v6, v2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    :goto_56
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string v0, "pref_category_resolution_camera"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_58
    const-string v1, "Z2FsbGV5X2tleQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_59
    const-string v1, "cHJlZl9yZXNldF9rZXk"

    nop

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

    :goto_5a
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    :goto_5c
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_5d
    const-string v1, "pthcr"

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    :cond_6
    goto/32 :goto_dc

    nop

    nop

    :goto_5f
    invoke-static {v1}, Lcom/a;->openMediaSelector(Landroid/preference/ListPreference;)V

    :goto_60
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_7
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_64
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_65
    sput-object v1, Lcom/a;->menu_lens:Ljava/lang/String;

    nop

    nop

    :goto_66
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_67
    const v5, 0x7f14021b

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Ljly;->a()V

    :goto_6a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v0, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const-string v1, "pref_category_advanced"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v1, :cond_8

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

    :cond_8
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_71
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Ljly;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_75
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v0, p0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_77
    if-nez v1, :cond_a

    nop

    goto/32 :goto_9

    nop

    :cond_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_78
    const v5, 0x7f14052c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_79
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_b
    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_7c
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_7d
    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v7, v8}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_80
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {v7, v5, v8}, Llbc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_ec

    nop

    nop

    :goto_82
    if-nez v7, :cond_d

    nop

    goto/32 :goto_ef

    nop

    :cond_d
    goto/32 :goto_10c

    nop

    nop

    :goto_83
    iget-object v5, v5, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_84
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_85
    invoke-direct {v2, v0}, L_012;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_89
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_8a
    if-nez v2, :cond_e

    nop

    goto/32 :goto_71

    nop

    :cond_e
    goto/32 :goto_21

    nop

    nop

    :goto_8b
    new-instance v2, L_004;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8c
    const-string v1, "Y3VzdG9tX2xpYl9yZXN0b3JlX2tleQ=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_8d
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8e
    new-instance v6, Limd;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_8f
    iget-object v1, v1, Llzf;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_90
    const-string v3, "pref_category_frequent_faces"

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_91
    sget-object v1, Llyr;->d:Llzf;

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

    :goto_92
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    :goto_94
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_96
    if-nez v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_f
    goto/32 :goto_41

    nop

    nop

    :goto_97
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_98
    new-instance v2, Lcom/FbB$0;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_99
    invoke-direct {p0, v2}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_9d
    const-string v4, "pref_category_storage"

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const v6, 0x7f140643

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v5, p0, Ljly;->b:Llvt;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_a0
    const v7, 0x7f1404ff

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_a1
    const-string v1, "pref_ses_config"

    nop

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

    :goto_a2
    new-instance v2, Ljlw;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a4
    invoke-direct {v2}, Lcom/FbB$0;-><init>()V

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-direct {p0, v1}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct {p0, v1}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_a7
    return-void

    nop

    :goto_a8
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_a9
    if-nez v1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v5, v5, Llvt;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_ac
    if-nez v2, :cond_11

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_11
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_ad
    const-string v1, "pref_category_gestures"

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_ae
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_af
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_b0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b1
    goto/16 :goto_94

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-direct {v2, p0, v4}, Ljlw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_b6
    check-cast v0, Landroid/preference/PreferenceCategory;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_b7
    invoke-direct {p0, v2}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const-string v2, "pref_category_social_share"

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

    :goto_b9
    invoke-direct {p0, v5}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    :goto_ba
    goto/32 :goto_c9

    nop

    nop

    :goto_bb
    check-cast v5, Lhdu;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_bc
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_bd
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_be
    const-string v1, "mgc_config_key"

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

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

    nop

    :goto_c1
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_49

    nop

    :goto_c2
    iget-object v1, p0, Ljly;->i:Lkpg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_c3
    invoke-direct {p0, v3}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_c4
    check-cast v2, Landroid/preference/PreferenceScreen;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_c5
    const/16 v7, 0xb

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_c6
    new-instance v7, Llbc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-static {v6, v7, v8}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_ca
    check-cast v1, Landroid/preference/ListPreference;

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

    :goto_cb
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_cc
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_ce
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_cf
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

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

    :goto_d1
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_d2
    move-object v6, v5

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_d3
    if-nez v0, :cond_14

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_14
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    goto/32 :goto_76

    nop

    nop

    :goto_d5
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v5, v5, Llvt;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    const-string v1, "cHJlZl9oZWxwX3NldHRpbnNfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_d8
    sget-object v2, Llyr;->h:Llzh;

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_d9
    const v6, 0x7f140545

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-direct {v2, v0}, L_016;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    const-string v1, "Y3VzdG9tX2xpYl9vcGVuX2tleQ=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    new-instance v2, L_010;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_de
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_df
    if-nez v0, :cond_15

    nop

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

    :cond_15
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    if-nez v1, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_16
    goto/32 :goto_106

    nop

    nop

    nop

    :goto_e1
    check-cast v1, Ljava/lang/String;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    new-instance v2, L_020;

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_e3
    if-eqz v2, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_17
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_e4
    iget-object v0, p0, Ljly;->b:Llvt;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_e6
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_e8
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-direct {v2, v0}, L_006;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {}, Lolx;->bh()Ljava/util/concurrent/Executor;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_ed
    sget-object v8, Llyr;->aa:Llze;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f0
    const v5, 0x7f140565

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_f1
    invoke-virtual {v6}, Lmgg;->e()V

    goto/32 :goto_f3

    nop

    nop

    :goto_f2
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v7, v6, Lmgg;->l:Llyv;

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    const/16 v8, 0xc

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_f5
    new-instance v7, Llbc;

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

    :goto_f6
    invoke-direct {v7, v5, v8}, Llbc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {p0, v0}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {p0}, Ljly;->b()Z

    move-result v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-static {v1}, Lcom/a;->aa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_fa
    invoke-direct {v6, v2, v7}, Limd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_fb
    invoke-static {v1}, Lcom/a;->openStorage(Landroid/preference/ListPreference;)V

    goto/32 :goto_e2

    nop

    nop

    :goto_fc
    const-string v1, "cHJlZl9zYXZlX2tleQ=="

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_fd
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

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

    nop

    :goto_fe
    if-nez v1, :cond_18

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    check-cast v6, Lmgg;

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_102
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_103
    invoke-direct {v2, v0}, L_020;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

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

    :goto_105
    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_106
    new-instance v2, L_016;

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {p0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_108
    invoke-direct {p0, v4}, Ljly;->d5484163cd8d335e6b17663474ff5f2bm(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_109
    if-nez v1, :cond_19

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_35

    nop

    nop

    :goto_10a
    iget-object v2, v2, Llzh;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_10c
    invoke-virtual {v6}, Lmgg;->c()Lsui;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_10d
    new-instance v2, L_006;

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_10e
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    if-nez v4, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_1a
    goto/32 :goto_f2

    nop

    nop

    nop

:goto_110
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_mgc_filter_bind
    const-string v1, "mgc_filter_management_key"

    invoke-virtual {p0, v1}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_mgc_filter_missing

    new-instance v2, Lcom/hinnka/mycamera/previewhook/filters/MgcFilterPreferenceClickListener;

    invoke-direct {v2, v0}, Lcom/hinnka/mycamera/previewhook/filters/MgcFilterPreferenceClickListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_mgc_filter_missing
    goto/32 :goto_57
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, v2}, Lcom/a;->da(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v5, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_1
    :goto_7
    goto/32 :goto_41

    nop

    nop

    :goto_8
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v2}, Lcom/a;->da([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

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

    :goto_a
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

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

    :goto_c
    iget-object v4, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x18

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    sget v0, Lcom/a;->ba:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lcom/a;->da(Landroid/preference/EditTextPreference;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "-1"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_14
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_16
    iget-object p1, p0, Ljly;->i:Lkpg;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_1d
    const-string v0, "galley_key"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p2}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_21
    const v0, 0x1c

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_24
    iget-object v1, p0, Ljly;->i:Lkpg;

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

    :goto_25
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    const-string v1, "_"

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v1, Lkpg;->o:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_28
    goto/16 :goto_5a

    nop

    :goto_29
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v6, :cond_4

    nop

    nop

    goto/32 :goto_86

    nop

    :cond_4
    goto/32 :goto_76

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_2d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_b3

    nop

    :goto_30
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_31
    sget-object p1, Llyr;->aT:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v0, Landroid/preference/ListPreference;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_34
    const-string v1, "dev_setting_filter_key"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_35
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_7
    :goto_36
    goto/32 :goto_a9

    nop

    nop

    :goto_37
    invoke-virtual {p0, p2}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object p1, Llyr;->j:Llzh;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_3a
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_9
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3d
    instance-of v1, v0, Landroid/preference/EditTextPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v1, 0xa

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v2, ""

    nop

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

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v0}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_46
    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, v0}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_4a
    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v7, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4d
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_b
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_4e
    const v1, 0x7f140801

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4f
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

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

    nop

    :goto_51
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v6, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_53
    iget-object p1, p0, Ljly;->h:Ljava/util/HashMap;

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

    nop

    :goto_54
    check-cast v0, Landroid/preference/ListPreference;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_55
    const v1, 0x7f140580

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v0, Landroid/preference/EditTextPreference;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {p2, v0}, Lcom/a;->zc(Ljava/lang/Object;I)V

    :goto_58
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    :goto_5a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_5c
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5d
    check-cast v4, Landroid/preference/ListPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_5e
    if-nez v4, :cond_d

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_60
    instance-of v1, v0, Lcom/Fd;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v4, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_63
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p2, p0, Ljly;->i:Lkpg;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_66
    iget-object v4, p0, Ljly;->h:Ljava/util/HashMap;

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

    :goto_67
    sget-object v4, Llyr;->j:Llzh;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_68
    if-eqz v7, :cond_e

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v4, v3}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6b
    iget-object v4, v4, Llzh;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object p1, p0, Ljly;->b:Llvt;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_6e
    if-nez v4, :cond_f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_f
    goto/32 :goto_2e

    nop

    nop

    :goto_6f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_71
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0, v4}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_10
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_75
    iget-object v5, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_76
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_77
    if-ne v5, v0, :cond_11

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

    :cond_11
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p0, v6}, Ljly;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_79
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v7, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p1, p1, Lkpg;->m:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_7d
    if-ne v4, v2, :cond_12

    nop

    nop

    goto/32 :goto_ad

    nop

    :cond_12
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const-string v2, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7f
    const-string v0, "pref_category_custom_hotkeys"

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_2d

    nop

    :goto_81
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_82
    if-eqz v4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_c

    nop

    nop

    :goto_83
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, p0, Ljly;->h:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_a1

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v6, v3}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_89
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object p1, p1, Llze;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_8b
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_8c
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_8d
    iget-object p1, p1, Llzh;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_90
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_92
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u(Landroid/preference/PreferenceFragment;Llvt;Lkpg;)V

    :goto_93
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_94
    const v2, 0x7f140800

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :goto_96
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    if-lez v0, :cond_15

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_aa

    nop

    :goto_98
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_99
    iget-object v0, p0, Ljly;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_9a
    if-nez v7, :cond_16

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_9b
    check-cast p1, Landroid/preference/ListPreference;

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

    :goto_9c
    invoke-static {v0}, Lcom/a;->ab_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_9e
    if-le v3, v2, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_17
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

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

    :goto_a0
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-eqz p1, :cond_18

    nop

    nop

    goto/32 :goto_93

    nop

    :cond_18
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a3
    const v1, 0x7f140802

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_a4
    check-cast v5, Ljava/lang/String;

    nop

    nop

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

    :goto_a5
    if-nez v1, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_19
    goto/32 :goto_56

    nop

    nop

    :goto_a6
    invoke-virtual {v1}, Lhoh;->v()Ljava/util/Map;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast v1, Lhoh;

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p0}, Ljly;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_44

    nop

    :goto_ab
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_ac
    if-eq v4, v0, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_ad
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_af
    check-cast v0, Lcom/Fd;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_b0
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5f

    nop

    nop

    :goto_b1
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

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

    nop

    :goto_b2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast v6, Ljava/lang/String;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_b5
    check-cast v4, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_b6
    if-nez p2, :cond_1b

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_99

    nop

    nop

    :goto_b7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
