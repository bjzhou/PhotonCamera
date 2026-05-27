.class public final Lexw;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field final synthetic b:Lfxf;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lfxf;[B)V
    .locals 0

    iput-object p1, p0, Lexw;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iput-object p2, p0, Lexw;->b:Lfxf;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lexw;->a:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lexx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "The storage directory does not exist."

    const/16 v2, 0x7fc

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    iget-object v0, p0, Lexw;->b:Lfxf;

    iget-object v1, v0, Lfxf;->a:Ljava/lang/Object;

    check-cast v1, Lfng;

    iget-boolean v2, v1, Lfng;->G:Z

    if-eqz v2, :cond_2

    iget-object v1, v0, Lfxf;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v1, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    sget-object v2, Lewr;->a:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->CalibrateFieldOfViewDeg(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object v0, v0, Lfxf;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->s:Lcgy;

    invoke-interface {v0}, Lcgy;->s()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "photoSphereCalibratedFieldOfView"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Lexl;

    iget-object v3, v0, Lfxf;->b:Ljava/lang/Object;

    iget-object v4, v1, Lfng;->u:Lfbz;

    iget-object v5, v1, Lfng;->C:Ldzf;

    iget-object v1, v1, Lfng;->R:Ldym;

    check-cast v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    invoke-direct {v2, v3, v4, v5, v1}, Lexl;-><init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lfbz;Ldzf;Ldym;)V

    iget-object v1, v0, Lfxf;->a:Ljava/lang/Object;

    check-cast v1, Lfng;

    iget-object v1, v1, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v1, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    new-instance v3, Lfna;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lfna;-><init>(Lfxf;Ljava/lang/String;Lexl;[B)V

    invoke-virtual {v2, v3}, Lexl;->c(Ljzs;)V

    iget-object v0, v0, Lfxf;->a:Ljava/lang/Object;

    check-cast v0, Lfng;

    iget-object v0, v0, Lfng;->c:Lgqa;

    invoke-interface {v0, v2}, Lgqa;->b(Lgpx;)V

    return-void
.end method
