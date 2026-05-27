.class final Lewy;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lewz;


# direct methods
.method public constructor <init>(Lewz;)V
    .locals 0

    iput-object p1, p0, Lewy;->a:Lewz;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    sget-object v0, Lewr;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lewr;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->UndoAddImage()Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lewy;->a:Lewz;

    iget-object v0, v0, Lewz;->d:Lexi;

    invoke-virtual {v0}, Lexi;->a()V

    iget-object v0, p0, Lewy;->a:Lewz;

    iget-object v0, v0, Lewz;->F:Leww;

    invoke-virtual {v0}, Leww;->c()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lewy;->a:Lewz;

    iget-object v0, v0, Lewz;->d:Lexi;

    invoke-virtual {v0}, Lexi;->d()V

    iget-object v0, p0, Lewy;->a:Lewz;

    iget v0, v0, Lewz;->G:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    invoke-static {v0, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lewy;->a:Lewz;

    iget-object v2, v2, Lewz;->d:Lexi;

    invoke-virtual {v2, v0}, Lexi;->b([F)V

    :cond_0
    iget-object v0, p0, Lewy;->a:Lewz;

    iget-object v2, v0, Lewz;->h:Lexg;

    iput-boolean v3, v2, Lexg;->g:Z

    iput-boolean v3, v2, Lexg;->h:Z

    iput v3, v2, Lexg;->f:I

    iget-object v2, v0, Lewz;->F:Leww;

    iget-object v2, v2, Leww;->F:Lexb;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iput-wide v3, v2, Lexb;->b:D

    iput-boolean v1, v0, Lewz;->n:Z

    iget-boolean v2, v0, Lewz;->w:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget v0, v0, Lewz;->x:I

    invoke-virtual {v2, v0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    :cond_1
    iget-object v0, p0, Lewy;->a:Lewz;

    iget-boolean v2, v0, Lewz;->w:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget-object v0, v0, Lewz;->F:Leww;

    iget v0, v0, Leww;->n:I

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->d(ZI)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "State is not ready."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
