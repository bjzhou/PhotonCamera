.class public final Laox;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/res/AssetManager;

.field public final b:[B

.field public final c:Ljava/io/File;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public g:Z

.field public h:[Laoy;

.field public i:[B

.field public final j:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/String;Ljava/io/File;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-boolean p6, p0, Laox;->g:Z

    iput-object p1, p0, Laox;->a:Landroid/content/res/AssetManager;

    iput-object p2, p0, Laox;->k:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Laox;->j:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-object p4, p0, Laox;->d:Ljava/lang/String;

    const-string p1, "dexopt/baseline.prof"

    iput-object p1, p0, Laox;->e:Ljava/lang/String;

    const-string p1, "dexopt/baseline.profm"

    iput-object p1, p0, Laox;->f:Ljava/lang/String;

    iput-object p5, p0, Laox;->c:Ljava/io/File;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    const/4 p3, 0x0

    if-le p1, p2, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p3, Lape;->a:[B

    :goto_1
    iput-object p3, p0, Laox;->b:[B

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const-string v0, "compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Laox;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This device doesn\'t support aot. Did you call deviceSupportsAotProfile()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Laox;->k:Ljava/util/concurrent/Executor;

    new-instance v1, Lpi;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, p2, v2}, Lpi;-><init>(Laox;ILjava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
