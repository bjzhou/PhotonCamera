.class public final synthetic Ldzt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldzu;

.field public final synthetic b:Lnph;

.field public final synthetic c:Lnph;


# direct methods
.method public synthetic constructor <init>(Ldzu;Lnph;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldzt;->a:Ldzu;

    iput-object p2, p0, Ldzt;->b:Lnph;

    iput-object p3, p0, Ldzt;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ldzt;->a:Ldzu;

    iget-object v1, p0, Ldzt;->b:Lnph;

    iget-object v2, p0, Ldzt;->c:Lnph;

    invoke-static {v1}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/opengl/EGLSync;

    invoke-static {v2}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/opengl/EGLDisplay;

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    invoke-static {v2, v1, v3, v4, v5}, Landroid/opengl/EGL15;->eglClientWaitSync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;IJ)I

    sget-boolean v3, Llat;->a:Z

    invoke-static {v2, v1}, Landroid/opengl/EGL15;->eglDestroySync(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSync;)Z

    :try_start_0
    iget-object v1, v0, Ldzu;->a:Ljava/lang/AutoCloseable;

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Ldzv;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x4cc

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    iget-object v0, v0, Ldzu;->a:Ljava/lang/AutoCloseable;

    const-string v3, "Error while closing resource %s: %s"

    invoke-interface {v2, v3, v0, v1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
