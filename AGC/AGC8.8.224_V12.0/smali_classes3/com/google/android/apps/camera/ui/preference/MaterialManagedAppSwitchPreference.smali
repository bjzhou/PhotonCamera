.class public Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;
.super Lcom/android/settingslib/widget/AppSwitchPreference;

# interfaces
.implements Lant;
.implements Lidh;


# instance fields
.field public c:Lgzi;

.field public d:Lgzm;

.field public e:Lant;

.field private f:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    sget-object v0, Lidj;->b:Lidj;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->e:Lant;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->ai(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/AppSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p2, Lidj;->b:Lidj;

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->e:Lant;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->ai(Landroid/content/Context;)V

    return-void
.end method

.method private final ai(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lemj;

    const-class v0, Lidi;

    invoke-interface {p1, v0}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object p1

    check-cast p1, Lidi;

    invoke-interface {p1, p0}, Lidi;->w(Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->ae()V

    iget-object p1, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-static {p1}, Lgzb;->a(Ljava/lang/String;)Lgzb;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->d:Lgzm;

    invoke-interface {v0, p1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->c:Lgzi;

    iget-object v1, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->d:Lgzm;

    invoke-interface {v2, p1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lgzi;->l(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->c:Lgzi;

    iget-object v0, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgzi;->m(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/preference/Preference;->v:Ljava/lang/Object;

    :goto_0
    iput-object p0, p0, Landroidx/preference/Preference;->n:Lant;

    return-void
.end method


# virtual methods
.method public final O(Lant;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->e:Lant;

    return-void
.end method

.method public final X(Z)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->c:Lgzi;

    iget-object v0, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgzi;->m(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final ag(Ljava/util/function/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->f:Ljava/util/function/Function;

    return-void
.end method

.method public final b(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->c:Lgzi;

    iget-object v1, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgzi;->l(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->e:Lant;

    invoke-interface {v0, p1, p2}, Lant;->b(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->f:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/settingslib/widget/AppSwitchPreference;->c()V

    return-void
.end method

.method public final u()Lant;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/MaterialManagedAppSwitchPreference;->e:Lant;

    return-object v0
.end method
