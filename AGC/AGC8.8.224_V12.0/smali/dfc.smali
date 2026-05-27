.class public final synthetic Ldfc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final synthetic b:F

.field public final synthetic c:F

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;FFI)V
    .locals 0

    iput p4, p0, Ldfc;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldfc;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iput p2, p0, Ldfc;->b:F

    iput p3, p0, Ldfc;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Ldfc;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldfc;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget v2, p0, Ldfc;->b:F

    iget v3, p0, Ldfc;->c:F

    iget-object v4, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfq;

    iput-boolean v1, v0, Ldfq;->i:Z

    iput v3, v0, Ldfq;->k:F

    iput v2, v0, Ldfq;->l:F

    iget v1, v0, Ldfq;->m:F

    invoke-static {v1, v3}, Ldez;->a(FF)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, v0, Ldfq;->n:F

    invoke-static {v1, v2}, Ldez;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Ldfc;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget v2, p0, Ldfc;->b:F

    iget v3, p0, Ldfc;->c:F

    iget-object v4, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfz;

    iput-boolean v1, v0, Ldfz;->h:Z

    new-instance v1, Lfha;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lfha;-><init>(FFJ)V

    iput-object v1, v0, Ldfz;->k:Lfha;

    iget-object v1, v0, Ldfz;->l:Lfha;

    if-nez v1, :cond_0

    iget-object v0, v0, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    return-void

    :cond_0
    iget v4, v1, Lfha;->c:F

    invoke-static {v2, v4}, Ldez;->a(FF)Z

    move-result v2

    if-nez v2, :cond_1

    iget v1, v1, Lfha;->b:F

    invoke-static {v3, v1}, Ldez;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, v0, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Ldfc;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget v2, p0, Ldfc;->b:F

    iget v3, p0, Ldfc;->c:F

    iget-object v4, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgl;

    iput-boolean v1, v0, Ldgl;->h:Z

    iput v3, v0, Ldgl;->i:F

    iput v2, v0, Ldgl;->j:F

    iget v1, v0, Ldgl;->k:F

    invoke-static {v1, v3}, Ldez;->a(FF)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Ldgl;->l:F

    invoke-static {v1, v2}, Ldez;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, v0, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    iput v2, v0, Ldgl;->l:F

    iput v3, v0, Ldgl;->k:F

    :cond_4
    return-void

    :cond_5
    :goto_0
    iget-object v1, v0, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    iput v2, v0, Ldfq;->n:F

    iput v3, v0, Ldfq;->m:F

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
