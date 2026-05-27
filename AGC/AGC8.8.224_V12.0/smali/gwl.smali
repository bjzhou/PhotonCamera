.class public final Lgwl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwl;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgxk;
    .locals 5

    invoke-static {}, Lhkr;->a()Lhkp;

    move-result-object v0

    iget-object v1, p0, Lgwl;->a:Loiw;

    check-cast v1, Ldwh;

    invoke-virtual {v1}, Ldwh;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    :goto_0
    new-instance v4, Lgxk;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v4, v2, v1, v0}, Lgxk;-><init>(Ljava/io/File;Ljava/io/File;Lhkp;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgwl;->a()Lgxk;

    move-result-object v0

    return-object v0
.end method
