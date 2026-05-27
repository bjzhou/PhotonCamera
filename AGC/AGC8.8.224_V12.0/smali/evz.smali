.class public final Levz;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

.field public b:Lgue;

.field private d:Lewa;

.field private e:Ljava/lang/String;

.field private f:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

.field private g:Ljuf;

.field private final h:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Levz;->h:Ljava/util/HashMap;

    return-void
.end method

.method private final c(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;
    .locals 3

    instance-of v0, p1, Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/preference/PreferenceScreen;

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Levz;->c(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private final d(Landroid/preference/PreferenceGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1}, Levz;->d(Landroid/preference/PreferenceGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final e(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to remove preference :%s"

    const/16 v2, 0x7d4

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_1
    return-void
.end method

.method private final f(Landroid/preference/PreferenceScreen;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_screen_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "pref_screen_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private final g(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    instance-of v0, p1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p1}, Levz;->f(Landroid/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Levz;->b:Lgue;

    iget-object v0, v0, Lgue;->j:Ljava/lang/Object;

    sget-object v1, Lgzd;->b:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    check-cast v0, Lgzi;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgzi;->l(Ljava/lang/String;Z)V

    iget-object v0, p0, Levz;->a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public final b()Z
    .locals 2

    invoke-virtual {p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Levz;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Levz;->c(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Levz;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "pref_category_resolution_camera"

    invoke-virtual {p0, v0}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Levz;->d(Landroid/preference/PreferenceGroup;)V

    const-string v0, "pref_category_resolution_video"

    invoke-virtual {p0, v0}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v0}, Levz;->d(Landroid/preference/PreferenceGroup;)V

    iget-object v0, p0, Levz;->d:Lewa;

    iget-object v0, v0, Lewa;->j:Ljava/lang/Object;

    const-string v1, "pref_category_custom_hotkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Levz;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lesy;

    invoke-interface {v1}, Lesy;->f()Lerw;

    move-result-object v1

    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    iput-object v2, v0, Levz;->g:Ljuf;

    new-instance v2, Lcvr;

    invoke-virtual/range {p0 .. p0}, Levz;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcvr;-><init>(Landroid/content/Context;[B)V

    invoke-interface {v1, v2}, Lerw;->j(Lcvr;)Lewb;

    move-result-object v1

    invoke-interface {v1}, Lewb;->a()Lewa;

    move-result-object v2

    iput-object v2, v0, Levz;->d:Lewa;

    new-instance v2, Lgue;

    check-cast v1, Lesj;

    iget-object v3, v1, Lesj;->a:Lesh;

    iget-object v3, v3, Lesh;->hT:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/NumberFormat;

    new-instance v6, Ldmh;

    iget-object v3, v1, Lesj;->f:Lcvr;

    invoke-static {v3}, Ldwh;->b(Lcvr;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->f:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldhi;

    invoke-direct {v6, v3, v5}, Ldmh;-><init>(Landroid/content/Context;Ldhi;)V

    new-instance v3, Lhgc;

    iget-object v5, v1, Lesj;->f:Lcvr;

    invoke-static {v5}, Ldwh;->b(Lcvr;)Landroid/content/Context;

    move-result-object v8

    iget-object v5, v1, Lesj;->a:Lesh;

    invoke-virtual {v5}, Lesh;->n()Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->t:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lgzi;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->D:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lgzm;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->D:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lgzn;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->gf:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lhgd;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->r:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lfbz;

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lhgc;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lgzi;Lgzm;Lgzn;Lhgd;Lfbz;)V

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->r:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lfbz;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->cS:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljwb;

    new-instance v10, Ldja;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v7, v5, Lesh;->hU:Lgxb;

    iget-object v7, v7, Lgxb;->a:Ljava/lang/Object;

    iget-object v5, v5, Lesh;->bN:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljwb;

    iget-object v11, v1, Lesj;->a:Lesh;

    iget-object v11, v11, Lesh;->r:Loiw;

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfbz;

    iget-object v12, v1, Lesj;->a:Lesh;

    iget-object v12, v12, Lesh;->f:Loiw;

    invoke-interface {v12}, Loiw;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldhi;

    check-cast v7, Landroid/content/Context;

    invoke-direct {v10, v7, v5, v11, v12}, Ldja;-><init>(Landroid/content/Context;Ljwb;Lfbz;Ldhi;)V

    new-instance v11, Lhlq;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->cS:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljwb;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->fA:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Ljwb;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->aq:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljwb;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->go:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lgzw;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->gm:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ldja;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->D:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lgzm;

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->D:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Lgzn;

    invoke-static/range {v12 .. v18}, Lgoq;->d(Ljwb;Ljwb;Ljwb;Lgzw;Ldja;Lgzm;Lgzn;)Llij;

    move-result-object v14

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->dO:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lhlw;

    new-instance v5, Ldqx;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->cS:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Ljwb;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->fA:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Ljwb;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->go:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Lgzw;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->gm:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v7

    check-cast v20, Ldja;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->D:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v7

    check-cast v21, Lgzm;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v24}, Ldqx;-><init>(Ljwb;Ljwb;Lgzw;Ldja;Lgzm;[B[B[B)V

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->g:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->l:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v18, v7

    check-cast v18, Ljuh;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->r:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v19, v7

    check-cast v19, Lfbz;

    iget-object v7, v1, Lesj;->a:Lesh;

    iget-object v7, v7, Lesh;->f:Loiw;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldhi;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v11

    invoke-direct/range {v13 .. v23}, Lhlq;-><init>(Llij;Lhlw;Ldqx;Ljava/util/concurrent/ScheduledExecutorService;Ljuh;Lfbz;[B[B[B[B)V

    iget-object v5, v1, Lesj;->b:Loiw;

    invoke-static {v5}, Logj;->a(Loiw;)Logd;

    move-result-object v12

    iget-object v5, v1, Lesj;->a:Lesh;

    iget-object v5, v5, Lesh;->t:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lgzi;

    iget-object v5, v1, Lesj;->a:Lesh;

    invoke-virtual {v5}, Lesh;->m()Lmqp;

    move-result-object v14

    iget-object v5, v1, Lesj;->c:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lmqp;

    iget-object v5, v1, Lesj;->d:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lmqp;

    iget-object v1, v1, Lesj;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lmqp;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v5, v2

    move-object v7, v3

    invoke-direct/range {v5 .. v19}, Lgue;-><init>(Ldmh;Lhgc;Lfbz;Ljwb;Ldja;Lhlq;Logd;Lgzi;Lmqp;Lmqp;Lmqp;Lmqp;[B[B)V

    iput-object v2, v0, Levz;->b:Lgue;

    iget-object v1, v0, Levz;->d:Lewa;

    invoke-virtual/range {p0 .. p0}, Levz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lewa;->a(Landroid/content/Context;)V

    iget-object v1, v0, Levz;->d:Lewa;

    iget-object v1, v1, Lewa;->j:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Levz;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "pref_screen_extra"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Levz;->e:Ljava/lang/String;

    :cond_0
    const v3, 0x7f180001

    invoke-virtual {v0, v3}, Levz;->addPreferencesFromResource(I)V

    invoke-static {v0}, Lcom/agc/Preference;->updatePreference(Landroid/preference/PreferenceFragment;)V

    const-string v3, "prefscreen_top"

    invoke-virtual {v0, v3}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iget-object v6, v0, Levz;->d:Lewa;

    iget-object v6, v6, Lewa;->f:Ljava/lang/Object;

    check-cast v6, Lmza;

    invoke-virtual {v6}, Lmza;->cz()Lnac;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhag;

    new-instance v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lhag;->b()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v7}, Lhag;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    invoke-virtual {v7}, Lhag;->a()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    const v10, 0x7f0e00bc

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v7}, Lhag;->a()I

    move-result v8

    if-gez v8, :cond_2

    const-string v8, "pref_category_general"

    invoke-virtual {v0, v8}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setLayoutResource(I)V

    :cond_2
    invoke-virtual {v7}, Lhag;->d()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhah;

    new-instance v10, Landroid/preference/Preference;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lhah;->b()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    invoke-virtual {v8}, Lhah;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8}, Lhah;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Lhah;->a()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setIcon(I)V

    invoke-virtual {v8}, Lhah;->c()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_3
    const v8, 0x7f0e00d2

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    iget-object v5, v0, Levz;->d:Lewa;

    iget-object v5, v5, Lewa;->i:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkad;

    iget-object v7, v0, Levz;->g:Ljuf;

    invoke-virtual {v7, v6}, Ljuf;->d(Lkad;)V

    goto :goto_1

    :cond_5
    const-string v5, "pref_audio_zoom_key"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_6

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    new-instance v6, Levv;

    invoke-direct {v6, v0, v5, v7}, Levv;-><init>(Levz;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;I)V

    iput-object v6, v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_6
    const-string v5, "pref_camera_enable_iris"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    const v6, 0x7f1403dd

    invoke-virtual {v0, v6}, Levz;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    sget-object v5, Lgzd;->l:Lgzr;

    iget-object v5, v5, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    sget-object v5, Lgzd;->l:Lgzr;

    iget-object v5, v5, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    const v6, 0x7f1403c3

    invoke-virtual {v0, v6}, Levz;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    sget-object v5, Lgzd;->b:Lgzr;

    iget-object v5, v5, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iput-object v5, v0, Levz;->a:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    new-instance v6, Levx;

    const/4 v9, 0x0

    invoke-direct {v6, v0, v9}, Levx;-><init>(Levz;I)V

    iput-object v6, v5, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v6}, Levz;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v5, "pref_category_developer"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iget-object v6, v0, Levz;->b:Lgue;

    iget-object v6, v6, Lgue;->b:Ljava/lang/Object;

    check-cast v6, Ldmh;

    invoke-virtual {v6, v5}, Ldmh;->a(Landroid/preference/PreferenceScreen;)V

    :cond_a
    const-string v5, "pref_category_social_share"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v11, -0x1

    if-nez v6, :cond_d

    iget-object v6, v0, Levz;->e:Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_d

    iget-object v6, v0, Levz;->b:Lgue;

    iget-object v6, v6, Lgue;->c:Ljava/lang/Object;

    check-cast v6, Lhgc;

    iput-object v5, v6, Lhgc;->m:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Lhgc;->e()V

    sget-object v12, Lgzd;->P:Lgzr;

    iget-object v12, v12, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    const/4 v13, 0x3

    if-eqz v12, :cond_b

    iget-object v14, v6, Lhgc;->d:Lgzm;

    sget-object v15, Lgzd;->P:Lgzr;

    invoke-interface {v14, v15}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v6, v14}, Lhgc;->d(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v15, v6, Lhgc;->a:Landroid/content/Context;

    const v4, 0x7f04016d

    invoke-static {v15, v4, v11}, Lkwp;->m(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iput-object v15, v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->g:Ljava/lang/Integer;

    new-instance v15, Landroid/content/res/ColorStateList;

    new-array v11, v7, [[I

    const v17, -0x10100a0

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v18

    aput-object v18, v11, v9

    const v18, 0x10100a0

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v19

    aput-object v19, v11, v8

    filled-new-array {v4, v4}, [I

    move-result-object v10

    invoke-direct {v15, v11, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v15, v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->d:Landroid/content/res/ColorStateList;

    new-instance v10, Landroid/content/res/ColorStateList;

    new-array v11, v7, [[I

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v15

    aput-object v15, v11, v9

    filled-new-array/range {v18 .. v18}, [I

    move-result-object v15

    aput-object v15, v11, v8

    filled-new-array {v4, v4}, [I

    move-result-object v4

    invoke-direct {v10, v11, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v10, v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Lhgc;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->f:Ljava/lang/Integer;

    invoke-virtual {v12, v14}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    new-instance v4, Levv;

    invoke-direct {v4, v6, v12, v13}, Levv;-><init>(Lhgc;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;I)V

    iput-object v4, v12, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_b
    const-string v4, "key_social_share_info"

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_c

    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const v11, 0x7f120007

    invoke-static {v11, v13, v10}, Ljpw;->i(II[Ljava/lang/Object;)Ligf;

    move-result-object v10

    iget-object v11, v6, Lhgc;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-interface {v10, v11}, Ligf;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {v6}, Lhgc;->c()Lnou;

    move-result-object v4

    new-instance v10, Leth;

    const/16 v11, 0x14

    invoke-direct {v10, v6, v11}, Leth;-><init>(Lhgc;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v11

    invoke-static {v4, v10, v11}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v10, Lcnb;

    const/4 v11, 0x5

    invoke-direct {v10, v6, v4, v11}, Lcnb;-><init>(Lhgc;Lnou;I)V

    iget-object v4, v6, Lhgc;->b:Ljava/util/concurrent/Executor;

    invoke-static {v10, v4}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v10, Ldvo;

    const/16 v11, 0x8

    invoke-direct {v10, v6, v5, v11}, Ldvo;-><init>(Lhgc;Landroid/preference/PreferenceScreen;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-static {v4, v10, v5}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    :cond_d
    const-string v4, "pref_category_frequent_faces"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iget-object v5, v0, Levz;->b:Lgue;

    iget-object v5, v5, Lgue;->d:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v10, "key_ff_opt_in"

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-eqz v4, :cond_e

    check-cast v5, Ldja;

    iget-object v10, v5, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v10}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    new-instance v10, Levx;

    const/4 v11, 0x0

    invoke-direct {v10, v5, v8, v11, v11}, Levx;-><init>(Ldja;I[B[B)V

    iput-object v10, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    iget-object v5, v5, Ldja;->a:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f1401c0

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ldrh;

    const/16 v11, 0xb

    invoke-direct {v10, v6, v11}, Ldrh;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v4, v5, v10}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_e
    const-string v4, "pref_category_storage"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    new-instance v5, Ldmg;

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Ldmg;-><init>(Levz;I)V

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v5, v0, Levz;->b:Lgue;

    iget-object v5, v5, Lgue;->f:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v10, "pref_storage_status"

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    check-cast v5, Lhlq;

    iput-object v10, v5, Lhlq;->d:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    iget-object v10, v5, Lhlq;->d:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    const v11, 0x7f0e00c9

    invoke-virtual {v10, v11}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->setLayoutResource(I)V

    sget-object v10, Lgzd;->V:Lgzr;

    iget-object v10, v10, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    sget-object v11, Lgzd;->W:Lgzr;

    iget-object v11, v11, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    const v14, 0x7f140415

    invoke-virtual {v12, v14, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->isChecked()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    new-instance v12, Lhlp;

    invoke-direct {v12, v5, v11, v10}, Lhlp;-><init>(Lhlq;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;)V

    iput-object v12, v10, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f140495

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lhlm;

    invoke-direct {v12, v6}, Lhlm;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->j:Ljava/lang/String;

    iput-object v12, v10, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->l:Landroid/view/View;

    const-string v10, "pref_free_up_space"

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v10, Ldmg;

    const/4 v11, 0x5

    invoke-direct {v10, v6, v11}, Ldmg;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, v5, Lhlq;->f:Lhlw;

    iget-object v6, v5, Lhlq;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v4, v6}, Lhlw;->b(Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v6, Ldje;

    const/16 v10, 0xf

    invoke-direct {v6, v5, v10}, Ldje;-><init>(Lhlq;I)V

    iget-object v5, v5, Lhlq;->b:Ljuh;

    invoke-static {v4, v6, v5}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_f
    sget-object v4, Lgzd;->m:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Lgzd;->m:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    new-instance v5, Lhu;

    const/16 v6, 0x10

    invoke-direct {v5, v0, v6}, Lhu;-><init>(Levz;I)V

    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->m:Landroid/view/View$OnClickListener;

    :cond_10
    const-string v4, "pref_chameleon_control_key"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    new-instance v5, Lhu;

    const/16 v6, 0x11

    invoke-direct {v5, v0, v6}, Lhu;-><init>(Levz;I)V

    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->m:Landroid/view/View$OnClickListener;

    :cond_11
    sget-object v4, Lgzd;->n:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lgzd;->n:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    new-instance v5, Lhu;

    const/16 v6, 0x12

    invoke-direct {v5, v0, v6}, Lhu;-><init>(Levz;I)V

    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->m:Landroid/view/View$OnClickListener;

    :cond_12
    const-string v4, "pref_category_advanced"

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-gtz v6, :cond_13

    invoke-direct {v0, v4}, Levz;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_13
    const-string v4, "pref_camera_raw_output_option_available_key"

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-eqz v4, :cond_14

    iget-object v5, v0, Levz;->d:Lewa;

    iget-object v5, v5, Lewa;->a:Ljava/lang/Object;

    sget-object v6, Ldho;->a:Ldhk;

    invoke-interface {v5}, Ldhi;->e()V

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.FROM_STORAGE"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x7f14041d

    invoke-virtual {v0, v6}, Levz;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Levy;

    invoke-direct {v8, v0, v5, v9}, Levy;-><init>(Levz;Landroid/content/Intent;I)V

    invoke-virtual {v4, v6, v8}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->b(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v5, Levx;

    invoke-direct {v5, v0, v7}, Levx;-><init>(Levz;I)V

    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->c:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_14
    :goto_3
    sget-object v4, Lgzd;->A:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    sget-object v4, Lgzd;->A:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iput-object v4, v0, Levz;->f:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    :cond_15
    iget-object v4, v0, Levz;->b:Lgue;

    iget-object v4, v4, Lgue;->a:Ljava/lang/Object;

    const-string v5, "pref_camera_kepler_enabled_key"

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    check-cast v4, Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0, v5}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgmf;

    const v5, 0x7f140412

    invoke-virtual {v1, v5}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(I)V

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgmf;

    const v4, 0x7f140411

    invoke-virtual {v1, v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setSummary(I)V

    :cond_16
    if-eqz v2, :cond_1b

    const-string v1, "pref_open_setting_page"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0, v3}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v9, v5, :cond_18

    invoke-interface {v4, v9}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    move v13, v9

    goto :goto_5

    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_18
    const/4 v13, -0x1

    :goto_5
    const/4 v1, -0x1

    if-eq v13, v1, :cond_1a

    check-cast v3, Landroid/preference/PreferenceScreen;

    invoke-direct {v0, v3}, Levz;->f(Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_19

    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_19
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1a
    const-string v1, "pref_make_setting_page_root"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1b
    iget-object v1, v0, Levz;->d:Lewa;

    iget-object v1, v1, Lewa;->n:Ljava/lang/Object;

    invoke-interface {v1}, Lmxy;->r()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    move-object v5, v1

    check-cast v5, Lmsy;

    invoke-virtual {v5, v3}, Lmsy;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_1d

    sget-object v6, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t:Lnak;

    invoke-virtual {v6}, Lnaf;->c()Lnaz;

    move-result-object v6

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v7, "Could not add %s"

    const/16 v8, 0x7d3

    invoke-static {v6, v7, v5, v8}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    goto :goto_6

    :cond_1d
    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    goto :goto_6

    :cond_1e
    iget-object v1, v0, Levz;->d:Lewa;

    iget-object v1, v1, Lewa;->k:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lidb;

    if-eqz v2, :cond_1f

    iget-object v3, v0, Levz;->b:Lgue;

    new-instance v4, Lcwd;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Lcwd;-><init>(Lgue;I[B)V

    invoke-interface {v2, v4}, Lidb;->a(Ljava/util/function/Function;)V

    goto :goto_7

    :cond_1f
    const/4 v6, 0x0

    goto :goto_7

    :cond_20
    iget-object v1, v0, Levz;->b:Lgue;

    iget-object v1, v1, Lgue;->l:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->q(Lfbz;Landroid/preference/Preference;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    iget-object v0, p0, Levz;->g:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 12

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Levz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "pref_category_advanced"

    invoke-direct {p0, v1}, Levz;->g(Ljava/lang/String;)V

    const-string v1, "pref_category_gestures"

    invoke-direct {p0, v1}, Levz;->g(Ljava/lang/String;)V

    const-string v2, "pref_category_developer"

    invoke-direct {p0, v2}, Levz;->g(Ljava/lang/String;)V

    const-string v2, "pref_category_social_share"

    invoke-direct {p0, v2}, Levz;->g(Ljava/lang/String;)V

    const-string v3, "pref_category_frequent_faces"

    invoke-direct {p0, v3}, Levz;->g(Ljava/lang/String;)V

    const-string v4, "pref_category_storage"

    invoke-direct {p0, v4}, Levz;->g(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    iget-object v8, p0, Levz;->b:Lgue;

    iget-object v8, v8, Lgue;->c:Ljava/lang/Object;

    check-cast v8, Lhgc;

    invoke-virtual {v8}, Lhgc;->e()V

    iget-object v9, v8, Lhgc;->d:Lgzm;

    sget-object v10, Lgzd;->P:Lgzr;

    invoke-interface {v9, v10}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lhgc;->c()Lnou;

    move-result-object v9

    new-instance v10, Lhga;

    invoke-direct {v10, v8, v5}, Lhga;-><init>(Lhgc;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v9

    new-instance v10, Lhga;

    invoke-direct {v10, v8, v7}, Lhga;-><init>(Lhgc;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v8

    invoke-static {v9, v10, v8}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v8

    goto :goto_0

    :cond_0
    iget-object v8, v8, Lhgc;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1404ab

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v8

    :goto_0
    new-instance v9, Leth;

    invoke-direct {v9, v2, v6}, Leth;-><init>(Landroid/preference/PreferenceScreen;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v8, v9, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    :cond_1
    invoke-virtual {p0, v3}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_3

    iget-object v3, p0, Levz;->b:Lgue;

    iget-object v3, v3, Lgue;->d:Ljava/lang/Object;

    check-cast v3, Ldja;

    iget-object v8, v3, Ldja;->a:Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v3, v3, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v7, v3, :cond_2

    const v3, 0x7f1401c1

    goto :goto_1

    :cond_2
    const v3, 0x7f1401c2

    :goto_1
    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, p0, Levz;->d:Lewa;

    iget-object v2, v2, Lewa;->j:Ljava/lang/Object;

    const-string v3, "pref_category_custom_hotkeys"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v3}, Levz;->g(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sget-object v2, Lgzd;->h:Lgzu;

    iget-object v2, v2, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f1403f7

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f1403cb

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    const v3, 0x7f14040b

    invoke-virtual {v2, v3, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f140413

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f140409

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f140422

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    sget-object v1, Lgzd;->d:Lgzs;

    iget-object v1, v1, Lgzs;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v2, Levx;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Levx;-><init>(Levz;I)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "pref_launch_help"

    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Ldmg;

    invoke-direct {v2, v0, v6}, Ldmg;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "pref_launch_feedback"

    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Ldmg;

    invoke-direct {v2, v0, v3}, Ldmg;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    const-string v0, "pref_category_resolution_camera"

    invoke-virtual {p0, v0}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_a

    const-string v1, "pref_camera_resolution"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "pref_camera_selfie_mirror_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    sget-object v3, Lgzd;->o:Lgzr;

    iget-object v3, v3, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_a
    invoke-virtual {p0}, Levz;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Levz;->b()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Levz;->a()V

    :cond_b
    iget-object v0, p0, Levz;->f:Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v7}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setEnabled(Z)V

    :cond_c
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    invoke-static {p0, p1, p2}, Lcom/agc/Preference;->onSharedPreferenceChanged(Landroid/preference/PreferenceFragment;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iget-object p1, p0, Levz;->d:Lewa;

    iget-object p1, p1, Lewa;->j:Ljava/lang/Object;

    const-string v0, "pref_category_custom_hotkeys"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x19

    const v1, 0x7f14043d

    const/16 v2, 0x18

    const-string v3, "-1"

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_0

    if-ne v4, v0, :cond_1

    :cond_0
    sget-object v4, Lgzd;->j:Lgzu;

    iget-object v4, v4, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    invoke-virtual {v6, v3}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    sget-object p1, Lgzd;->j:Lgzu;

    iget-object p1, p1, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Levz;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v0, :cond_6

    if-ne v4, v2, :cond_5

    :cond_6
    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Levz;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p2, p0, Levz;->h:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_8
    return-void
.end method
