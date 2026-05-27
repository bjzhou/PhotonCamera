.class public final Lexx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Lfbk;

.field public final f:Lgxb;

.field public final g:Lgxk;

.field public final h:Lkpo;

.field public final i:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/lightcycle/storage/LocalFileStorageManager"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lexx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lgwf;Ljew;Lgxb;Lgxk;Lfbk;Lkpo;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p7, ""

    invoke-interface {p1, p7}, Lgwf;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p7

    iput-object p7, p0, Lexx;->c:Ljava/io/File;

    const-string p7, "panorama_sessions"

    invoke-interface {p1, p7}, Lgwf;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lexx;->d:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    new-instance p7, Ljava/io/File;

    const-string p8, "panoramas"

    invoke-direct {p7, p1, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p7}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p7}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lexx;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p7, "Panorama directory not created."

    const/16 p8, 0x7fa

    invoke-static {p1, p7, p8}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 p7, 0x0

    goto :goto_0

    :cond_0
    :goto_0
    iput-object p7, p0, Lexx;->b:Ljava/io/File;

    iput-object p2, p0, Lexx;->i:Ljew;

    iput-object p3, p0, Lexx;->f:Lgxb;

    iput-object p4, p0, Lexx;->g:Lgxk;

    iput-object p5, p0, Lexx;->e:Lfbk;

    iput-object p6, p0, Lexx;->h:Lkpo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexx;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    iget-object v1, p0, Lexx;->b:Ljava/io/File;

    const-string v2, "thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lexx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Thumbnails directory not created."

    const/16 v2, 0x7fb

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
