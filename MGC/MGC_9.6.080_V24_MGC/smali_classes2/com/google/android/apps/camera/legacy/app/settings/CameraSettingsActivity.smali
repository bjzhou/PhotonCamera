.class public Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;
.super Ljha;
.source "PG"


# static fields
.field public static final s:Lsdb;


# instance fields
.field private final t:Ljava/lang/Object;

.field public u:Ljly;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->s:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

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

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljha;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static t(Lmjv;Landroid/preference/Preference;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    instance-of v0, p1, Landroid/preference/TwoStatePreference;

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

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_9
    const v0, 0xf

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

    :goto_a
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    instance-of v0, p1, Landroid/preference/ListPreference;

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

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Landroid/preference/ListPreference;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    invoke-static {p0, v0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t(Lmjv;Landroid/preference/Preference;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Landroid/preference/PreferenceGroup;

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    if-lt v1, v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_1b
    const-string v1, "pref_category_developer"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    move-object v0, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v2, p0, v0, v1}, Ljlu;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Landroid/preference/TwoStatePreference;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_23

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    :goto_28
    new-instance v2, Ljlu;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_14

    nop

    nop

    :goto_2a
    goto/32 :goto_4

    nop

    nop

    :goto_2b
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2d
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static u(Landroid/preference/PreferenceFragment;Llvt;Lkpg;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Llze;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Llvt;->e:Ljava/lang/Object;

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

    :goto_8
    check-cast p0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Llyr;->aT:Llze;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    xor-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, p1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_d
    iget-object p2, p2, Lkpg;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    check-cast p2, Llyv;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    check-cast p1, Loyb;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p1

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

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lrss;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    iget-boolean p1, p1, Loyb;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Llyp;->a(Ljava/lang/String;)Llyp;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, v2, Lej;->j:Leb;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

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

    nop

    :goto_2
    const v0, 0x7f0b03ff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f0b04c0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Lej;->v()Ljava/lang/CharSequence;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_7
    iget-object v3, v3, Lep;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const-string p1, "pref_open_setting_page"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1b

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljly;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v3, v4, Leb;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Lmy;->setContentView(I)V

    goto/32 :goto_73

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ldt;->h()Ldk;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    const-string v0, "pref_screen_title"

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "pref_open_setting_page"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setTitle(I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v2, Lej;

    nop

    nop

    nop

    goto/32 :goto_67

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

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p1, "pref_make_setting_page_root"

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1c
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v3, v0, v4, v5}, Lep;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1e
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Z

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e()Ljip;

    move-result-object v2

    nop

    nop

    iget-object v3, v2, Ljip;->h:Ltur;

    nop

    nop

    invoke-interface {v3}, Ltur;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lpdf;

    nop

    nop

    iput-object v3, p0, Ljha;->o:Lpdf;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Ljip;->ak:Ltur;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltur;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lggp;

    nop

    nop

    iput-object v3, p0, Ljha;->r:Lggp;

    nop

    nop

    iget-object v3, v2, Ljip;->lj:Lfdo;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljpd;->c(Lfdo;)Ljow;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, p0, Ljha;->p:Ljow;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Ljip;->b:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ltur;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lprb;

    nop

    nop

    iput-object v2, p0, Ljha;->q:Lprb;

    nop

    nop

    nop

    iput-boolean v1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Z

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    goto/16 :goto_72

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v4, :cond_2

    nop

    goto/32 :goto_54

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_20
    iget-object v0, v2, Lej;->j:Leb;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_40

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v4, Ljly;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_25
    const-string v3, "list_pref_extra"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    if-ne v3, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v4, "pref_make_setting_page_root"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ldk;->u()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    instance-of v4, v3, Lev;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    invoke-virtual {v0, p1}, Ldk;->i(Ljava/lang/CharSequence;)V

    :goto_2d
    goto/32 :goto_a

    nop

    nop

    :goto_2e
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Ldt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_32
    if-nez v0, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, p0}, Ljlv;-><init>(Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;)V

    goto/32 :goto_70

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_35
    const-string v1, "pref_screen_extra"

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v4}, Ljly;-><init>()V

    goto/32 :goto_38

    nop

    nop

    :goto_37
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_38
    iput-object v4, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljly;

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

    nop

    :goto_39
    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar;->B:Z

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v4, v1}, Landroid/os/Bundle;-><init>(I)V

    goto/32 :goto_35

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3c
    invoke-virtual {v3}, Ldk;->e()V

    :goto_3d
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljly;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object v4, v0, Leb;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_42
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_45

    nop

    :goto_43
    const p1, 0x7f0e013e

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_44
    const-string v0, "pref_screen_extra"

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_48
    const/4 v5, 0x0

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

    :goto_49
    if-eqz p1, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1, v4}, Ljly;->setArguments(Landroid/os/Bundle;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ldk;->s()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v3, v2, Lej;->k:Ldk;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4d
    invoke-static {p0}, Lrgs;->a(Landroid/app/Activity;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v3, :cond_7

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v1}, Ldk;->g(Z)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_76

    nop

    nop

    :goto_51
    instance-of v3, v3, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_52
    invoke-virtual {v2}, Lej;->b()Ldk;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_56
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

    nop

    :goto_57
    invoke-virtual {v2}, Lej;->f()V

    :goto_58
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5a
    goto :goto_58

    nop

    :goto_5b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v4, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5f
    new-instance v3, Lep;

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

    :goto_60
    new-instance v0, Ljlv;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v4, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_62
    iget-object v4, v2, Lej;->j:Leb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_63
    iput-object v4, v2, Lej;->l:Landroid/view/MenuInflater;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-boolean v3, v0, Landroid/support/v7/widget/Toolbar;->B:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_65
    const-string p1, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Ldt;->i()Ldv;

    move-result-object v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v3, v2, Lej;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Lmy;->j()Lng;

    move-result-object p1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_6a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

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

    nop

    nop

    :goto_6d
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const p1, 0x7f140520

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

    :goto_6f
    iput-object v4, v2, Lej;->k:Ldk;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1, v0}, Lng;->b(Lna;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    throw p0

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_74
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->u()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const v0, 0x3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_76
    const-string p1, "list_pref_extra"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_77
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

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

    :goto_79
    invoke-super {p0, p1}, Ljha;->onCreate(Landroid/os/Bundle;)V

    goto/32 :goto_4d

    nop

    nop
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    and-int/2addr p1, v0

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

    nop

    :goto_4
    const v0, 0x1b

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v0, 0x102002c

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljpy;->finish()V

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x2000000

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    :goto_b
    const/4 p1, -0x1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setResult(I)V

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    if-eq p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    if-eq p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    array-length p1, p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    aget v0, p3, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x1

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

    :goto_8
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljly;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto :goto_10

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    sget p1, Ljly;->c:I

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

    :goto_f
    invoke-virtual {p0}, Ljly;->a()V

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    if-lt p2, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1, p2, p3}, Ljha;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
