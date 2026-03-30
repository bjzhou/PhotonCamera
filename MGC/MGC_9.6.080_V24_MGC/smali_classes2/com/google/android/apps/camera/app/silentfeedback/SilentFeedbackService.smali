.class public final Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    if-lt p1, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :catch_0
    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const p2, 0x645b68

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    :try_start_0
    iget p2, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->b:I

    nop

    nop

    nop

    add-int/lit8 p2, p2, 0x1

    nop

    nop

    iput p2, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->b:I

    nop

    nop

    nop

    nop

    nop

    iput p3, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->c:I

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    nop

    nop

    const-string p2, "com.google.android.gms"

    nop

    nop

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    nop

    nop

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p2, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_3
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_9

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->stopSelf(I)V

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p2

    nop

    nop

    :try_start_4
    iget p1, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->b:I

    nop

    nop

    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    iput p1, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->b:I

    nop

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    iget p1, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->c:I

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto :goto_d

    nop

    :cond_2
    const/4 p1, 0x0

    nop

    nop

    :goto_d
    monitor-exit p2

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lcom/google/android/apps/camera/app/silentfeedback/SilentFeedbackService;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
