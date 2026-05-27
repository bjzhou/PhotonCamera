.class public final Llpt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llpa;

.field private static final b:Llsy;

.field private static final c:Ljava/lang/Object;

.field private static volatile d:Llij;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Llpa;->b()Llpa;

    move-result-object v0

    sput-object v0, Llpt;->a:Llpa;

    new-instance v0, Llsy;

    sget-object v1, Llpk;->b:Llpk;

    invoke-direct {v0, v1}, Llsy;-><init>(Lnxy;)V

    sput-object v0, Llpt;->b:Llsy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llpt;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Llpt;->d:Llij;

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v0, v4

    if-eqz v5, :cond_0

    invoke-static {v6}, Llpt;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public static b(Llon;)Llst;
    .locals 6

    invoke-static {}, Llsn;->a()Llsm;

    move-result-object v0

    iget-object v1, p0, Llon;->c:Landroid/content/Context;

    invoke-static {v1}, Llri;->a(Landroid/content/Context;)Llrh;

    move-result-object v1

    const-string v2, "phenotype"

    invoke-virtual {v1, v2}, Llrh;->b(Ljava/lang/String;)V

    const-string v2, "all_accounts.pb"

    invoke-virtual {v1, v2}, Llrh;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Llrh;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Llsm;->e(Landroid/net/Uri;)V

    sget-object v1, Llpk;->b:Llpk;

    invoke-virtual {v0, v1}, Llsm;->d(Lnxy;)V

    sget-object v1, Llpt;->b:Llsy;

    invoke-virtual {v0, v1}, Llsm;->c(Llsh;)V

    invoke-virtual {v0}, Llsm;->b()V

    invoke-virtual {v0}, Llsm;->a()Llsn;

    move-result-object v0

    sget-object v1, Llpt;->d:Llij;

    if-nez v1, :cond_1

    sget-object v2, Llpt;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Llpt;->d:Llij;

    if-nez v1, :cond_0

    sget-object v1, Llsz;->a:Llsz;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Llon;->b()Lnox;

    move-result-object v4

    invoke-virtual {p0}, Llon;->f()Lva;

    move-result-object p0

    sget-object v5, Llsq;->a:Llsv;

    invoke-static {v5, v3}, Lljz;->c(Llsv;Ljava/util/HashMap;)V

    invoke-static {v4, p0, v3, v1}, Lljz;->K(Ljava/util/concurrent/Executor;Lva;Ljava/util/HashMap;Llsz;)Llij;

    move-result-object p0

    sput-object p0, Llpt;->d:Llij;

    move-object v1, p0

    goto :goto_0

    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Llij;->a(Llsn;)Llst;

    move-result-object p0

    return-object p0
.end method
