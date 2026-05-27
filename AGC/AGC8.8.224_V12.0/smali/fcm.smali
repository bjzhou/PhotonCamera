.class public final Lfcm;
.super Ljava/lang/Object;

# interfaces
.implements Lhdy;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Lhec;

.field public c:Lheb;

.field public final d:Lflf;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lcmo;

.field public g:Z

.field public h:Ljava/util/concurrent/ScheduledFuture;

.field public i:Z

.field public final j:Ljew;

.field private final k:Landroid/content/res/Resources;

.field private final l:Lebl;

.field private m:Lkad;

.field private final n:Lebk;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lflf;Ljava/util/concurrent/ScheduledExecutorService;Lebl;Ljew;Lcmo;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Lfcl;

    invoke-direct {p7, p0}, Lfcl;-><init>(Lfcm;)V

    iput-object p7, p0, Lfcm;->n:Lebk;

    iput-object p1, p0, Lfcm;->k:Landroid/content/res/Resources;

    iput-object p2, p0, Lfcm;->d:Lflf;

    iput-object p3, p0, Lfcm;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lfcm;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lfcm;->l:Lebl;

    iput-object p5, p0, Lfcm;->j:Ljew;

    iput-object p6, p0, Lfcm;->f:Lcmo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfcm;->h:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final b(Lhec;)V
    .locals 3

    iput-object p1, p0, Lfcm;->b:Lhec;

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object p1

    iget-object v0, p0, Lfcm;->k:Landroid/content/res/Resources;

    const v1, 0x7f140093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lhea;->a:Ljava/lang/String;

    iget-object v0, p0, Lfcm;->k:Landroid/content/res/Resources;

    const v1, 0x7f080326

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v0, Levi;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Levi;-><init>(Lfcm;I)V

    iput-object v0, p1, Lhea;->g:Ljava/lang/Runnable;

    new-instance v0, Levi;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Levi;-><init>(Lfcm;I)V

    iput-object v0, p1, Lhea;->c:Ljava/lang/Runnable;

    new-instance v0, Levi;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Levi;-><init>(Lfcm;I)V

    iput-object v0, p1, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lhea;->a()Lheb;

    move-result-object p1

    iput-object p1, p0, Lfcm;->c:Lheb;

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lfcm;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lfcm;->m:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lfcm;->l:Lebl;

    iget-object v1, p0, Lfcm;->n:Lebk;

    invoke-virtual {v0, v1}, Lebl;->e(Lebk;)Lkad;

    move-result-object v0

    iput-object v0, p0, Lfcm;->m:Lkad;

    return-void
.end method
