.class public final Lhie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnScrollChangeListener;
.implements Lhry;


# instance fields
.field public final a:Lhrz;

.field public final b:Landroid/content/Context;

.field public c:Lhim;

.field public d:Lhim;

.field public e:Z

.field private final f:Lgzn;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private i:I

.field private final j:Ligo;


# direct methods
.method public constructor <init>(Lhrz;Landroid/content/Context;Ligo;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lgzn;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    iput-boolean p7, p0, Lhie;->e:Z

    const/4 p7, 0x1

    iput p7, p0, Lhie;->i:I

    iput-object p1, p0, Lhie;->a:Lhrz;

    iput-object p2, p0, Lhie;->b:Landroid/content/Context;

    iput-object p3, p0, Lhie;->j:Ligo;

    iput-object p4, p0, Lhie;->g:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lhie;->h:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p6, p0, Lhie;->f:Lgzn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lhie;->f:Lgzn;

    sget-object v1, Lgzd;->H:Lgzr;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Lhie;->a:Lhrz;

    iput-object p0, v0, Lhrz;->f:Landroid/view/View$OnScrollChangeListener;

    iput-object p0, v0, Lhrz;->e:Lhry;

    iget-object v1, p0, Lhie;->b:Landroid/content/Context;

    const v2, 0x7f0e00fb

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b034b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lhsx;

    const-string v2, "https://www.gstatic.com/aiux/gca/cocktailparty/test_sample10_off.mp4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v2, Lhim;

    iget-object v6, p0, Lhie;->b:Landroid/content/Context;

    iget-object v7, p0, Lhie;->j:Ligo;

    iget-object v9, p0, Lhie;->g:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lhie;->h:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v12}, Lhim;-><init>(Lhsx;Landroid/net/Uri;Landroid/content/Context;Ligo;Lhie;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V

    iput-object v2, p0, Lhie;->c:Lhim;

    invoke-virtual {v2}, Lhim;->g()V

    const v2, 0x7f0b0348

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lhsx;

    const-string v2, "https://www.gstatic.com/aiux/gca/cocktailparty/test_sample10_on.mp4"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v2, Lhim;

    iget-object v6, p0, Lhie;->b:Landroid/content/Context;

    iget-object v7, p0, Lhie;->j:Ligo;

    iget-object v9, p0, Lhie;->g:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lhie;->h:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lhim;-><init>(Lhsx;Landroid/net/Uri;Landroid/content/Context;Ligo;Lhie;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V

    iput-object v2, p0, Lhie;->d:Lhim;

    invoke-virtual {v2}, Lhim;->g()V

    const/16 v2, 0xa

    const v3, 0x7f1404b3

    invoke-virtual {v0, v2, v3, v1, p0}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lhie;->i:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhie;->e:Z

    iput p1, p0, Lhie;->i:I

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lhie;->c:Lhim;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhim;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Lhie;->d:Lhim;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lhim;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    iget-object p1, p0, Lhie;->a:Lhrz;

    const/4 v0, 0x0

    iput-object v0, p1, Lhrz;->f:Landroid/view/View$OnScrollChangeListener;

    iput-object v0, p1, Lhrz;->e:Lhry;

    return-void
.end method

.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    iget p2, p0, Lhie;->i:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    iget-boolean p2, p0, Lhie;->e:Z

    if-nez p2, :cond_0

    new-instance p2, Lhdg;

    const/16 p3, 0xc

    invoke-direct {p2, p0, p1, p3}, Lhdg;-><init>(Lhie;Landroid/view/View;I)V

    const-wide/16 p3, 0xfa

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
