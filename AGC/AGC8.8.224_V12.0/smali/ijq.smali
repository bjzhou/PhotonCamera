.class public final Lijq;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field private final a:Loiw;

.field private final b:Landroid/content/Context;

.field private final c:Liox;

.field private final d:Liov;

.field private final e:Litm;

.field private final f:Libj;

.field private final g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final h:Leoa;

.field private final i:Ldhi;

.field private final j:Lgzm;

.field private final k:Lhrq;

.field private final l:Loiw;

.field private final m:Lmrl;


# direct methods
.method public constructor <init>(Loiw;Landroid/content/Context;Liox;Liov;Litm;Leoa;Libj;Lcom/google/android/apps/camera/bottombar/BottomBarController;Ldhi;Lgzm;Lhrq;Loiw;Lmrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijq;->a:Loiw;

    iput-object p2, p0, Lijq;->b:Landroid/content/Context;

    iput-object p3, p0, Lijq;->c:Liox;

    iput-object p4, p0, Lijq;->d:Liov;

    iput-object p5, p0, Lijq;->e:Litm;

    iput-object p7, p0, Lijq;->f:Libj;

    iput-object p8, p0, Lijq;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p6, p0, Lijq;->h:Leoa;

    iput-object p9, p0, Lijq;->i:Ldhi;

    iput-object p10, p0, Lijq;->j:Lgzm;

    iput-object p11, p0, Lijq;->k:Lhrq;

    iput-object p12, p0, Lijq;->l:Loiw;

    iput-object p13, p0, Lijq;->m:Lmrl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lijq;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldja;

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b02a6

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    new-instance v15, Lipj;

    iget-object v2, v0, Lijq;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v3}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Ljes;

    invoke-direct {v4, v2, v3}, Ljes;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v2, v0, Lijq;->k:Lhrq;

    iget-object v3, v0, Lijq;->f:Libj;

    iget-object v5, v0, Lijq;->m:Lmrl;

    invoke-interface {v3}, Libj;->x()Liaw;

    move-result-object v3

    new-instance v6, Lijm;

    invoke-direct {v6, v3, v5, v2}, Lijm;-><init>(Liaw;Lmrl;Lhrq;)V

    iget-object v2, v0, Lijq;->k:Lhrq;

    iget-object v3, v0, Lijq;->f:Libj;

    iget-object v5, v0, Lijq;->m:Lmrl;

    invoke-interface {v3}, Libj;->x()Liaw;

    move-result-object v3

    new-instance v7, Lijn;

    invoke-direct {v7, v3, v5, v2}, Lijn;-><init>(Liaw;Lmrl;Lhrq;)V

    iget-object v8, v0, Lijq;->d:Liov;

    iget-object v2, v0, Lijq;->c:Liox;

    iget-object v3, v0, Lijq;->l:Loiw;

    check-cast v3, Ldwo;

    invoke-virtual {v3}, Ldwo;->a()Ldww;

    move-result-object v3

    new-instance v9, Lijo;

    invoke-direct {v9, v2, v3}, Lijo;-><init>(Lipf;Ldww;)V

    iget-object v2, v0, Lijq;->e:Litm;

    new-instance v10, Lijp;

    invoke-direct {v10, v2}, Lijp;-><init>(Litm;)V

    iget-object v2, v0, Lijq;->e:Litm;

    iget-object v3, v0, Lijq;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    new-instance v11, Ljes;

    invoke-direct {v11, v2, v3}, Ljes;-><init>(Litm;Lcom/google/android/apps/camera/bottombar/BottomBarController;)V

    iget-object v2, v0, Lijq;->f:Libj;

    invoke-interface {v2}, Libj;->x()Liaw;

    move-result-object v2

    new-instance v12, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v12, v2}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Liaw;)V

    iget-object v2, v0, Lijq;->j:Lgzm;

    sget-object v3, Lgzd;->h:Lgzu;

    invoke-interface {v2, v3}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v13

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->getRootView()Landroid/view/View;

    move-result-object v14

    iget-object v5, v0, Lijq;->b:Landroid/content/Context;

    iget-object v3, v0, Lijq;->i:Ldhi;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v15

    move-object/from16 v19, v3

    move-object v3, v4

    move-object v4, v6

    move-object/from16 v20, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object/from16 v13, v20

    move-object/from16 v14, v19

    move-object/from16 v19, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Lipj;-><init>(Ljes;Lijm;Lijn;Lipc;Lipf;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Ljes;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Ljvs;Landroid/view/View;Landroid/content/Context;Ldhi;[B[B[B)V

    iget-object v2, v0, Lijq;->h:Leoa;

    iget-object v3, v1, Lipj;->p:Lenz;

    invoke-virtual {v2, v3}, Leoa;->a(Lenz;)V

    new-instance v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v2, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lipj;)V

    move-object/from16 v1, v19

    iput-object v2, v1, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method
