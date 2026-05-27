.class public final synthetic Ldkg;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ldhi;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldkl;Ldkk;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldvr;Lchd;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lecy;Lebl;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkbc;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llhz;Logd;I[B)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lliq;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Llkf;Loiw;I)V
    .locals 0

    iput p3, p0, Ldkg;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldkg;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldkg;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Ldkg;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldkg;->b:Ljava/lang/Object;

    iget-object v1, p0, Ldkg;->a:Ljava/lang/Object;

    sget v2, Llmh;->a:I

    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llmf;

    iget v1, v1, Llmf;->a:F

    check-cast v0, Llhz;

    invoke-virtual {v0, v1}, Llhz;->a(F)Llmt;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ldkg;->b:Ljava/lang/Object;

    iget-object v1, p0, Ldkg;->a:Ljava/lang/Object;

    check-cast v0, Llkf;

    invoke-virtual {v0, v1}, Llkf;->b(Loiw;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldkg;->a:Ljava/lang/Object;

    iget-object v1, p0, Ldkg;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Llhg;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".trace"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "primes_profiling_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lmpx;->a:Lmpx;

    monitor-exit v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    :goto_0
    :try_start_2
    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    monitor-exit v0

    :goto_1
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_2
    iget-object v0, p0, Ldkg;->a:Ljava/lang/Object;

    iget-object v1, p0, Ldkg;->b:Ljava/lang/Object;

    :try_start_3
    const-string v2, "LensUtil.LensApi"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/google/lens/sdk/LensApi;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v0}, Lkbc;->f()V

    return-object v2

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Lkbc;->f()V

    throw v1

    :pswitch_3
    iget-object v0, p0, Ldkg;->a:Ljava/lang/Object;

    iget-object v1, p0, Ldkg;->b:Ljava/lang/Object;

    sget-object v4, Lecy;->c:Lecy;

    if-eq v0, v4, :cond_3

    check-cast v1, Lebl;

    iget-object v0, v1, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Ldkg;->a:Ljava/lang/Object;

    iget-object v2, p0, Ldkg;->b:Ljava/lang/Object;

    sget-object v3, Ldvr;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    const-string v4, "Thumbnail is null when startLaunchingPhotos. Launch Photos Anyway."

    const/16 v5, 0x479

    invoke-static {v3, v4, v5}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    new-instance v3, Lcnb;

    check-cast v0, Ldvr;

    invoke-direct {v3, v0, v2, v1}, Lcnb;-><init>(Ldvr;Lchd;I)V

    iget-object v0, v0, Ldvr;->f:Ljuh;

    invoke-static {v3, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Ldkg;->a:Ljava/lang/Object;

    iget-object v4, p0, Ldkg;->b:Ljava/lang/Object;

    sget-object v5, Ldeg;->a:Lnak;

    sget-object v5, Ldht;->C:Ldhj;

    invoke-interface {v0, v5}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v8

    if-nez v8, :cond_7

    :try_start_4
    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.google.android.apps.docs"

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    const-string v5, ""

    :goto_4
    sget-object v6, Ldeg;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-lt v6, v1, :cond_6

    :try_start_5
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v9, 0x2e

    invoke-static {v9}, Lmrd;->b(C)Lmrd;

    move-result-object v9

    invoke-virtual {v9, v0}, Lmrd;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    if-gt v6, v1, :cond_5

    if-ne v6, v1, :cond_4

    if-gt v8, v9, :cond_5

    :cond_4
    if-ne v6, v1, :cond_6

    if-ne v8, v9, :cond_6

    if-lt v5, v0, :cond_6

    goto :goto_5

    :cond_5
    goto :goto_5

    :catch_2
    move-exception v0

    sget-object v1, Ldeg;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "Error parsing Drive version information"

    const/16 v5, 0x354

    invoke-static {v1, v2, v5, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    :try_start_6
    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    and-int v0, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :cond_7
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    goto/16 :goto_3

    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_6
    iget-object v0, p0, Ldkg;->a:Ljava/lang/Object;

    iget-object v1, p0, Ldkg;->b:Ljava/lang/Object;

    sget-object v3, Ldkl;->b:Ldkj;

    check-cast v0, Ldkl;

    invoke-virtual {v0, v1, v2, v3}, Ldkl;->a(Ldkk;ZLdkj;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
