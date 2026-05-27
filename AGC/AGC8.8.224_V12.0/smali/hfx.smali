.class public final Lhfx;
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

.field public m:Landroidx/preference/PreferenceScreen;

.field public n:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lgzi;Lgzm;Lgzn;Lhgd;Lfbz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lmvv;->d:I

    sget-object v0, Lmyu;->a:Lmvv;

    iput-object v0, p0, Lhfx;->l:Lmvv;

    iput-object p1, p0, Lhfx;->a:Landroid/content/Context;

    iput-object p2, p0, Lhfx;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lhfx;->c:Lgzi;

    iput-object p4, p0, Lhfx;->d:Lgzm;

    iput-object p5, p0, Lhfx;->e:Lgzn;

    iput-object p6, p0, Lhfx;->f:Lhgd;

    iput-object p7, p0, Lhfx;->g:Lfbz;

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p2

    iput-object p2, p0, Lhfx;->h:Lmvq;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lhfx;->i:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lhfx;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lhfx;->k:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;Z)V
    .locals 1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->k(Z)V

    iget-object v0, p0, Lhfx;->c:Lgzi;

    iget-object p1, p1, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lgzi;->l(Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lhfx;->m:Landroidx/preference/PreferenceScreen;

    sget-object v1, Lgzd;->P:Lgzr;

    iget-object v1, v1, Lgzr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->l(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedMainSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->k(Z)V

    iget-object v0, p0, Lhfx;->e:Lgzn;

    sget-object v1, Lgzd;->P:Lgzr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object p1, p0, Lhfx;->e:Lgzn;

    sget-object v0, Lgzd;->S:Lgzr;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method
