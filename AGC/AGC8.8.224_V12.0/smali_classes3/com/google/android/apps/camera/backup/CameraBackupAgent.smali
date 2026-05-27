.class public Lcom/google/android/apps/camera/backup/CameraBackupAgent;
.super Ljtv;


# instance fields
.field public a:Lfbz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljtv;-><init>()V

    return-void
.end method

.method private final e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->a:Lfbz;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lemj;

    const-class v1, Lclx;

    invoke-interface {v0, v1}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v0

    check-cast v0, Lclx;

    invoke-interface {v0, p0}, Lclx;->a(Lcom/google/android/apps/camera/backup/CameraBackupAgent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljvd;

    invoke-direct {v1}, Ljvd;-><init>()V

    invoke-static {v0, v1}, Lmwa;->n(Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object v0

    return-object v0
.end method

.method public final onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljtv;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->e()V

    iget-object p1, p0, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->a:Lfbz;

    invoke-interface {p1}, Lfbz;->j()V

    return-void
.end method

.method public final onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljtv;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    invoke-direct {p0}, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->e()V

    iget-object p1, p0, Lcom/google/android/apps/camera/backup/CameraBackupAgent;->a:Lfbz;

    invoke-interface {p1}, Lfbz;->k()V

    return-void
.end method
