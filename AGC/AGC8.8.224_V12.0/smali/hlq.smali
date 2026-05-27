.class public final Lhlq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Ljuh;

.field public final c:Lfbz;

.field public d:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

.field public e:Lhlv;

.field public final f:Lhlw;

.field public final g:Llij;

.field private final h:Ldqx;


# direct methods
.method public constructor <init>(Llij;Lhlw;Ldqx;Ljava/util/concurrent/ScheduledExecutorService;Ljuh;Lfbz;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhlq;->g:Llij;

    iput-object p2, p0, Lhlq;->f:Lhlw;

    iput-object p3, p0, Lhlq;->h:Ldqx;

    iput-object p4, p0, Lhlq;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p5, p0, Lhlq;->b:Ljuh;

    iput-object p6, p0, Lhlq;->c:Lfbz;

    return-void
.end method

.method public static a(Landroid/content/Context;Ldhi;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->c()V

    const-string p1, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "pref_open_setting_page"

    const-string p1, "pref_category_storage"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "pref_make_setting_page_root"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 7

    iget-object v0, p0, Lhlq;->e:Lhlv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lhlq;->h:Ldqx;

    invoke-virtual {v1, v0}, Ldqx;->s(Lhlv;)Lhln;

    move-result-object v1

    iget-object v2, p0, Lhlq;->d:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    iget-wide v3, v0, Lhlv;->b:J

    iget-wide v5, v0, Lhlv;->c:J

    iget v0, v1, Lhln;->a:I

    iget v1, v1, Lhln;->b:I

    iput-wide v3, v2, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

    iput-wide v5, v2, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->b:J

    iput v0, v2, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->c:I

    iput v1, v2, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->d:I

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a()V

    :cond_0
    return-void
.end method
