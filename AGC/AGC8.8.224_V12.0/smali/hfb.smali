.class public final Lhfb;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic f:I

.field private static final g:Lmwn;


# instance fields
.field public final a:Lhgd;

.field public final b:Landroid/content/Context;

.field public final c:Lchj;

.field public final d:Ldhi;

.field public final e:Ljava/util/Map;

.field private final h:Lgus;

.field private final i:Z

.field private final j:Ljava/util/Map;

.field private final k:Lgzi;

.field private final l:Lgzm;

.field private final m:Lgzn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lhfz;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lhfz;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v0

    sput-object v0, Lhfb;->g:Lmwn;

    return-void
.end method

.method public constructor <init>(Lhgd;Landroid/content/Context;Lgus;ZLchj;Ldhi;Lgzi;Lgzm;Lgzn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lhfb;->e:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lhfb;->j:Ljava/util/Map;

    iput-object p1, p0, Lhfb;->a:Lhgd;

    iput-object p2, p0, Lhfb;->b:Landroid/content/Context;

    iput-object p3, p0, Lhfb;->h:Lgus;

    iput-boolean p4, p0, Lhfb;->i:Z

    iput-object p5, p0, Lhfb;->c:Lchj;

    iput-object p6, p0, Lhfb;->d:Ldhi;

    iput-object p7, p0, Lhfb;->k:Lgzi;

    iput-object p8, p0, Lhfb;->l:Lgzm;

    iput-object p9, p0, Lhfb;->m:Lgzn;

    return-void
.end method

.method public static a(Lchd;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lchf;->a:Lchf;

    invoke-interface {p0}, Lchd;->c()Lchf;

    move-result-object v0

    invoke-virtual {v0}, Lchf;->ordinal()I

    move-result v0

    const-string v1, "image/*"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-interface {p0}, Lchd;->d()Lfeb;

    move-result-object p0

    iget-boolean v0, p0, Lfeb;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfeb;->g:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lfeb;->f:Z

    if-nez p0, :cond_0

    const-string v0, "*/*"

    goto :goto_0

    :pswitch_1
    const-string v0, "video/*"

    goto :goto_0

    :cond_0
    :pswitch_2
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lhfb;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "image/*"

    return-object p0

    :cond_0
    invoke-static {p0}, Lhfb;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "video/*"

    return-object p0

    :cond_1
    const-string p0, "*/*"

    return-object p0
.end method

.method public static c(Ljava/util/function/Function;)Ljava/util/function/Predicate;
    .locals 3

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lgdp;

    const/4 v2, 0x7

    invoke-direct {v1, v0, p0, v2}, Lgdp;-><init>(Ljava/util/Map;Ljava/util/function/Function;I)V

    return-object v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lkqi;->a(Ljava/lang/String;)Lkqi;

    move-result-object p0

    invoke-virtual {p0}, Lkqi;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lkqi;->a(Ljava/lang/String;)Lkqi;

    move-result-object p0

    invoke-virtual {p0}, Lkqi;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final e(Landroid/content/pm/ResolveInfo;)Z
    .locals 4

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "com.google.android.gms.nearby.sharing.ShareSheetActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhfb;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_0
    iget-object v2, p0, Lhfb;->b:Landroid/content/Context;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, ""

    :goto_0
    const-string v0, "Nearby Share"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lhfb;->k:Lgzi;

    iget-object v1, p0, Lhfb;->a:Lhgd;

    invoke-interface {v1}, Lhgd;->a()Lmwa;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmwa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lhfy;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgzi;->m(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final h(I)Landroid/content/pm/ResolveInfo;
    .locals 3

    new-instance v0, Lhfa;

    invoke-direct {v0, p0, p1}, Lhfa;-><init>(Lhfb;I)V

    new-instance p1, Landroid/content/pm/ActivityInfo;

    invoke-direct {p1}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lhfb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lhfb;->d:Ldhi;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    const-string v1, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    iput-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Lchd;)I
    .locals 8

    iget-object v0, p0, Lhfb;->l:Lgzm;

    sget-object v1, Lgzd;->R:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhfb;->l:Lgzm;

    sget-object v3, Lgzd;->S:Lgzr;

    invoke-interface {v0, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lhfb;->j:Ljava/util/Map;

    const-string v3, "image/*"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iget-object v4, p0, Lhfb;->j:Ljava/util/Map;

    const-string v5, "video/*"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v4}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, p0, Lhfb;->a:Lhgd;

    invoke-interface {v0, v3}, Lhgd;->j(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iget-object v6, p0, Lhfb;->j:Ljava/util/Map;

    move-object v7, v0

    check-cast v7, Lmqt;

    iget-object v7, v7, Lmqt;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lhfb;->a:Lhgd;

    invoke-interface {v3, v5}, Lhgd;->j(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    iget-object v3, p0, Lhfb;->j:Ljava/util/Map;

    move-object v6, v4

    check-cast v6, Lmqt;

    iget-object v6, v6, Lmqt;->a:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhfb;->m:Lgzn;

    sget-object v3, Lgzd;->P:Lgzr;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhfb;->m:Lgzn;

    sget-object v2, Lgzd;->P:Lgzr;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lhfb;->l:Lgzm;

    sget-object v3, Lgzd;->P:Lgzr;

    invoke-interface {v0, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x2

    if-nez v0, :cond_4

    return v3

    :cond_4
    if-nez p1, :cond_5

    return v3

    :cond_5
    if-nez v2, :cond_8

    invoke-static {p1}, Lhfb;->a(Lchd;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhfb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lhfb;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    iget-object v0, p0, Lhfb;->a:Lhgd;

    invoke-interface {v0, p1}, Lhgd;->i(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lhfb;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    return v3

    :cond_8
    :goto_2
    return v1
.end method

.method final j(Landroid/content/pm/ResolveInfo;Lchd;)I
    .locals 6

    invoke-interface {p2}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lhfb;->b:Landroid/content/Context;

    iget-object v2, p0, Lhfb;->d:Ldhi;

    sget-object v3, Ldho;->a:Ldhk;

    invoke-interface {v2}, Ldhi;->c()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lhfb;->d:Ldhi;

    sget-object v5, Ldho;->bf:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lhfb;->g:Lmwn;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lhfb;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.android.apps.internal.camera.imageobfuscator"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string p1, ".activities.SharingActivity"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    if-eqz v2, :cond_2

    const-string p1, "pref_open_setting_page"

    const-string p2, "pref_category_social_share"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pref_make_setting_page_root"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lhfb;->a(Lchd;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhfb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0x10000001

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2
    if-eqz v2, :cond_3

    :try_start_0
    iget-boolean p1, p0, Lhfb;->i:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lhfb;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const/16 p2, 0x3e8

    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lhfb;->h:Lgus;

    invoke-interface {p1, v1}, Lgus;->g(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const/4 v3, 0x2

    :goto_3
    return v3
.end method
