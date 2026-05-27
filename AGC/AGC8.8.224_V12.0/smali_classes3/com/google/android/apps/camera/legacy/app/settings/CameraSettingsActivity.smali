.class public Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;
.super Leqw;


# static fields
.field public static final t:Lnak;


# instance fields
.field private isRoot:Z

.field private final u:Ljava/lang/Object;

.field private v:Levz;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->t:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leqw;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljava/lang/Object;

    return-void
.end method

.method public static q(Lfbz;Landroid/preference/Preference;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_category_developer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/preference/PreferenceGroup;

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->q(Lfbz;Landroid/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v2, Levv;

    invoke-direct {v2, p0, v0, v1}, Levv;-><init>(Lfbz;Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void

    :cond_3
    return-void

    :cond_4
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setResult(I)V

    :cond_0
    invoke-super {p0}, Leqw;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {p0}, Lcom/agc/util/Permission;->requestPermission(Landroid/app/Activity;)Z

    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->w:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->w:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lesh;

    iget-object v3, v3, Lesh;->h:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkbc;

    iput-object v3, p0, Leqw;->q:Lkbc;

    move-object v3, v2

    check-cast v3, Lesh;

    iget-object v3, v3, Lesh;->z:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lchl;

    iput-object v3, p0, Leqw;->s:Lchl;

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->hV:Lbkb;

    invoke-static {v2}, Lfaf;->b(Lbkb;)Lezy;

    move-result-object v2

    iput-object v2, p0, Leqw;->r:Lezy;

    iput-boolean v1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->w:Z

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Leqw;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lmgt;->a(Landroid/app/Activity;)V

    const p1, 0x7f0e00e6

    invoke-virtual {p0, p1}, Lpl;->setContentView(I)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pref_screen_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b03b6

    invoke-virtual {p0, v0}, Lei;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lei;->j()Lel;

    move-result-object v2

    check-cast v2, Lfd;

    iget-object v3, v2, Lfd;->h:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Activity;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lfd;->b()Ldy;

    move-result-object v3

    instance-of v4, v3, Lfq;

    if-nez v4, :cond_7

    const/4 v4, 0x0

    iput-object v4, v2, Lfd;->m:Landroid/view/MenuInflater;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ldy;->e()V

    :cond_3
    iput-object v4, v2, Lfd;->l:Ldy;

    if-eqz v0, :cond_4

    new-instance v3, Lfk;

    invoke-virtual {v2}, Lfd;->v()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, v2, Lfd;->k:Lev;

    invoke-direct {v3, v0, v4, v5}, Lfk;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v3, v2, Lfd;->l:Ldy;

    iget-object v4, v2, Lfd;->k:Lev;

    iget-object v3, v3, Lfk;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-object v3, v4, Lev;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-boolean v3, v0, Landroid/support/v7/widget/Toolbar;->A:Z

    if-eq v3, v1, :cond_5

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar;->A:Z

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->u()V

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lfd;->k:Lev;

    iput-object v4, v0, Lev;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    :cond_5
    :goto_1
    invoke-virtual {v2}, Lfd;->f()V

    :goto_2
    invoke-virtual {p0}, Lei;->i()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ldy;->g(Z)V

    invoke-virtual {v0}, Ldy;->s()V

    if-nez p1, :cond_6

    const p1, 0x7f1403ec

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setTitle(I)V

    invoke-virtual {v0}, Ldy;->u()V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Ldy;->i(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pref_screen_extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "pref_open_setting_page"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pref_make_setting_page_root"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Levz;

    invoke-direct {v3}, Levz;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Levz;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "pref_screen_extra"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pref_open_setting_page"

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pref_make_setting_page_root"

    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, v3}, Lcom/agc/Preference;->updateSettingActivity(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->isRoot:Z

    iget-object p1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Levz;

    invoke-virtual {p1, v3}, Levz;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Levz;

    const v1, 0x7f0b0307

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    iget-object p1, p0, Lpl;->g:Lpr;

    new-instance v0, Levw;

    invoke-direct {v0, p0}, Levw;-><init>(Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;)V

    invoke-virtual {p1, v0}, Lpr;->a(Lpn;)Lph;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onDestroy()V
    .locals 1

    invoke-super {p0}, Leqw;->onDestroy()V

    iget-boolean v0, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->isRoot:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/Globals;->restartIfNeeded()V

    :cond_0
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x2000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Lfbc;->finish()V

    :cond_1
    return v1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Leqw;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v0, p3, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/camera/legacy/app/settings/CameraSettingsActivity;->v:Levz;

    sget p2, Levz;->c:I

    invoke-virtual {p1}, Levz;->a()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
