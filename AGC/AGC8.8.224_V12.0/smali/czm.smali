.class public final Lczm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final f:Landroid/net/Uri;

.field private static final g:Landroid/net/Uri;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public b:Lczj;

.field public c:Lczj;

.field public d:Z

.field public e:Z

.field private final h:Lhrz;

.field private final i:Landroid/content/Context;

.field private final j:Ljava/util/concurrent/ScheduledExecutorService;

.field private k:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

.field private l:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

.field private m:Landroid/view/View;

.field private final n:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://www.gstatic.com/aiux/gca/experimental/sdr_peppers.mp4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lczm;->f:Landroid/net/Uri;

    const-string v0, "https://www.gstatic.com/aiux/gca/experimental/hdr_peppers.mp4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lczm;->g:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lhrz;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    iput-boolean p6, p0, Lczm;->d:Z

    iput-boolean p6, p0, Lczm;->e:Z

    iput-object p1, p0, Lczm;->h:Lhrz;

    iput-object p2, p0, Lczm;->n:Ligo;

    iput-object p3, p0, Lczm;->i:Landroid/content/Context;

    iput-object p4, p0, Lczm;->a:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lczm;->j:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lczm;->m:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, v0, Lczm;->i:Landroid/content/Context;

    const v2, 0x7f0e005c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lczm;->m:Landroid/view/View;

    :cond_0
    iget-object v1, v0, Lczm;->m:Landroid/view/View;

    const v2, 0x7f0b0186

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iput-object v1, v0, Lczm;->k:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v1, v0, Lczm;->m:Landroid/view/View;

    const v2, 0x7f0b0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iput-object v1, v0, Lczm;->l:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v1, v0, Lczm;->b:Lczj;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lczm;->c:Lczj;

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lczj;

    iget-object v12, v0, Lczm;->k:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v13, v0, Lczm;->l:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v14, v0, Lczm;->n:Ligo;

    iget-object v15, v0, Lczm;->i:Landroid/content/Context;

    iget-object v11, v0, Lczm;->a:Ljava/util/concurrent/Executor;

    sget-object v8, Lczm;->f:Landroid/net/Uri;

    iget-object v10, v0, Lczm;->j:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v7, v11

    move-object v9, v10

    move-object/from16 v18, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Lczj;-><init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V

    iput-object v1, v0, Lczm;->b:Lczj;

    new-instance v1, Lczj;

    sget-object v8, Lczm;->g:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v1

    move-object v3, v13

    move-object v4, v12

    move-object/from16 v7, v16

    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v11}, Lczj;-><init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V

    iput-object v1, v0, Lczm;->c:Lczj;

    :cond_2
    iget-object v1, v0, Lczm;->b:Lczj;

    invoke-virtual {v1}, Lczj;->f()V

    iget-object v1, v0, Lczm;->b:Lczj;

    new-instance v2, Lctw;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3}, Lctw;-><init>(Lczm;I)V

    iput-object v2, v1, Lczj;->f:Ljava/lang/Runnable;

    invoke-virtual {v1}, Lczj;->b()V

    iget-object v1, v0, Lczm;->c:Lczj;

    invoke-virtual {v1}, Lczj;->f()V

    iget-object v1, v0, Lczm;->c:Lczj;

    new-instance v2, Lczl;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lczl;-><init>(Lczm;I)V

    iput-object v2, v1, Lczj;->f:Ljava/lang/Runnable;

    invoke-virtual {v1}, Lczj;->b()V

    iget-object v1, v0, Lczm;->k:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->g()V

    iget-object v1, v0, Lczm;->l:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->h()V

    iget-object v1, v0, Lczm;->h:Lhrz;

    iget-object v2, v0, Lczm;->m:Landroid/view/View;

    const/16 v3, 0xd

    const v4, 0x7f1401fd

    invoke-virtual {v1, v3, v4, v2, v0}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lczm;->m:Landroid/view/View;

    const v1, 0x7f0b0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lczm;->m:Landroid/view/View;

    const v2, 0x7f0b0185

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lczm;->b:Lczj;

    invoke-virtual {p1}, Lczj;->a()V

    iget-object p1, p0, Lczm;->c:Lczj;

    invoke-virtual {p1}, Lczj;->a()V

    return-void
.end method
