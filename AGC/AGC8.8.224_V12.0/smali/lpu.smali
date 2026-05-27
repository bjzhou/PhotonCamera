.class public final Llpu;
.super Ljava/lang/Object;


# static fields
.field private static d:Z


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llpu;->a:I

    sget-object p1, Lkbo;->m:Lkbo;

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    sget-object p1, Lkbo;->m:Lkbo;

    invoke-virtual {p1}, Lkbo;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llpu;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILkbo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llpu;->a:I

    iput-object p2, p0, Llpu;->b:Ljava/lang/Object;

    if-nez p3, :cond_0

    sget-object p1, Lkbo;->m:Lkbo;

    invoke-virtual {p1}, Lkbo;->c()Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Llpu;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILldh;Llck;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object v1, p3, Llck;->a:Llax;

    iget-object v1, v1, Llbk;->b:Llbd;

    iget-object v2, p2, Lldh;->a:Llax;

    iget-object v2, v2, Llbk;->b:Llbd;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iput p1, p0, Llpu;->a:I

    iput-object p2, p0, Llpu;->c:Ljava/lang/Object;

    iput-object p3, p0, Llpu;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILodl;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llpu;->a:I

    iput-object p2, p0, Llpu;->c:Ljava/lang/Object;

    iput-object p3, p0, Llpu;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldne;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    iput-object p2, p0, Llpu;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Llpu;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->c:Ljava/lang/Object;

    iput-object p2, p0, Llpu;->b:Ljava/lang/Object;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result p1

    :goto_0
    iput p1, p0, Llpu;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILkaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    iput p2, p0, Llpu;->a:I

    iput-object p3, p0, Llpu;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;Lofm;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    iput-object p2, p0, Llpu;->c:Ljava/lang/Object;

    iput p3, p0, Llpu;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    iput-object p2, p0, Llpu;->c:Ljava/lang/Object;

    iput p3, p0, Llpu;->a:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Llpu;->b:Ljava/lang/Object;

    iput-object p1, p0, Llpu;->c:Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gt p1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    const-string p1, "tag \"%s\" is longer than the %d character maximum"

    invoke-static {v2, p1, v1}, Ljhp;->U(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x7

    if-gt v0, p1, :cond_1

    iget-object p1, p0, Llpu;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Llpu;->a:I

    return-void
.end method

.method public constructor <init>(Ljdy;ILjde;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->c:Ljava/lang/Object;

    iput p2, p0, Llpu;->a:I

    iput-object p3, p0, Llpu;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llm;Lgw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    iput-object p2, p0, Llpu;->c:Ljava/lang/Object;

    iput p3, p0, Llpu;->a:I

    return-void
.end method

.method public constructor <init>(Lmrl;)V
    .locals 2

    sget-object v0, Lffe;->l:Lffe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llpu;->b:Ljava/lang/Object;

    const/4 p1, 0x5

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Llpu;->a:I

    iput-object v0, p0, Llpu;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    const-class v0, Llpu;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Llpu;->d:Z

    if-nez v1, :cond_0

    new-instance v3, Llmm;

    const/16 v1, 0x8

    invoke-direct {v3, p0, v1}, Llmm;-><init>(Llpu;I)V

    iget v1, p0, Llpu;->a:I

    int-to-long v9, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Llpu;->b:Ljava/lang/Object;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lnox;

    new-instance v12, Lfqs;

    const/4 v8, 0x4

    move-object v2, v12

    move-object v4, v11

    move-wide v5, v9

    move-object v7, v1

    invoke-direct/range {v2 .. v8}, Lfqs;-><init>(Ljava/lang/Runnable;Lnox;JLjava/util/concurrent/TimeUnit;I)V

    invoke-interface {v11, v12, v9, v10, v1}, Lnox;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lnpa;

    move-result-object v1

    invoke-static {v1}, Llpm;->a(Lnou;)V

    const/4 v1, 0x1

    sput-boolean v1, Llpu;->d:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Llpu;->c:Ljava/lang/Object;

    check-cast v0, Lodl;

    const-string v1, "X-GUploader-UploadID"

    invoke-virtual {v0, v1}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Llpu;->a:I

    iget-object v2, p0, Llpu;->c:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_0

    const-string v0, "\n No upload id."

    goto :goto_0

    :cond_0
    const-string v3, "\n Upload id: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpResponse:\n   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lldc;)Llby;
    .locals 7

    iget-object v0, p0, Llpu;->c:Ljava/lang/Object;

    check-cast v0, Lldh;

    iget-object v0, v0, Lldh;->a:Llax;

    iget-object v0, v0, Llbk;->b:Llbd;

    iget-object v1, p1, Llbk;->b:Llbd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v0, Llby;

    iget v2, p0, Llpu;->a:I

    iget-object v1, p0, Llpu;->c:Ljava/lang/Object;

    iget-object v3, p0, Llpu;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Llck;

    move-object v3, v1

    check-cast v3, Lldh;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Llby;-><init>(ILldh;Llck;Lldc;[B)V

    return-object v0
.end method

.method protected final varargs d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs e(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Llpu;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Llpu;->d(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final varargs f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Llpu;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Llpu;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final g()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Llpu;->b:Ljava/lang/Object;

    check-cast v0, Llg;

    iget-object v0, v0, Llg;->e:Lkm;

    return-object v0
.end method
