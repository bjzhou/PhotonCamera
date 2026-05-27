.class public final Lizf;
.super Liyw;


# instance fields
.field private final a:Liym;


# direct methods
.method public constructor <init>(Liyz;)V
    .locals 0

    invoke-direct {p0, p1}, Liyw;-><init>(Liyz;)V

    new-instance p1, Liym;

    invoke-direct {p1}, Liym;-><init>()V

    iput-object p1, p0, Lizf;->a:Liym;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    invoke-virtual {p0}, Liyv;->e()Liys;

    move-result-object v0

    iget-object v1, v0, Liys;->d:Liym;

    if-nez v1, :cond_3

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Liys;->d:Liym;

    if-nez v1, :cond_2

    new-instance v1, Liym;

    invoke-direct {v1}, Liym;-><init>()V

    iget-object v2, v0, Liys;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Liys;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Liym;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Liym;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, v0, Liys;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    goto :goto_2

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string v2, "GAv4"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error retrieving package info: appName set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v3, v1, Liym;->a:Ljava/lang/String;

    iput-object v4, v1, Liym;->b:Ljava/lang/String;

    iput-object v1, v0, Liys;->d:Liym;

    :cond_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :goto_3
    iget-object v0, v0, Liys;->d:Liym;

    iget-object v1, p0, Lizf;->a:Liym;

    iget-object v2, v0, Liym;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Liym;->a:Ljava/lang/String;

    iput-object v2, v1, Liym;->a:Ljava/lang/String;

    :cond_4
    iget-object v2, v0, Liym;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Liym;->b:Ljava/lang/String;

    iput-object v2, v1, Liym;->b:Ljava/lang/String;

    :cond_5
    iget-object v2, v0, Liym;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Liym;->c:Ljava/lang/String;

    iput-object v2, v1, Liym;->c:Ljava/lang/String;

    :cond_6
    iget-object v2, v0, Liym;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v0, v0, Liym;->d:Ljava/lang/String;

    iput-object v0, v1, Liym;->d:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0}, Liyv;->k()Ljae;

    move-result-object v0

    invoke-virtual {v0}, Liyw;->z()V

    iget-object v1, v0, Ljae;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lizf;->a:Liym;

    iput-object v1, v2, Liym;->a:Ljava/lang/String;

    :cond_8
    invoke-virtual {v0}, Liyw;->z()V

    iget-object v0, v0, Ljae;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lizf;->a:Liym;

    iput-object v0, v1, Liym;->b:Ljava/lang/String;

    :cond_9
    return-void
.end method
