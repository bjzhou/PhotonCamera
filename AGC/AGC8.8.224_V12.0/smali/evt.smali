.class public final Levt;
.super Laof;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public ae:Levu;

.field public af:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

.field private ag:Ljava/lang/String;

.field private ah:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

.field private ai:Ljuf;

.field private final aj:Ljava/util/HashMap;

.field private ak:Lgkf;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Laof;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Levt;->aj:Ljava/util/HashMap;

    return-void
.end method

.method private final E(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceScreen;
    .locals 3

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/preference/PreferenceScreen;

    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->k()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->o(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v2, v0, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_3

    check-cast v0, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Levt;->E(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceScreen;

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

.method private final F(Landroidx/preference/PreferenceGroup;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->k()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->o(I)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v1}, Levt;->F(Landroidx/preference/PreferenceGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final G(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/preference/Preference;->D:Landroidx/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->aj(Landroidx/preference/Preference;)Z

    move-result v0

    invoke-virtual {v1}, Landroidx/preference/Preference;->C()V

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraMaterialSettingsActivity;->q:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to remove preference :%s"

    const/16 v2, 0x7c8

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_1
    return-void
.end method

.method private final H(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    instance-of v0, p1, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/preference/PreferenceScreen;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/google/android/apps/camera/legacy/app/settings/CameraMaterialSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    const-string v2, "pref_screen_extra"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Landroidx/preference/Preference;->q:Ljava/lang/CharSequence;

    const-string v2, "pref_screen_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iput-object v0, p1, Landroidx/preference/Preference;->s:Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    iget-object v0, p0, Levt;->ae:Levu;

    iget-object v0, v0, Levu;->j:Lgzi;

    sget-object v1, Lgzd;->b:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgzi;->l(Ljava/lang/String;Z)V

    iget-object v0, p0, Levt;->af:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->k(Z)V

    return-void
.end method

.method public final D()Z
    .locals 2

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lbz;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lbz;->checkSelfPermission(Ljava/lang/String;)I

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

.method public final c()Landroidx/preference/PreferenceScreen;
    .locals 4

    iget-object v0, p0, Laof;->a:Laoo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Laoo;->b:Landroidx/preference/PreferenceScreen;

    :goto_0
    iget-object v1, p0, Levt;->ag:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v1}, Levt;->E(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Levt;->ag:Ljava/lang/String;

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

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "pref_category_resolution_camera"

    invoke-virtual {p0, v0}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Levt;->F(Landroidx/preference/PreferenceGroup;)V

    :cond_0
    const-string v0, "pref_category_resolution_video"

    invoke-virtual {p0, v0}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Levt;->F(Landroidx/preference/PreferenceGroup;)V

    :cond_1
    iget-object v0, p0, Levt;->ak:Lgkf;

    iget-object v0, v0, Lgkf;->i:Ljava/lang/Object;

    const-string v1, "pref_category_custom_hotkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->k()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->o(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v4, v2, Landroidx/preference/Preference;->r:Ljava/lang/String;

    const-string v5, "-1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Levt;->aj:Ljava/util/HashMap;

    iget-object v5, v2, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Levt;->aj:Ljava/util/HashMap;

    iget-object v2, v2, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Laof;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 40

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Laof;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_3e

    if-nez v2, :cond_0

    goto/16 :goto_e

    :cond_0
    invoke-virtual {v0}, Lbz;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lesy;

    invoke-interface {v3}, Lesy;->f()Lerw;

    move-result-object v3

    new-instance v4, Ljuf;

    invoke-direct {v4}, Ljuf;-><init>()V

    iput-object v4, v1, Levt;->ai:Ljuf;

    new-instance v4, Lcvr;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcvr;-><init>(Landroid/content/Context;[B)V

    check-cast v3, Lesh;

    iget-object v3, v3, Lesh;->a:Lesh;

    new-instance v7, Ldwh;

    const/4 v12, 0x5

    invoke-direct {v7, v4, v12, v5, v5}, Ldwh;-><init>(Lcvr;I[C[B)V

    iget-object v8, v3, Lesh;->D:Loiw;

    iget-object v9, v3, Lesh;->f:Loiw;

    new-instance v13, Letc;

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v11}, Letc;-><init>(Loiw;Loiw;Loiw;I[B)V

    new-instance v15, Leqv;

    const/4 v6, 0x6

    invoke-direct {v15, v4, v6, v5, v5}, Leqv;-><init>(Lcvr;I[C[B)V

    new-instance v6, Leqv;

    const/4 v7, 0x7

    invoke-direct {v6, v4, v7, v5, v5}, Leqv;-><init>(Lcvr;I[C[B)V

    iget-object v8, v3, Lesh;->l:Loiw;

    invoke-static {v15, v6, v8}, Lhhs;->d(Loiw;Loiw;Loiw;)Lhhs;

    move-result-object v8

    invoke-static {v8}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    invoke-static {v8}, Lhqq;->a(Loiw;)Lhqq;

    move-result-object v8

    invoke-static {v8}, Logj;->b(Loiw;)Loiw;

    move-result-object v19

    iget-object v14, v3, Lesh;->l:Loiw;

    iget-object v8, v3, Lesh;->r:Loiw;

    iget-object v9, v3, Lesh;->f:Loiw;

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-static/range {v14 .. v19}, Lhif;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lhif;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    invoke-static {v6}, Lihq;->a(Loiw;)Lihq;

    move-result-object v8

    invoke-static {v8}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    invoke-static {v8}, Lest;->c(Loiw;)Loiw;

    move-result-object v8

    iget-object v9, v3, Lesh;->f:Loiw;

    invoke-static {v8, v9}, Lird;->a(Loiw;Loiw;)Lird;

    move-result-object v8

    invoke-static {v8}, Logj;->b(Loiw;)Loiw;

    move-result-object v8

    iget-object v9, v3, Lesh;->e:Loiw;

    invoke-static {v9}, Lgnh;->c(Loiw;)Lgnh;

    move-result-object v9

    invoke-static {v9}, Logp;->a(Loiw;)Loiw;

    move-result-object v9

    invoke-static {v6, v9}, Lhst;->b(Loiw;Loiw;)Lhst;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    invoke-static {v6}, Lest;->c(Loiw;)Loiw;

    move-result-object v6

    iget-object v9, v3, Lesh;->f:Loiw;

    invoke-static {v6, v9}, Lhst;->a(Loiw;Loiw;)Lhst;

    move-result-object v6

    invoke-static {v6}, Logj;->b(Loiw;)Loiw;

    move-result-object v6

    iget-object v9, v3, Lesh;->av:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lklx;

    iget-object v9, v3, Lesh;->f:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Ldhi;

    iget-object v9, v3, Lesh;->gs:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Ljwb;

    iget-object v9, v3, Lesh;->cR:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Lgcg;

    iget-object v9, v3, Lesh;->l:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v19, v9

    check-cast v19, Ljuh;

    iget-object v9, v3, Lesh;->fY:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Lkgd;

    iget-object v9, v3, Lesh;->D:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Lgzn;

    invoke-virtual {v3}, Lesh;->l()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v22

    iget-object v9, v3, Lesh;->fF:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Ljwb;

    sget-object v25, Lmza;->a:Lmza;

    new-instance v9, Lgkf;

    const/16 v26, 0x0

    move-object v14, v9

    move-object/from16 v24, v25

    invoke-direct/range {v14 .. v26}, Lgkf;-><init>(Lklx;Ldhi;Ljwb;Lgcg;Ljuh;Lkgd;Lgzn;Landroid/view/accessibility/AccessibilityManager;Ljwb;Ljava/util/Set;Ljava/util/Set;[B)V

    iput-object v9, v1, Levt;->ak:Lgkf;

    iget-object v9, v3, Lesh;->hT:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/NumberFormat;

    iget-object v9, v4, Lcvr;->a:Ljava/lang/Object;

    iget-object v10, v3, Lesh;->f:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldhi;

    new-instance v10, Ldml;

    move-object v15, v10

    check-cast v9, Landroid/content/Context;

    invoke-direct {v10, v9}, Ldml;-><init>(Landroid/content/Context;)V

    iget-object v4, v4, Lcvr;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Lesh;->n()Ljava/util/concurrent/Executor;

    move-result-object v19

    iget-object v9, v3, Lesh;->t:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v20, v9

    check-cast v20, Lgzi;

    iget-object v9, v3, Lesh;->D:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Lgzm;

    iget-object v9, v3, Lesh;->D:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v22, v9

    check-cast v22, Lgzn;

    iget-object v9, v3, Lesh;->gf:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Lhgd;

    iget-object v9, v3, Lesh;->r:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v24, v9

    check-cast v24, Lfbz;

    new-instance v17, Lhfx;

    move-object/from16 v16, v17

    move-object/from16 v18, v4

    check-cast v18, Landroid/content/Context;

    invoke-direct/range {v17 .. v24}, Lhfx;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lgzi;Lgzm;Lgzn;Lhgd;Lfbz;)V

    sget-object v17, Lmza;->a:Lmza;

    iget-object v4, v3, Lesh;->r:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Lfbz;

    iget-object v4, v3, Lesh;->cS:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljwb;

    iget-object v4, v3, Lesh;->hU:Lgxb;

    iget-object v4, v4, Lgxb;->a:Ljava/lang/Object;

    iget-object v9, v3, Lesh;->bN:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljwb;

    iget-object v10, v3, Lesh;->r:Loiw;

    invoke-interface {v10}, Loiw;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfbz;

    iget-object v11, v3, Lesh;->f:Loiw;

    invoke-interface {v11}, Loiw;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldhi;

    new-instance v14, Lva;

    move-object/from16 v20, v14

    check-cast v4, Landroid/content/Context;

    invoke-direct {v14, v4, v9, v10, v11}, Lva;-><init>(Landroid/content/Context;Ljwb;Lfbz;Ldhi;)V

    iget-object v4, v3, Lesh;->cS:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Ljwb;

    iget-object v4, v3, Lesh;->fA:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Ljwb;

    iget-object v4, v3, Lesh;->aq:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Ljwb;

    iget-object v4, v3, Lesh;->go:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    check-cast v24, Lgzw;

    iget-object v4, v3, Lesh;->gm:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v25, v4

    check-cast v25, Ldja;

    iget-object v4, v3, Lesh;->D:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v26, v4

    check-cast v26, Lgzm;

    iget-object v4, v3, Lesh;->D:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v27, v4

    check-cast v27, Lgzn;

    invoke-static/range {v21 .. v27}, Lgoq;->d(Ljwb;Ljwb;Ljwb;Lgzw;Ldja;Lgzm;Lgzn;)Llij;

    move-result-object v29

    iget-object v4, v3, Lesh;->dO:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v30, v4

    check-cast v30, Lhlw;

    new-instance v4, Ldqx;

    iget-object v9, v3, Lesh;->cS:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v32, v9

    check-cast v32, Ljwb;

    iget-object v9, v3, Lesh;->fA:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v33, v9

    check-cast v33, Ljwb;

    iget-object v9, v3, Lesh;->go:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v34, v9

    check-cast v34, Lgzw;

    iget-object v9, v3, Lesh;->gm:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v35, v9

    check-cast v35, Ldja;

    iget-object v9, v3, Lesh;->D:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v36, v9

    check-cast v36, Lgzm;

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v31, v4

    invoke-direct/range {v31 .. v39}, Ldqx;-><init>(Ljwb;Ljwb;Lgzw;Ldja;Lgzm;[B[B[B)V

    iget-object v9, v3, Lesh;->g:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v32, v9

    check-cast v32, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, v3, Lesh;->l:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v33, v9

    check-cast v33, Ljuh;

    iget-object v9, v3, Lesh;->r:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v34, v9

    check-cast v34, Lfbz;

    new-instance v28, Lhli;

    move-object/from16 v21, v28

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-direct/range {v28 .. v38}, Lhli;-><init>(Llij;Lhlw;Ldqx;Ljava/util/concurrent/ScheduledExecutorService;Ljuh;Lfbz;[B[B[B[B)V

    invoke-static {v13}, Logj;->a(Loiw;)Logd;

    move-result-object v22

    iget-object v4, v3, Lesh;->t:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Lgzi;

    invoke-virtual {v3}, Lesh;->m()Lmqp;

    move-result-object v24

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmqp;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lmqp;

    new-instance v3, Levu;

    move-object v14, v3

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v14 .. v30}, Levu;-><init>(Ldml;Lhfx;Ljava/util/Set;Lfbz;Ljwb;Lva;Lhli;Logd;Lgzi;Lmqp;Lmqp;[B[B[B[B[B)V

    iput-object v3, v1, Levt;->ae:Levu;

    iget-object v3, v1, Levt;->ak:Lgkf;

    invoke-static {}, Lklv;->values()[Lklv;

    move-result-object v4

    array-length v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-ge v9, v6, :cond_4

    aget-object v13, v4, v9

    iget-object v14, v3, Lgkf;->b:Ljava/lang/Object;

    check-cast v14, Lklx;

    invoke-virtual {v14, v13}, Lklx;->j(Lklv;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v3, Lgkf;->b:Ljava/lang/Object;

    check-cast v14, Lklx;

    invoke-virtual {v14, v13}, Lklx;->e(Lklv;)Lkll;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v3, Lgkf;->b:Ljava/lang/Object;

    check-cast v14, Lklx;

    invoke-virtual {v14, v13}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v13

    if-nez v10, :cond_2

    invoke-virtual {v13}, Lklw;->N()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v6, Ldhq;->Y:Ldhj;

    invoke-interface {v4, v6}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    const-string v5, "pref_camera_hdrplus_option_available_key"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v4, v3, Lgkf;->e:Ljava/lang/Object;

    iget-object v6, v3, Lgkf;->j:Ljava/lang/Object;

    new-instance v9, Leus;

    const/16 v13, 0x8

    invoke-direct {v9, v3, v13, v5}, Leus;-><init>(Lgkf;I[B)V

    iget-object v5, v3, Lgkf;->l:Ljava/lang/Object;

    invoke-interface {v6, v9, v5}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v5, Ldhy;->r:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    const-string v5, "pref_camera_raw_output_option_available_key"

    if-nez v4, :cond_6

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v6, Ldgv;->b:Ldhj;

    invoke-interface {v4, v6}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v6, Lgzd;->q:Lgzr;

    iget-object v6, v6, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v6, Ldgs;->a:Ldhk;

    invoke-interface {v4}, Ldhi;->d()V

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v6, Ldho;->bm:Ldhj;

    invoke-interface {v4, v6}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    const-string v6, "pref_camera_selfie_mirror_key"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ldhi;->g()V

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    const-string v6, "pref_category_developer"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_9

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v9, Lgzd;->A:Lgzr;

    iget-object v9, v9, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v9, Ldgu;->o:Ldhj;

    invoke-interface {v4, v9}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v3, Lgkf;->m:Ljava/lang/Object;

    check-cast v4, Lkgd;

    invoke-virtual {v4}, Lkgd;->d()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v9, Lgzd;->B:Lgzr;

    iget-object v9, v9, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v4, v3, Lgkf;->b:Ljava/lang/Object;

    check-cast v4, Lklx;

    invoke-virtual {v4}, Lklx;->i()Z

    move-result v4

    const v4, 0x1

    if-nez v4, :cond_c

    iget-object v4, v3, Lgkf;->f:Ljava/lang/Object;

    sget-object v9, Lgzd;->k:Lgzr;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v9, Lgzd;->k:Lgzr;

    iget-object v9, v9, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ldhi;->c()V

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    const-string v9, "pref_category_custom_hotkeys"

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v9, Ldho;->br:Ldhj;

    invoke-interface {v4, v9}, Ldhi;->l(Ldhj;)Z

    move-result v4

    const-string v9, "pref_camera_dynamic_depth_enabled_key"

    if-nez v4, :cond_d

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v10, Ldho;->bs:Ldhj;

    invoke-interface {v4, v10}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v10, Ldhf;->b:Ldhj;

    invoke-interface {v4, v10}, Ldhi;->l(Ldhj;)Z

    move-result v4

    const-string v10, "pref_category_frequent_faces"

    if-nez v4, :cond_e

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v13, Ldhq;->am:Ldhj;

    invoke-interface {v4, v13}, Ldhi;->l(Ldhj;)Z

    move-result v4

    const-string v13, "pref_camera_kepler_enabled_key"

    if-nez v4, :cond_f

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v14, Ldho;->bK:Ldhj;

    invoke-interface {v4, v14}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    const-string v14, "pref_camera_cd_indicator_enabled_key"

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v14, Ldho;->ci:Ldhj;

    invoke-interface {v4, v14}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v3, Lgkf;->o:Ljava/lang/Object;

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ldhi;->c()V

    :cond_11
    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v14, Lgzd;->m:Lgzr;

    iget-object v14, v14, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v4, v15, v14}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v4, v15, v14}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v14, Lgzd;->b:Lgzr;

    iget-object v14, v14, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v14, Ldho;->bc:Ldhj;

    invoke-interface {v4, v14}, Ldhi;->l(Ldhj;)Z

    move-result v4

    const-string v14, "pref_category_social_share"

    if-nez v4, :cond_15

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ldhi;->f()V

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v15, Lgzd;->l:Lgzr;

    iget-object v15, v15, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v15, Ldho;->X:Ldhj;

    invoke-interface {v4, v15}, Ldhi;->l(Ldhj;)Z

    move-result v4

    const-string v15, "pref_audio_zoom_key"

    if-nez v4, :cond_16

    iget-object v4, v3, Lgkf;->k:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v4, v12}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object v4, v3, Lgkf;->d:Ljava/lang/Object;

    const-string v12, "pref_camera_resolution"

    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgkf;->d:Ljava/lang/Object;

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgkf;->d:Ljava/lang/Object;

    sget-object v9, Lgzd;->B:Lgzr;

    iget-object v9, v9, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v9, Ldho;->bJ:Ldhj;

    invoke-interface {v4, v9}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v9, Ldhw;->q:Ldhj;

    invoke-interface {v4, v9}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    sget-object v9, Lgzd;->h:Lgzu;

    iget-object v9, v9, Lgzu;->a:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v4, v3, Lgkf;->a:Ljava/lang/Object;

    sget-object v9, Ldim;->a:Ldhj;

    invoke-interface {v4, v9}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v3, Lgkf;->i:Ljava/lang/Object;

    const-string v9, "pref_chameleon_control_key"

    :cond_18
    iget-object v4, v3, Lgkf;->g:Ljava/lang/Object;

    check-cast v4, Lmza;

    invoke-virtual {v4}, Lmza;->cz()Lnac;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v12, 0x3

    if-eqz v9, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhai;

    invoke-virtual {v9}, Lhai;->h()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v11, "PhotoResolution"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v7, Landroidx/preference/ListPreference;

    invoke-direct {v7, v2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lhai;->e()I

    move-result v11

    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->S(I)V

    invoke-virtual {v9}, Lhai;->a()I

    move-result v11

    iget-object v8, v7, Landroidx/preference/Preference;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    invoke-virtual {v9}, Lhai;->b()I

    move-result v8

    iget-object v11, v7, Landroidx/preference/Preference;->j:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/preference/ListPreference;->h:[Ljava/lang/CharSequence;

    invoke-virtual {v9}, Lhai;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->N(Ljava/lang/String;)V

    invoke-virtual {v9}, Lhai;->f()Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    invoke-virtual {v9}, Lhai;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->L(I)V

    invoke-virtual {v9}, Lhai;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->Q(I)V

    const v8, 0x7f0e00d2

    iput v8, v7, Landroidx/preference/Preference;->A:I

    invoke-virtual {v7, v12}, Landroidx/preference/Preference;->P(I)V

    iget-object v8, v3, Lgkf;->h:Ljava/lang/Object;

    check-cast v8, Lmst;

    const-string v9, "pref_category_resolution_camera"

    invoke-virtual {v8, v9, v7}, Lmst;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto :goto_4

    :cond_19
    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v11, 0x1

    goto :goto_4

    :cond_1a
    iget-object v4, v3, Lgkf;->c:Ljava/lang/Object;

    check-cast v4, Lmza;

    invoke-virtual {v4}, Lmza;->cz()Lnac;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "pref_category_advanced"

    if-eqz v7, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhaj;

    invoke-virtual {v7}, Lhaj;->e()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "Advanced"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    new-instance v9, Landroidx/preference/SwitchPreference;

    invoke-direct {v9, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lhaj;->b()I

    move-result v11

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->S(I)V

    invoke-virtual {v7}, Lhaj;->a()I

    move-result v11

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->Q(I)V

    invoke-virtual {v7}, Lhaj;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->N(Ljava/lang/String;)V

    invoke-virtual {v7}, Lhaj;->c()Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v9, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    new-instance v7, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    invoke-direct {v7, v2}, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v7, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    iget-object v11, v9, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->N(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroidx/preference/Preference;->m()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    iget-object v11, v9, Landroidx/preference/Preference;->q:Ljava/lang/CharSequence;

    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->T(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Landroidx/preference/Preference;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/preference/Preference;->M(Landroid/graphics/drawable/Drawable;)V

    iget-object v11, v9, Landroidx/preference/Preference;->n:Lant;

    iput-object v11, v7, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->e:Lant;

    iget v9, v9, Landroidx/preference/Preference;->p:I

    invoke-virtual {v7, v9}, Landroidx/preference/Preference;->P(I)V

    iget-object v9, v3, Lgkf;->h:Ljava/lang/Object;

    check-cast v9, Lmst;

    invoke-virtual {v9, v8, v7}, Lmst;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x3

    goto :goto_5

    :cond_1b
    const/4 v12, 0x3

    goto :goto_5

    :cond_1c
    iget-object v2, v3, Lgkf;->i:Ljava/lang/Object;

    iget-object v2, v1, Levt;->ak:Lgkf;

    iget-object v2, v2, Lgkf;->i:Ljava/lang/Object;

    iget-object v3, v1, Lbw;->l:Landroid/os/Bundle;

    if-eqz v3, :cond_1d

    const-string v4, "pref_screen_extra"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Levt;->ag:Ljava/lang/String;

    :cond_1d
    iget-object v4, v1, Laof;->a:Laoo;

    if-eqz v4, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v21

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Laoo;->f(Z)V

    sget v7, Laok;->a:I

    const-class v7, Landroidx/preference/Preference;

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    new-array v12, v9, [Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v18, 0x0

    aput-object v7, v12, v18

    const-class v7, Landroidx/preference/SwitchPreference;

    invoke-virtual {v7}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v12, v9

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v9, 0x7f180000

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object/from16 v20, v7

    move-object/from16 v23, v11

    move-object/from16 v24, v4

    move-object/from16 v25, v12

    :try_start_0
    invoke-static/range {v20 .. v25}, Laok;->a(Lorg/xmlpull/v1/XmlPullParser;Landroidx/preference/PreferenceGroup;Landroid/content/Context;[Ljava/lang/Object;Laoo;[Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    check-cast v9, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v9, v4}, Landroidx/preference/Preference;->E(Laoo;)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Laoo;->f(Z)V

    if-eqz v9, :cond_1f

    iget-object v4, v1, Laof;->a:Laoo;

    iget-object v7, v4, Laoo;->b:Landroidx/preference/PreferenceScreen;

    if-eq v9, v7, :cond_1f

    if-eqz v7, :cond_1e

    invoke-virtual {v7}, Landroidx/preference/Preference;->F()V

    :cond_1e
    iput-object v9, v4, Laoo;->b:Landroidx/preference/PreferenceScreen;

    const/4 v4, 0x1

    iput-boolean v4, v1, Laof;->c:Z

    iget-boolean v7, v1, Laof;->d:Z

    if-eqz v7, :cond_1f

    iget-object v7, v1, Laof;->ad:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, v1, Laof;->ad:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_1f
    const-string v4, "prefscreen_top"

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_22

    iget-object v7, v1, Levt;->ae:Levu;

    iget-object v7, v7, Levu;->c:Ljava/util/Set;

    check-cast v7, Lmza;

    invoke-virtual {v7}, Lmza;->cz()Lnac;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhag;

    new-instance v11, Landroidx/preference/PreferenceCategory;

    iget-object v12, v4, Landroidx/preference/Preference;->j:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lhag;->b()I

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->S(I)V

    invoke-virtual {v9}, Lhag;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->N(Ljava/lang/String;)V

    invoke-virtual {v9}, Lhag;->a()I

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->P(I)V

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroidx/preference/PreferenceGroup;->c:Z

    invoke-virtual {v4, v11}, Landroidx/preference/PreferenceGroup;->ak(Landroidx/preference/Preference;)V

    invoke-virtual {v9}, Lhag;->d()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lhah;

    move-object/from16 v20, v4

    new-instance v4, Landroidx/preference/Preference;

    move-object/from16 v21, v7

    iget-object v7, v11, Landroidx/preference/Preference;->j:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lhah;->b()I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->S(I)V

    invoke-virtual {v12}, Lhah;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->N(Ljava/lang/String;)V

    invoke-virtual {v12}, Lhah;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    invoke-virtual {v12}, Lhah;->a()I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->L(I)V

    invoke-virtual {v12}, Lhah;->c()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_20

    iput-object v7, v4, Landroidx/preference/Preference;->s:Landroid/content/Intent;

    :cond_20
    invoke-virtual {v11, v4}, Landroidx/preference/PreferenceGroup;->ak(Landroidx/preference/Preference;)V

    move-object/from16 v4, v20

    move-object/from16 v7, v21

    goto :goto_7

    :cond_21
    move-object/from16 v20, v4

    move-object/from16 v21, v7

    goto :goto_6

    :cond_22
    iget-object v4, v1, Levt;->ak:Lgkf;

    iget-object v4, v4, Lgkf;->e:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkad;

    iget-object v9, v1, Levt;->ai:Ljuf;

    invoke-virtual {v9, v7}, Ljuf;->d(Lkad;)V

    goto :goto_8

    :cond_23
    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v1, v15}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v4, :cond_24

    new-instance v7, Levq;

    const/4 v9, 0x2

    invoke-direct {v7, v1, v4, v9}, Levq;-><init>(Levt;Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;I)V

    iput-object v7, v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->e:Lant;

    :cond_24
    const-string v4, "pref_camera_enable_iris"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v4, :cond_25

    const v7, 0x7f1403dd

    invoke-virtual {v1, v7}, Lbw;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    :cond_25
    sget-object v4, Lgzd;->l:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    sget-object v4, Lgzd;->l:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v4, :cond_26

    const v7, 0x7f1403c3

    invoke-virtual {v1, v7}, Lbw;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    :cond_26
    sget-object v4, Lgzd;->b:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    iput-object v4, v1, Levt;->af:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    new-instance v7, Levs;

    const/4 v9, 0x0

    invoke-direct {v7, v1, v9}, Levs;-><init>(Levt;I)V

    iput-object v7, v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->e:Lant;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v1, v7}, Levt;->G(Ljava/lang/String;)V

    goto :goto_9

    :cond_27
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v1, v6}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_28

    iget-object v6, v1, Levt;->ae:Levu;

    iget-object v6, v6, Levu;->a:Ldml;

    invoke-virtual {v6, v4}, Ldml;->a(Landroidx/preference/PreferenceScreen;)V

    :cond_28
    invoke-interface {v2, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "image/*"

    if-nez v4, :cond_2d

    iget-object v4, v1, Levt;->ag:Ljava/lang/String;

    if-eqz v4, :cond_2d

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-virtual {v1, v14}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_2d

    iget-object v7, v1, Levt;->ae:Levu;

    iget-object v7, v7, Levu;->b:Lhfx;

    iput-object v4, v7, Lhfx;->m:Landroidx/preference/PreferenceScreen;

    iget-object v9, v7, Lhfx;->f:Lhgd;

    invoke-interface {v9}, Lhgd;->f()V

    iget-object v9, v7, Lhfx;->d:Lgzm;

    sget-object v11, Lgzd;->R:Lgzr;

    invoke-interface {v9, v11}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2a

    iget-object v9, v7, Lhfx;->d:Lgzm;

    sget-object v11, Lgzd;->S:Lgzr;

    invoke-interface {v9, v11}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2a

    iget-object v9, v7, Lhfx;->f:Lhgd;

    invoke-interface {v9, v6}, Lhgd;->j(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    iget-object v9, v7, Lhfx;->f:Lhgd;

    const-string v11, "video/*"

    invoke-interface {v9, v11}, Lhgd;->j(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    iget-object v9, v7, Lhfx;->e:Lgzn;

    sget-object v11, Lgzd;->P:Lgzr;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v11, v14}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    goto :goto_a

    :cond_29
    iget-object v9, v7, Lhfx;->e:Lgzn;

    sget-object v11, Lgzd;->P:Lgzr;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v9, v11, v14}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :goto_a
    iget-object v9, v7, Lhfx;->d:Lgzm;

    sget-object v11, Lgzd;->P:Lgzr;

    invoke-interface {v9, v11}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    :cond_2a
    sget-object v9, Lgzd;->P:Lgzr;

    iget-object v9, v9, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/camera/ui/preference/MaterialManagedMainSwitchPreference;

    if-eqz v9, :cond_2b

    new-instance v11, Levq;

    const/4 v12, 0x3

    invoke-direct {v11, v7, v9, v12}, Levq;-><init>(Lhfx;Lcom/google/android/apps/camera/ui/preference/MaterialManagedMainSwitchPreference;I)V

    iput-object v11, v9, Lcom/google/android/apps/camera/ui/preference/MaterialManagedMainSwitchPreference;->e:Lant;

    :cond_2b
    const-string v9, "key_social_share_top_intro"

    invoke-virtual {v4, v9}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_2c

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    const v14, 0x7f120007

    invoke-static {v14, v11, v12}, Ljpw;->i(II[Ljava/lang/Object;)Ligf;

    move-result-object v11

    iget-object v12, v7, Lhfx;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-interface {v11, v12}, Ligf;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/preference/Preference;->T(Ljava/lang/CharSequence;)V

    :cond_2c
    new-instance v9, Lcna;

    const/4 v11, 0x4

    invoke-direct {v9, v7, v11}, Lcna;-><init>(Lhfx;I)V

    iget-object v12, v7, Lhfx;->b:Ljava/util/concurrent/Executor;

    invoke-static {v9, v12}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v9

    new-instance v12, Leth;

    const/16 v14, 0x13

    invoke-direct {v12, v7, v14}, Leth;-><init>(Lhfx;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v14

    invoke-static {v9, v12, v14}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v9

    new-instance v12, Lcnb;

    invoke-direct {v12, v7, v9, v11}, Lcnb;-><init>(Lhfx;Lnou;I)V

    iget-object v9, v7, Lhfx;->b:Ljava/util/concurrent/Executor;

    invoke-static {v12, v9}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v9

    new-instance v11, Ldvo;

    const/4 v12, 0x7

    invoke-direct {v11, v7, v4, v12}, Ldvo;-><init>(Lhfx;Landroidx/preference/PreferenceScreen;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {v9, v11, v4}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    :cond_2d
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0xc

    if-nez v4, :cond_2e

    invoke-virtual {v1, v10}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_2e

    iget-object v9, v1, Levt;->ae:Levu;

    iget-object v9, v9, Levu;->k:Lva;

    const-string v10, "key_ff_opt_in"

    invoke-virtual {v4, v10}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v4, :cond_2e

    iget-object v10, v9, Lva;->a:Ljava/lang/Object;

    invoke-interface {v10}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4, v10}, Landroidx/preference/TwoStatePreference;->k(Z)V

    new-instance v10, Levs;

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v10

    move-object/from16 v28, v9

    invoke-direct/range {v27 .. v34}, Levs;-><init>(Lva;I[B[B[B[B[B)V

    iput-object v10, v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->e:Lant;

    iget-object v9, v9, Lva;->b:Ljava/lang/Object;

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1401c0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ldrh;

    invoke-direct {v10, v0, v7}, Ldrh;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v4, v9, v10}, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->ai(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_2e
    const-string v4, "pref_category_storage"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_31

    new-instance v9, Ldmj;

    const/4 v10, 0x2

    invoke-direct {v9, v1, v10}, Ldmj;-><init>(Levt;I)V

    iput-object v9, v4, Landroidx/preference/Preference;->o:Lanu;

    iget-object v9, v1, Levt;->ae:Levu;

    iget-object v9, v9, Levu;->d:Lhli;

    const-string v10, "pref_storage_status"

    invoke-virtual {v4, v10}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v9, Lhli;->d:Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;

    iget-object v10, v9, Lhli;->d:Lcom/google/android/apps/camera/ui/preference/MaterialStorageStatusPreference;

    const v11, 0x7f0e0083

    iput v11, v10, Landroidx/preference/Preference;->A:I

    sget-object v10, Lgzd;->V:Lgzr;

    iget-object v10, v10, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    sget-object v11, Lgzd;->W:Lgzr;

    iget-object v11, v11, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v11, :cond_2f

    if-eqz v10, :cond_2f

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v14, 0x0

    aput-object v16, v15, v14

    const v14, 0x7f140415

    invoke-virtual {v12, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    iget-boolean v12, v10, Landroidx/preference/TwoStatePreference;->a:Z

    invoke-virtual {v11, v12}, Landroidx/preference/Preference;->K(Z)V

    new-instance v12, Lhlh;

    invoke-direct {v12, v9, v11, v10}, Lhlh;-><init>(Lhli;Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;)V

    iput-object v12, v10, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->e:Lant;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f140495

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lhlm;

    invoke-direct {v12, v0}, Lhlm;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->g:Ljava/lang/String;

    iput-object v12, v10, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->h:Landroid/view/View;

    :cond_2f
    const-string v10, "pref_free_up_space"

    invoke-virtual {v4, v10}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_30

    new-instance v10, Ldmj;

    const/4 v11, 0x5

    invoke-direct {v10, v0, v11}, Ldmj;-><init>(Landroid/app/Activity;I)V

    iput-object v10, v4, Landroidx/preference/Preference;->o:Lanu;

    :cond_30
    iget-object v4, v9, Lhli;->f:Lhlw;

    iget-object v10, v9, Lhli;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v4, v10}, Lhlw;->b(Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v4

    new-instance v10, Ldje;

    const/16 v11, 0xe

    invoke-direct {v10, v9, v11}, Ldje;-><init>(Lhli;I)V

    iget-object v9, v9, Lhli;->b:Ljuh;

    invoke-static {v4, v10, v9}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_31
    sget-object v4, Lgzd;->m:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    sget-object v4, Lgzd;->m:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v4, :cond_32

    new-instance v9, Lhu;

    const/16 v10, 0xf

    invoke-direct {v9, v1, v10}, Lhu;-><init>(Levt;I)V

    iput-object v9, v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->i:Landroid/view/View$OnClickListener;

    :cond_32
    invoke-virtual {v1, v8}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceScreen;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->k()I

    move-result v9

    if-gtz v9, :cond_33

    invoke-direct {v1, v8}, Levt;->G(Ljava/lang/String;)V

    goto :goto_b

    :cond_33
    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v4, :cond_34

    iget-object v5, v1, Levt;->ak:Lgkf;

    iget-object v5, v5, Lgkf;->a:Ljava/lang/Object;

    invoke-interface {v5}, Ldhi;->e()V

    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.google.android.apps.photos"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.FROM_STORAGE"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v6, 0x7f14041d

    invoke-virtual {v1, v6}, Lbw;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Levy;

    invoke-direct {v8, v1, v5, v9}, Levy;-><init>(Levt;Landroid/content/Intent;I)V

    invoke-virtual {v4, v6, v8}, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->ai(Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v5, Levs;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Levs;-><init>(Levt;I)V

    iput-object v5, v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;->e:Lant;

    :cond_34
    :goto_b
    sget-object v4, Lgzd;->A:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    sget-object v4, Lgzd;->A:Lgzr;

    iget-object v4, v4, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v1, Levt;->ah:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    :cond_35
    iget-object v4, v1, Levt;->ae:Levu;

    iget-object v4, v4, Levu;->f:Lmqp;

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1, v13}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v2, :cond_36

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgmf;

    const v5, 0x7f140412

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->S(I)V

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgmf;

    const v4, 0x7f140411

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->Q(I)V

    :cond_36
    if-eqz v3, :cond_38

    const-string v2, "pref_open_setting_page"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v1, v2}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v1, v2}, Laof;->z(Landroidx/preference/Preference;)V

    :cond_37
    const-string v2, "pref_make_setting_page_root"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-virtual {v0}, Lbz;->finish()V

    :cond_38
    iget-object v0, v1, Levt;->ak:Lgkf;

    iget-object v0, v0, Lgkf;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lmxy;->r()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_39

    move-object v5, v0

    check-cast v5, Lmsy;

    invoke-virtual {v5, v3}, Lmsy;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->ak(Landroidx/preference/Preference;)V

    iget-object v5, v5, Landroidx/preference/Preference;->q:Ljava/lang/CharSequence;

    goto :goto_c

    :cond_3a
    iget-object v0, v1, Levt;->ak:Lgkf;

    iget-object v0, v0, Lgkf;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3b
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lidh;

    if-eqz v2, :cond_3b

    iget-object v3, v1, Levt;->ae:Levu;

    new-instance v4, Lcwd;

    invoke-direct {v4, v3, v7}, Lcwd;-><init>(Levu;I)V

    invoke-interface {v2, v4}, Lidh;->ag(Ljava/util/function/Function;)V

    goto :goto_d

    :cond_3c
    iget-object v0, v1, Levt;->ae:Levu;

    iget-object v0, v0, Levu;->h:Lfbz;

    invoke-virtual/range {p0 .. p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/camera/legacy/app/settings/CameraMaterialSettingsActivity;->h(Lfbz;Landroidx/preference/Preference;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2

    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This should be called after super.onCreate."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    :goto_e
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Laof;->onDestroy()V

    iget-object v0, p0, Levt;->ai:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Laof;->onPause()V

    invoke-virtual {p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 10

    invoke-super {p0}, Laof;->onResume()V

    invoke-virtual {p0}, Lbw;->getActivity()Lbz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "pref_category_advanced"

    invoke-direct {p0, v1}, Levt;->H(Ljava/lang/String;)V

    const-string v1, "pref_category_gestures"

    invoke-direct {p0, v1}, Levt;->H(Ljava/lang/String;)V

    const-string v2, "pref_category_developer"

    invoke-direct {p0, v2}, Levt;->H(Ljava/lang/String;)V

    const-string v2, "pref_category_social_share"

    invoke-direct {p0, v2}, Levt;->H(Ljava/lang/String;)V

    const-string v2, "pref_category_frequent_faces"

    invoke-direct {p0, v2}, Levt;->H(Ljava/lang/String;)V

    const-string v3, "pref_category_storage"

    invoke-direct {p0, v3}, Levt;->H(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceScreen;

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    iget-object v5, p0, Levt;->ae:Levu;

    iget-object v5, v5, Levu;->k:Lva;

    iget-object v6, v5, Lva;->b:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, v5, Lva;->a:Ljava/lang/Object;

    invoke-interface {v5}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v4, v5, :cond_0

    const v5, 0x7f1401c1

    goto :goto_0

    :cond_0
    const v5, 0x7f1401c2

    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Levt;->ak:Lgkf;

    iget-object v2, v2, Lgkf;->i:Ljava/lang/Object;

    const-string v5, "pref_category_custom_hotkeys"

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v5}, Levt;->H(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x2

    if-eqz v1, :cond_4

    sget-object v6, Lgzd;->h:Lgzu;

    iget-object v6, v6, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p0, v6}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    const v7, 0x7f1403f7

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v2

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1403cb

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    const v7, 0x7f14040b

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0, v3}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f140413

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f140409

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    const v2, 0x7f140422

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v1, Lgzd;->d:Lgzs;

    iget-object v1, v1, Lgzs;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    const/4 v2, 0x3

    if-eqz v1, :cond_6

    iget-object v3, v1, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/preference/ListPreference;->k(Ljava/lang/String;)I

    move-result v3

    iget-object v5, v1, Landroidx/preference/ListPreference;->g:[Ljava/lang/CharSequence;

    aget-object v3, v5, v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->n(Ljava/lang/CharSequence;)V

    new-instance v3, Levs;

    invoke-direct {v3, p0, v2}, Levs;-><init>(Levt;I)V

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->O(Lant;)V

    :cond_6
    const-string v1, "pref_launch_help"

    invoke-virtual {p0, v1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v3, Ldmj;

    invoke-direct {v3, v0, v2}, Ldmj;-><init>(Landroid/app/Activity;I)V

    iput-object v3, v1, Landroidx/preference/Preference;->o:Lanu;

    :cond_7
    const-string v1, "pref_launch_feedback"

    invoke-virtual {p0, v1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v2, Ldmj;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Ldmj;-><init>(Landroid/app/Activity;I)V

    iput-object v2, v1, Landroidx/preference/Preference;->o:Lanu;

    :cond_8
    const-string v0, "pref_category_resolution_camera"

    invoke-virtual {p0, v0}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_a

    const-string v1, "pref_camera_resolution"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-string v2, "pref_camera_selfie_mirror_key"

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->ag()V

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->ak(Landroidx/preference/Preference;)V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->ak(Landroidx/preference/Preference;)V

    :cond_a
    invoke-virtual {p0}, Laof;->c()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Levt;->D()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Levt;->C()V

    :cond_b
    iget-object v0, p0, Levt;->ah:Lcom/google/android/apps/camera/ui/preference/MaterialManagedSwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->K(Z)V

    :cond_c
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    iget-object p1, p0, Levt;->ak:Lgkf;

    iget-object p1, p1, Lgkf;->i:Ljava/lang/Object;

    const-string v0, "pref_category_custom_hotkeys"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x19

    const v1, 0x7f14043d

    const/16 v2, 0x18

    const-string v3, "-1"

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/preference/Preference;->r()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_0

    if-ne v4, v0, :cond_1

    :cond_0
    sget-object v4, Lgzd;->j:Lgzu;

    iget-object v4, v4, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/ListPreference;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/ListPreference;->o(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v5, p0, Levt;->aj:Ljava/util/HashMap;

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

    iget-object v7, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/ui/preference/MaterialKeyListenerPreference;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v3}, Lcom/google/android/apps/camera/ui/preference/MaterialKeyListenerPreference;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_4
    sget-object p1, Lgzd;->j:Lgzu;

    iget-object p1, p1, Lgzu;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    if-eqz p1, :cond_8

    iget-object p1, p1, Landroidx/preference/ListPreference;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lbw;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Levt;->aj:Ljava/util/HashMap;

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

    iget-object v4, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v0, :cond_6

    if-ne v4, v2, :cond_5

    :cond_6
    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Laof;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/preference/MaterialKeyListenerPreference;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/ui/preference/MaterialKeyListenerPreference;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object p2, p0, Levt;->aj:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_8
    return-void
.end method
