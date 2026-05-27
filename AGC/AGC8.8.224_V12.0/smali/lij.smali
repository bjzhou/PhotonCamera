.class public final Llij;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Limm;

    invoke-direct {v0}, Limm;-><init>()V

    iput-object v0, p0, Llij;->c:Ljava/lang/Object;

    new-instance v0, Limm;

    invoke-direct {v0}, Limm;-><init>()V

    iput-object v0, p0, Llij;->d:Ljava/lang/Object;

    new-instance v0, Limm;

    invoke-direct {v0}, Limm;-><init>()V

    iput-object v0, p0, Llij;->b:Ljava/lang/Object;

    new-instance v0, Limm;

    invoke-direct {v0}, Limm;-><init>()V

    iput-object v0, p0, Llij;->f:Ljava/lang/Object;

    new-instance v0, Ljew;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljew;-><init>([B)V

    iput-object v0, p0, Llij;->g:Ljava/lang/Object;

    new-instance v0, Ljew;

    invoke-direct {v0, v1}, Ljew;-><init>([B)V

    iput-object v0, p0, Llij;->a:Ljava/lang/Object;

    new-instance v0, Limm;

    invoke-direct {v0}, Limm;-><init>()V

    iput-object v0, p0, Llij;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProvider;Landroid/content/Context;Lgkr;Lbkc;Ldzl;Landroid/content/UriMatcher;Lkbc;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llij;->e:Ljava/lang/Object;

    iput-object p2, p0, Llij;->g:Ljava/lang/Object;

    iput-object p3, p0, Llij;->f:Ljava/lang/Object;

    iput-object p4, p0, Llij;->a:Ljava/lang/Object;

    iput-object p5, p0, Llij;->b:Ljava/lang/Object;

    iput-object p6, p0, Llij;->c:Ljava/lang/Object;

    iput-object p7, p0, Llij;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laxd;Lva;Lbbd;Landroidx/work/impl/WorkDatabase;Lbcj;Ljava/util/List;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Lek;

    const/4 v0, 0x0

    invoke-direct {p8, v0}, Lek;-><init>([B)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Llij;->e:Ljava/lang/Object;

    iput-object p3, p0, Llij;->c:Ljava/lang/Object;

    iput-object p4, p0, Llij;->a:Ljava/lang/Object;

    iput-object p2, p0, Llij;->g:Ljava/lang/Object;

    iput-object p5, p0, Llij;->f:Ljava/lang/Object;

    iput-object p6, p0, Llij;->d:Ljava/lang/Object;

    iput-object p7, p0, Llij;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llij;->g:Ljava/lang/Object;

    iput-object p2, p0, Llij;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Llij;->a:Ljava/lang/Object;

    const p1, 0x7f0b0161

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    iput-object p1, p0, Llij;->d:Ljava/lang/Object;

    const p1, 0x7f0b014b

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/EyesFocusIndicatorRectView;

    iput-object p1, p0, Llij;->e:Ljava/lang/Object;

    const p1, 0x7f0b0163

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iput-object p1, p0, Llij;->b:Ljava/lang/Object;

    const p1, 0x7f0b0164

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    iput-object p1, p0, Llij;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lell;Lfey;Ljwb;Ljvq;[B[B)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Llij;->d:Ljava/lang/Object;

    move-object v1, p2

    iput-object v1, v0, Llij;->a:Ljava/lang/Object;

    move-object v1, p4

    iput-object v1, v0, Llij;->f:Ljava/lang/Object;

    move-object v1, p3

    iput-object v1, v0, Llij;->c:Ljava/lang/Object;

    move-object/from16 v1, p5

    iput-object v1, v0, Llij;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f14052f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0xc

    move-object v6, p1

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Llij;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0xbb8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f14026a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v10, 0xc

    move-object v7, p1

    invoke-static/range {v2 .. v10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Llij;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbtp;Lbkb;Lbtx;Lbtx;Lbtx;[B[B)V
    .locals 14

    move-object v11, p0

    move-object v0, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v11, Llij;->c:Ljava/lang/Object;

    new-instance v12, Lbsa;

    const/4 v1, 0x0

    move-object/from16 v2, p2

    invoke-direct {v12, v2, v1, v1}, Lbsa;-><init>(Lbkb;[B[B)V

    iput-object v12, v11, Llij;->b:Ljava/lang/Object;

    new-instance v2, Lbrk;

    invoke-direct {v2}, Lbrk;-><init>()V

    iput-object v2, v11, Llij;->e:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    new-instance v2, Ldne;

    invoke-direct {v2, v1, v1, v1, v1}, Ldne;-><init>([B[B[B[B)V

    iput-object v2, v11, Llij;->f:Ljava/lang/Object;

    new-instance v13, Ldfa;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v10}, Ldfa;-><init>(Lbtx;Lbtx;Lbtx;Llij;Llij;[B[B[B[B)V

    iput-object v13, v11, Llij;->a:Ljava/lang/Object;

    new-instance v1, Liks;

    move-object v2, v12

    check-cast v2, Lbsa;

    invoke-direct {v1, v12}, Liks;-><init>(Lbsa;)V

    iput-object v1, v11, Llij;->g:Ljava/lang/Object;

    new-instance v1, Lkaj;

    invoke-direct {v1}, Lkaj;-><init>()V

    iput-object v1, v11, Llij;->d:Ljava/lang/Object;

    iput-object v11, v0, Lbtp;->a:Llij;

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lva;Llsz;Ljava/util/Map;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Llij;->b:Ljava/lang/Object;

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Llij;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llij;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Llij;->e:Ljava/lang/Object;

    iput-object p3, p0, Llij;->g:Ljava/lang/Object;

    iput-object p4, p0, Llij;->d:Ljava/lang/Object;

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lmoz;->e(Z)V

    sget-object p1, Letf;->h:Letf;

    iput-object p1, p0, Llij;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljwb;Ljwb;Lgzw;Ldja;Lgzm;Lgzn;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llij;->a:Ljava/lang/Object;

    iput-object p2, p0, Llij;->e:Ljava/lang/Object;

    iput-object p3, p0, Llij;->g:Ljava/lang/Object;

    iput-object p4, p0, Llij;->c:Ljava/lang/Object;

    iput-object p5, p0, Llij;->d:Ljava/lang/Object;

    iput-object p6, p0, Llij;->b:Ljava/lang/Object;

    iput-object p7, p0, Llij;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lken;Lkgq;Lkfj;Lfyz;Lggm;Lkbc;Lghh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llij;->f:Ljava/lang/Object;

    iput-object p2, p0, Llij;->c:Ljava/lang/Object;

    iput-object p3, p0, Llij;->d:Ljava/lang/Object;

    iput-object p4, p0, Llij;->e:Ljava/lang/Object;

    iput-object p5, p0, Llij;->g:Ljava/lang/Object;

    iput-object p6, p0, Llij;->b:Ljava/lang/Object;

    iput-object p7, p0, Llij;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkqt;Llhe;Lkpo;Lkqa;Ljava/util/concurrent/Executor;Lkbc;Lkaq;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llij;->f:Ljava/lang/Object;

    iput-object p2, p0, Llij;->a:Ljava/lang/Object;

    iput-object p3, p0, Llij;->b:Ljava/lang/Object;

    iput-object p4, p0, Llij;->d:Ljava/lang/Object;

    iput-object p5, p0, Llij;->e:Ljava/lang/Object;

    iput-object p6, p0, Llij;->c:Ljava/lang/Object;

    const-string p1, "MediaGroup"

    invoke-interface {p7, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Llij;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;Lkad;Lken;Lgxb;Lkli;Ljava/util/concurrent/atomic/AtomicBoolean;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llij;->c:Ljava/lang/Object;

    iput-object p1, p0, Llij;->f:Ljava/lang/Object;

    iput-object p3, p0, Llij;->g:Ljava/lang/Object;

    iput-object p4, p0, Llij;->b:Ljava/lang/Object;

    iput-object p5, p0, Llij;->e:Ljava/lang/Object;

    iput-object p6, p0, Llij;->d:Ljava/lang/Object;

    iput-object p7, p0, Llij;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llij;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Llij;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Llij;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Llij;->d:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Llij;->e:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Llij;->f:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Llij;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llij;->b:Ljava/lang/Object;

    iput-object p2, p0, Llij;->f:Ljava/lang/Object;

    iput-object p3, p0, Llij;->a:Ljava/lang/Object;

    iput-object p4, p0, Llij;->g:Ljava/lang/Object;

    iput-object p5, p0, Llij;->c:Ljava/lang/Object;

    iput-object p6, p0, Llij;->d:Ljava/lang/Object;

    iput-object p7, p0, Llij;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llij;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Llij;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Llij;->a:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Llij;->c:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Llij;->d:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Llij;->g:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Llij;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llij;->a:Ljava/lang/Object;

    iput-object p2, p0, Llij;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Llij;->f:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Llij;->e:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Llij;->g:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Llij;->b:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Llij;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llij;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Llij;->g:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Llij;->e:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Llij;->f:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Llij;->d:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Llij;->a:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Llij;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Llij;->a:Ljava/lang/Object;

    iput-object p2, p0, Llij;->d:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Llij;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Llij;->g:Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Llij;->f:Ljava/lang/Object;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Llij;->e:Ljava/lang/Object;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Llij;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lvg;Lva;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Llij;->g:Ljava/lang/Object;

    iput-object p1, p0, Llij;->f:Ljava/lang/Object;

    iput-object p2, p0, Llij;->e:Ljava/lang/Object;

    new-instance v9, Lvc;

    move-object v0, p0

    check-cast v0, Llij;

    move-object v0, p1

    check-cast v0, Lvg;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lvc;-><init>(Lvg;Llij;I[B[B[B[B[B)V

    invoke-static {v9}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    iput-object v0, p0, Llij;->c:Ljava/lang/Object;

    new-instance v9, Lvc;

    move-object v0, p0

    check-cast v0, Llij;

    move-object v0, p1

    check-cast v0, Lvg;

    const/4 v3, 0x7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lvc;-><init>(Lvg;Llij;I[B[B[B[B[B)V

    iput-object v9, p0, Llij;->a:Ljava/lang/Object;

    new-instance v9, Lvc;

    const/4 v3, 0x2

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lvc;-><init>(Lvg;Llij;I[B[B[B[B[B)V

    invoke-static {v9}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    iput-object v0, p0, Llij;->b:Ljava/lang/Object;

    new-instance v9, Lvc;

    move-object v0, p0

    check-cast v0, Llij;

    move-object v0, p1

    check-cast v0, Lvg;

    const/4 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lvc;-><init>(Lvg;Llij;I[B[B[B[B[B)V

    invoke-static {v9}, Logj;->b(Loiw;)Loiw;

    move-result-object v0

    iput-object v0, p0, Llij;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final l(Limm;Ljew;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v0}, Limm;->a(Limm;Limm;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v8, 0x3fc5555560000000L    # 0.1666666716337204

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v2, v6

    if-gez v14, :cond_0

    mul-double v2, v2, v8

    sub-double v2, v12, v2

    goto :goto_0

    :cond_0
    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v14, v2, v6

    if-gez v14, :cond_1

    const-wide v4, 0x3fa5555560000000L    # 0.0416666679084301

    mul-double v4, v4, v2

    sub-double/2addr v10, v4

    mul-double v2, v2, v8

    sub-double v4, v12, v2

    mul-double v2, v2, v4

    sub-double v2, v12, v2

    goto :goto_0

    :cond_1
    div-double v2, v12, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    sub-double v4, v12, v4

    mul-double v2, v2, v2

    mul-double v10, v4, v2

    move-wide v2, v6

    :goto_0
    iget-wide v4, v0, Limm;->a:D

    mul-double v4, v4, v4

    iget-wide v6, v0, Limm;->b:D

    mul-double v6, v6, v6

    iget-wide v8, v0, Limm;->c:D

    mul-double v8, v8, v8

    add-double v14, v6, v8

    mul-double v14, v14, v10

    sub-double v14, v12, v14

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v12, v14, v15}, Ljew;->h(IID)V

    add-double/2addr v8, v4

    mul-double v8, v8, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v8, v13, v8

    const/4 v15, 0x1

    invoke-virtual {v1, v15, v15, v8, v9}, Ljew;->h(IID)V

    add-double/2addr v4, v6

    mul-double v4, v4, v10

    sub-double v4, v13, v4

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v6, v4, v5}, Ljew;->h(IID)V

    iget-wide v4, v0, Limm;->c:D

    mul-double v4, v4, v2

    iget-wide v7, v0, Limm;->a:D

    iget-wide v13, v0, Limm;->b:D

    mul-double v7, v7, v13

    mul-double v7, v7, v10

    sub-double v13, v7, v4

    invoke-virtual {v1, v12, v15, v13, v14}, Ljew;->h(IID)V

    add-double/2addr v7, v4

    invoke-virtual {v1, v15, v12, v7, v8}, Ljew;->h(IID)V

    iget-wide v4, v0, Limm;->b:D

    mul-double v4, v4, v2

    iget-wide v7, v0, Limm;->a:D

    iget-wide v13, v0, Limm;->c:D

    mul-double v7, v7, v13

    mul-double v7, v7, v10

    add-double v13, v7, v4

    invoke-virtual {v1, v12, v6, v13, v14}, Ljew;->h(IID)V

    sub-double/2addr v7, v4

    invoke-virtual {v1, v6, v12, v7, v8}, Ljew;->h(IID)V

    iget-wide v4, v0, Limm;->a:D

    mul-double v2, v2, v4

    iget-wide v4, v0, Limm;->b:D

    iget-wide v7, v0, Limm;->c:D

    mul-double v4, v4, v7

    mul-double v10, v10, v4

    sub-double v4, v10, v2

    invoke-virtual {v1, v15, v6, v4, v5}, Ljew;->h(IID)V

    add-double/2addr v10, v2

    invoke-virtual {v1, v6, v15, v10, v11}, Ljew;->h(IID)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Llsn;)Llst;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Llsn;->a:Landroid/net/Uri;

    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llst;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6

    iget-object v1, p1, Llsn;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    const-string v5, "Uri must be hierarchical: %s"

    invoke-static {v4, v5, v1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    add-int/2addr v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v6, "pb"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Uri extension must be .pb: %s"

    invoke-static {v4, v6, v1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, Llsn;->b:Lnxy;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "Proto schema cannot be null"

    invoke-static {v1, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, p1, Llsn;->c:Llsh;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const-string v4, "Handler cannot be null"

    invoke-static {v1, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, p0, Llij;->d:Ljava/lang/Object;

    const-string v4, "singleproc"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llsv;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const-string v6, "No XDataStoreVariantFactory registered for ID %s"

    invoke-static {v3, v6, v4}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p1, Llsn;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v2, p1, Llsn;->a:Landroid/net/Uri;

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v2

    iget-object v4, p0, Llij;->a:Ljava/lang/Object;

    sget-object v5, Lnnv;->a:Lnnv;

    invoke-static {v2, v4, v5}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v2

    iget-object v4, p0, Llij;->c:Ljava/lang/Object;

    iget-object v5, p0, Llij;->e:Ljava/lang/Object;

    check-cast v5, Lva;

    invoke-virtual {v1, p1, v3, v4, v5}, Llsv;->a(Llsn;Ljava/lang/String;Ljava/util/concurrent/Executor;Lva;)Llsu;

    move-result-object v1

    new-instance v3, Llst;

    invoke-direct {v3, v1, v2}, Llst;-><init>(Llsu;Lnou;)V

    iget-object v1, p1, Llsn;->d:Lmvv;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Llij;->c:Ljava/lang/Object;

    new-instance v4, Llsl;

    invoke-direct {v4, v1, v2}, Llsl;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v3, v4}, Llst;->c(Lnno;)V

    :cond_5
    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Llij;->f:Ljava/lang/Object;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    goto :goto_4

    :cond_6
    iget-object v4, p0, Llij;->f:Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llsn;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    :goto_4
    monitor-exit p0

    return-object v1

    :cond_7
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Llsn;->b:Lnxy;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p1, Llsn;->a:Landroid/net/Uri;

    aput-object v4, v1, v3

    const-string v4, "ProtoDataStoreConfig<%s> doesn\'t match previous call [uri=%s] [%s]"

    invoke-static {v4, v1}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Llsn;->a:Landroid/net/Uri;

    iget-object v5, v0, Llsn;->a:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "uri"

    invoke-static {v4, v1, v5}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p1, Llsn;->b:Lnxy;

    iget-object v5, v0, Llsn;->b:Lnxy;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "schema"

    invoke-static {v4, v1, v5}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p1, Llsn;->c:Llsh;

    iget-object v5, v0, Llsn;->c:Llsh;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "handler"

    invoke-static {v4, v1, v5}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p1, Llsn;->d:Lmvv;

    iget-object v5, v0, Llsn;->d:Lmvv;

    invoke-static {v4, v5}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "migrations"

    invoke-static {v4, v1, v5}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p1, Llsn;->f:Llkj;

    iget-object v5, v0, Llsn;->f:Llkj;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "variantConfig"

    invoke-static {v4, v1, v5}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p1, Llsn;->e:Z

    iget-boolean v0, v0, Llsn;->e:Z

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    const-string v0, "useGeneratedExtensionRegistry"

    invoke-static {p1, v1, v0}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    const-string p1, "enableTracing"

    invoke-static {v3, v1, p1}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "unknown"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;
    .locals 15

    move-object v0, p0

    new-instance v14, Lmap;

    iget-object v1, v0, Llij;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Llih;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Llij;->b:Ljava/lang/Object;

    iget-object v1, v0, Llij;->c:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Llgf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Llij;->d:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v6, v0, Llij;->e:Ljava/lang/Object;

    iget-object v5, v0, Llij;->f:Ljava/lang/Object;

    check-cast v5, Logl;

    iget-object v5, v5, Logl;->a:Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, Lmqp;

    iget-object v5, v0, Llij;->g:Ljava/lang/Object;

    check-cast v5, Logl;

    iget-object v5, v5, Logl;->a:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Lmqp;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    check-cast v5, Lkte;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v14

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v13}, Lmap;-><init>(Llih;Loiw;Llgf;Lkte;Loiw;Lmqp;Lmqp;Ljava/util/concurrent/Executor;Logd;Loiw;[B[B)V

    return-object v14
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Llij;->b:Ljava/lang/Object;

    sget-object v1, Lgzd;->V:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v1, Lgzd;->V:Lgzr;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Llij;->a:Ljava/lang/Object;

    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    sget-object v2, Lgzd;->X:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->e:Ljava/lang/Object;

    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    sget-object v2, Lgzd;->Y:Lgzu;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v1, Lgzd;->ax:Lgzs;

    iget-object v2, p0, Llij;->b:Ljava/lang/Object;

    sget-object v3, Lgzd;->Z:Lgzs;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v1, Lgzd;->B:Lgzr;

    iget-object v2, p0, Llij;->b:Ljava/lang/Object;

    sget-object v3, Lgzd;->aa:Lgzr;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->g:Ljava/lang/Object;

    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    sget-object v2, Lgzd;->ab:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->c:Ljava/lang/Object;

    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    sget-object v2, Lgzd;->ac:Lgzu;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lgyw;->a(Ljava/lang/String;)Lgyw;

    move-result-object v1

    check-cast v0, Ljwi;

    invoke-virtual {v0, v1}, Ljwi;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    iget-object v1, p0, Llij;->b:Ljava/lang/Object;

    sget-object v2, Lgzd;->ad:Lgzu;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lgyr;->a(Ljava/lang/String;)Lgyr;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Llij;->b:Ljava/lang/Object;

    sget-object v1, Lgzd;->V:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->V:Lgzr;

    invoke-interface {v0, v2, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->X:Lgzr;

    iget-object v3, p0, Llij;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->Y:Lgzu;

    iget-object v3, p0, Llij;->e:Ljava/lang/Object;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->Z:Lgzs;

    iget-object v3, p0, Llij;->b:Ljava/lang/Object;

    sget-object v4, Lgzd;->ax:Lgzs;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->aa:Lgzr;

    iget-object v3, p0, Llij;->b:Ljava/lang/Object;

    sget-object v4, Lgzd;->B:Lgzr;

    invoke-interface {v3, v4}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->ab:Lgzr;

    iget-object v3, p0, Llij;->g:Ljava/lang/Object;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->ac:Lgzu;

    iget-object v3, p0, Llij;->c:Ljava/lang/Object;

    check-cast v3, Ljwi;

    invoke-virtual {v3}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyw;

    invoke-virtual {v3}, Lgyw;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->ad:Lgzu;

    iget-object v3, p0, Llij;->d:Ljava/lang/Object;

    check-cast v3, Ldja;

    iget-object v3, v3, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgyr;

    invoke-virtual {v3}, Lgyr;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->e:Ljava/lang/Object;

    const-string v4, "medium"

    invoke-interface {v0, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v4, Lgzd;->ax:Lgzs;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v2, Lgzd;->B:Lgzr;

    invoke-interface {v0, v2, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->g:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->c:Ljava/lang/Object;

    sget-object v1, Lgyw;->a:Lgyw;

    check-cast v0, Ljwi;

    invoke-virtual {v0, v1}, Ljwi;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    sget-object v1, Lgyr;->c:Lgyr;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lhlv;)V
    .locals 6

    iget-wide v0, p1, Lhlv;->b:J

    const-wide/32 v2, 0x3b9aca00

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Llij;->b:Ljava/lang/Object;

    sget-object v1, Lgzd;->V:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llij;->b:Ljava/lang/Object;

    sget-object v1, Lgzd;->W:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llij;->c()V

    :cond_0
    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    sget-object v1, Lgzd;->W:Lgzr;

    iget-wide v4, p1, Lhlv;->b:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method

.method public final f()Lgam;
    .locals 14

    invoke-static {}, Lkfh;->a()Lkff;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lkff;->b(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lkff;->c(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lkff;->e(I)V

    invoke-virtual {v0, v2}, Lkff;->d(Z)V

    invoke-virtual {v0}, Lkff;->a()Lkfh;

    move-result-object v11

    new-instance v0, Lgai;

    new-instance v13, Lgid;

    iget-object v4, p0, Llij;->f:Ljava/lang/Object;

    iget-object v5, p0, Llij;->d:Ljava/lang/Object;

    iget-object v3, p0, Llij;->c:Ljava/lang/Object;

    iget-object v7, p0, Llij;->e:Ljava/lang/Object;

    iget-object v9, p0, Llij;->a:Ljava/lang/Object;

    iget-object v6, p0, Llij;->g:Ljava/lang/Object;

    iget-object v12, p0, Llij;->b:Ljava/lang/Object;

    move-object v10, v6

    check-cast v10, Lggm;

    move-object v6, v3

    check-cast v6, Lkgq;

    const/4 v8, 0x1

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lgid;-><init>(Lken;Lkfj;Lkgq;Lfyz;ILghh;Lggm;Lkfh;Lkbc;)V

    invoke-direct {v0, v13, v1, v2}, Lgai;-><init>(Lgam;IZ)V

    return-object v0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Llij;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lgxb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llij;->a:Ljava/lang/Object;

    sget-object v1, Ldhy;->j:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llij;->e:Ljava/lang/Object;

    invoke-interface {v0}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->b:Lklv;

    invoke-virtual {v0, v1}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Liuy;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Liuy;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Llij;->b:Ljava/lang/Object;

    iget-object v3, p0, Llij;->e:Ljava/lang/Object;

    check-cast v2, Lgxb;

    invoke-virtual {v2, v3}, Lgxb;->d(Lkli;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Llij;->g:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lken;->j(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final h(Landroid/net/Uri;I)Landroid/os/ParcelFileDescriptor;
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Llij;->a:Ljava/lang/Object;

    iget-object v2, p0, Llij;->g:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    check-cast v1, Lbkc;

    iget-object v1, v1, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_8

    instance-of p1, v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v1, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const v1, 0x7f070596

    if-ne p2, v1, :cond_1

    const/16 p2, 0x14

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x0

    invoke-virtual {v2, p1, p2, p2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v1

    :cond_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    aget-object v2, v1, v4

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x64

    :try_start_2
    invoke-virtual {p1, p2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :cond_2
    :goto_2
    return-object v2

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v3, v1

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v0, v3

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p2

    :cond_4
    :goto_5
    throw p1

    :catch_6
    move-exception p1

    move-object v0, v3

    :goto_6
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception p1

    :cond_6
    :goto_8
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1

    :cond_8
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource is not found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final declared-synchronized i(Lbsf;Lbqb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llij;->f:Ljava/lang/Object;

    check-cast v0, Ldne;

    invoke-virtual {v0, p2, p1}, Ldne;->H(Lbqb;Lbsf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Lbsf;Lbqb;Lbsh;)V
    .locals 1

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v0, p3, Lbsh;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llij;->e:Ljava/lang/Object;

    check-cast v0, Lbrk;

    invoke-virtual {v0, p2, p3}, Lbrk;->b(Lbqb;Lbsh;)V

    :cond_0
    iget-object p3, p0, Llij;->f:Ljava/lang/Object;

    check-cast p3, Ldne;

    invoke-virtual {p3, p2, p1}, Ldne;->H(Lbqb;Lbsf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final k(Limm;Limm;Ljew;)V
    .locals 8

    invoke-virtual {p3}, Ljew;->k()V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    check-cast v0, Limm;

    invoke-static {p1, p2, v0}, Limm;->c(Limm;Limm;Limm;)V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    check-cast v0, Limm;

    invoke-virtual {v0}, Limm;->b()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Llij;->b:Ljava/lang/Object;

    check-cast v0, Limm;

    invoke-virtual {v0, p1}, Limm;->f(Limm;)V

    iget-object p1, p0, Llij;->f:Ljava/lang/Object;

    check-cast p1, Limm;

    invoke-virtual {p1, p2}, Limm;->f(Limm;)V

    iget-object p1, p0, Llij;->d:Ljava/lang/Object;

    check-cast p1, Limm;

    invoke-virtual {p1}, Limm;->d()V

    iget-object p1, p0, Llij;->b:Ljava/lang/Object;

    check-cast p1, Limm;

    invoke-virtual {p1}, Limm;->d()V

    iget-object p1, p0, Llij;->f:Ljava/lang/Object;

    check-cast p1, Limm;

    invoke-virtual {p1}, Limm;->d()V

    iget-object p1, p0, Llij;->g:Ljava/lang/Object;

    iget-object p2, p0, Llij;->b:Ljava/lang/Object;

    check-cast p2, Limm;

    check-cast p1, Ljew;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljew;->j(ILimm;)V

    iget-object p2, p0, Llij;->d:Ljava/lang/Object;

    check-cast p2, Limm;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Ljew;->j(ILimm;)V

    iget-object p2, p0, Llij;->d:Ljava/lang/Object;

    iget-object v2, p0, Llij;->b:Ljava/lang/Object;

    iget-object v3, p0, Llij;->c:Ljava/lang/Object;

    check-cast v3, Limm;

    check-cast v2, Limm;

    check-cast p2, Limm;

    invoke-static {p2, v2, v3}, Limm;->c(Limm;Limm;Limm;)V

    iget-object p2, p0, Llij;->c:Ljava/lang/Object;

    check-cast p2, Limm;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2}, Ljew;->j(ILimm;)V

    iget-object p2, p0, Llij;->a:Ljava/lang/Object;

    iget-object v3, p0, Llij;->f:Ljava/lang/Object;

    check-cast v3, Limm;

    check-cast p2, Ljew;

    invoke-virtual {p2, v0, v3}, Ljew;->j(ILimm;)V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    check-cast v0, Limm;

    invoke-virtual {p2, v1, v0}, Ljew;->j(ILimm;)V

    iget-object v0, p0, Llij;->d:Ljava/lang/Object;

    iget-object v3, p0, Llij;->f:Ljava/lang/Object;

    iget-object v4, p0, Llij;->c:Ljava/lang/Object;

    check-cast v4, Limm;

    check-cast v3, Limm;

    check-cast v0, Limm;

    invoke-static {v0, v3, v4}, Limm;->c(Limm;Limm;Limm;)V

    iget-object v0, p0, Llij;->c:Ljava/lang/Object;

    check-cast v0, Limm;

    invoke-virtual {p2, v2, v0}, Ljew;->j(ILimm;)V

    iget-object v0, p1, Ljew;->a:Ljava/lang/Object;

    check-cast v0, [D

    aget-wide v3, v0, v1

    const/4 v5, 0x3

    aget-wide v6, v0, v5

    aput-wide v6, v0, v1

    aput-wide v3, v0, v5

    aget-wide v3, v0, v2

    const/4 v1, 0x6

    aget-wide v5, v0, v1

    aput-wide v5, v0, v2

    aput-wide v3, v0, v1

    const/4 v1, 0x5

    aget-wide v2, v0, v1

    const/4 v4, 0x7

    aget-wide v5, v0, v4

    aput-wide v5, v0, v1

    aput-wide v2, v0, v4

    invoke-static {p2, p1, p3}, Ljew;->q(Ljew;Ljew;Ljew;)V

    return-void
.end method

.method public final m(Lkqs;Llhe;Lkpr;Lkpj;)V
    .locals 5

    iget-object v0, p0, Llij;->a:Ljava/lang/Object;

    iget-object v1, p4, Lkpj;->e:Lkqq;

    invoke-interface {v1}, Lkqq;->i()Lkqy;

    move-result-object v1

    iget-object v1, v1, Lkqy;->e:Ljava/lang/String;

    invoke-static {v1}, Lkqi;->a(Ljava/lang/String;)Lkqi;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lkqi;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Llhe;

    iget-object v1, v1, Llhe;->a:Ljava/lang/Object;

    check-cast v1, Lkqa;

    iget-object v1, v1, Lkqa;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkqi;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Llhe;

    iget-object v1, v1, Llhe;->a:Ljava/lang/Object;

    check-cast v1, Lkqa;

    iget-object v1, v1, Lkqa;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Llhe;

    iget-object v1, v1, Llhe;->a:Ljava/lang/Object;

    check-cast v1, Lkqa;

    iget-object v1, v1, Lkqa;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lkpr;->b:J

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    check-cast v0, Llhe;

    iget-object v3, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v3, Lkqa;

    iget-object v3, v3, Lkqa;->k:Ljava/text/DateFormat;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lkpr;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lkpr;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object p2, p2, Llhe;->a:Ljava/lang/Object;

    check-cast p2, Landroid/util/ArrayMap;

    invoke-virtual {p2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_1
    if-lez p2, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v3, Lkqa;

    iget v3, v3, Lkqa;->g:I

    invoke-static {v1, v3}, Llkj;->G(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v3, Lkqa;

    iget-boolean v3, v3, Lkqa;->i:Z

    if-eqz v3, :cond_4

    iget-object v3, p3, Lkpr;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Llhe;->a:Ljava/lang/Object;

    check-cast v3, Lkqa;

    iget-object v3, v3, Lkqa;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    iget-object v1, p4, Lkpj;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lkpj;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p3, Lkpr;->e:Lmwn;

    invoke-virtual {v1}, Lmwn;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_7

    if-lez p2, :cond_7

    iget-object p2, p3, Lkpr;->d:Lkpj;

    if-ne p4, p2, :cond_7

    const-string p2, "."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Llhe;->a:Ljava/lang/Object;

    check-cast p2, Lkqa;

    iget-object p2, p2, Lkqa;->f:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p4, Lkpj;->e:Lkqq;

    invoke-interface {v0}, Lkqq;->i()Lkqy;

    move-result-object v0

    iget-object v1, p0, Llij;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Lkqy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " based on info: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p3, v0, Lkqy;->a:Lkqr;

    iget-object v1, v0, Lkqy;->b:Ljava/lang/String;

    iget-object v2, v0, Lkqy;->d:Ljava/lang/String;

    iget-object v0, v0, Lkqy;->e:Ljava/lang/String;

    invoke-static {p3, v1, p2, v2, v0}, Lkqy;->a(Lkqr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkqy;

    move-result-object p2

    iget-object p3, p4, Lkpj;->e:Lkqq;

    iget-object p4, p4, Lkpj;->d:Lkqu;

    invoke-interface {p1, p3, p2, p4}, Lkqs;->b(Lkqq;Lkqy;Lkqu;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
