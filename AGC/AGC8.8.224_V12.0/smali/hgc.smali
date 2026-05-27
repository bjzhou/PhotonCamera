.class public final Lhgc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lgzi;

.field public final d:Lgzm;

.field public final e:Lgzn;

.field public final f:Lhgd;

.field public final g:Lfbz;

.field public final h:Lmvq;

.field public final i:Ljava/util/Map;

.field public final j:Ljava/util/Map;

.field public final k:Landroid/content/pm/PackageManager;

.field public l:Lmvv;

.field public m:Landroid/preference/PreferenceScreen;

.field public n:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lgzi;Lgzm;Lgzn;Lhgd;Lfbz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iput-object v0, p0, Lhgc;->l:Lmvv;

    iput-object p1, p0, Lhgc;->a:Landroid/content/Context;

    iput-object p2, p0, Lhgc;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lhgc;->c:Lgzi;

    iput-object p4, p0, Lhgc;->d:Lgzm;

    iput-object p5, p0, Lhgc;->e:Lgzn;

    iput-object p6, p0, Lhgc;->f:Lhgd;

    iput-object p7, p0, Lhgc;->g:Lfbz;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p2

    iput-object p2, p0, Lhgc;->h:Lmvq;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lhgc;->i:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lhgc;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lhgc;->k:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    iget-object v0, p0, Lhgc;->h:Lmvq;

    invoke-virtual {v0}, Lmvq;->f()Lmvv;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmyu;

    iget v1, v1, Lmyu;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object v5, p0, Lhgc;->c:Lgzi;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Lhgc;->a:Landroid/content/Context;

    const v1, 0x7f040191

    const/high16 v2, -0x1000000

    invoke-static {v0, v1, v2}, Lkwp;->m(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public final c()Lnou;
    .locals 2

    new-instance v0, Lcna;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcna;-><init>(Lhgc;I)V

    iget-object v1, p0, Lhgc;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhgc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const p1, 0x7f1404ab

    goto :goto_0

    :cond_0
    const p1, 0x7f1404ac

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lhgc;->f:Lhgd;

    invoke-interface {v0}, Lhgd;->f()V

    iget-object v0, p0, Lhgc;->d:Lgzm;

    sget-object v1, Lgzd;->R:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhgc;->d:Lgzm;

    sget-object v1, Lgzd;->S:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhgc;->f:Lhgd;

    const-string v1, "image/*"

    invoke-interface {v0, v1}, Lhgd;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhgc;->f:Lhgd;

    const-string v1, "video/*"

    invoke-interface {v0, v1}, Lhgd;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhgc;->e:Lgzn;

    sget-object v1, Lgzd;->P:Lgzr;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhgc;->e:Lgzn;

    sget-object v1, Lgzd;->P:Lgzr;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lhgc;->d:Lgzm;

    sget-object v1, Lgzd;->P:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    return-void

    :cond_1
    return-void
.end method

.method public final f(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lhgc;->c:Lgzi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lgzi;->l(Ljava/lang/String;Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 2

    iget-object v0, p0, Lhgc;->m:Landroid/preference/PreferenceScreen;

    sget-object v1, Lgzd;->P:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0, p1}, Lhgc;->d(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lhgc;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lhgc;->e:Lgzn;

    sget-object v1, Lgzd;->P:Lgzr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object p1, p0, Lhgc;->e:Lgzn;

    sget-object v0, Lgzd;->S:Lgzr;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 5

    invoke-virtual {p0}, Lhgc;->a()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120006

    invoke-static {v2, v0, v1}, Ljpw;->i(II[Ljava/lang/Object;)Ligf;

    move-result-object v0

    iget-object v1, p0, Lhgc;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, v1}, Ligf;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhgc;->m:Landroid/preference/PreferenceScreen;

    sget-object v2, Lgzd;->P:Lgzr;

    iget-object v2, v2, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object v2, p0, Lhgc;->a:Landroid/content/Context;

    const v3, 0x7f04016d

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Lkwp;->m(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v0, v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->k:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->h:Ljava/lang/Integer;

    return-void
.end method
