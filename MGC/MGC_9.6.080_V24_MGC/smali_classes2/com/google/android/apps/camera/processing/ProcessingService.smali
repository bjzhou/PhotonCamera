.class public Lcom/google/android/apps/camera/processing/ProcessingService;
.super Landroid/app/Service;
.source "PG"

# interfaces
.implements Llqg;


# static fields
.field private static final u:J


# instance fields
.field public a:Landroid/app/Notification$Builder;

.field public final b:Ljava/lang/Object;

.field public c:Llqh;

.field public d:Llqe;

.field public volatile e:Z

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Landroid/app/NotificationManager;

.field public k:Llqc;

.field public l:Landroid/os/PowerManager;

.field public m:Ledc;

.field public n:Lpdf;

.field public o:Lowu;

.field public p:Landroid/os/Handler;

.field public q:Ljrf;

.field public r:Landroid/view/accessibility/AccessibilityManager;

.field public s:Ljrg;

.field public t:Lofu;

.field private final v:Llqb;

.field private w:Ljava/lang/Thread;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v1, 0x3c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    sput-wide v0, Lcom/google/android/apps/camera/processing/ProcessingService;->u:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Llqb;-><init>(Lcom/google/android/apps/camera/processing/ProcessingService;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Llqb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    iput-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iput-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->v:Llqb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p0}, Llqa;->k(Lcom/google/android/apps/camera/processing/ProcessingService;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ge v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Landroid/app/NotificationChannel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_30

    nop

    nop

    :goto_8
    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7f14058e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->j:Landroid/app/NotificationManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    if-lez v0, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    :goto_16
    const-class v1, Llqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "processing"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Liye;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_22
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->j:Landroid/app/NotificationManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->x:Z

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->x:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Llqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->BoVorIYCkJf:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2e
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Landroid/app/NotificationChannel;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2

    nop

    :goto_31
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/processing/ProcessingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->getApplication()Landroid/app/Application;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->j:Landroid/app/NotificationManager;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpcj;)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->c()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->a:Landroid/app/Notification$Builder;

    nop

    nop

    nop

    nop

    nop

    iget p1, p1, Lpcj;->e:I

    nop

    const/16 v2, 0x64

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final b(Lnik;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->c()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

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

    :try_start_0
    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->a:Landroid/app/Notification$Builder;

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {p1, v2}, Lnik;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x11

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public final c()V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    iget-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->i:Z

    nop

    if-nez v1, :cond_0

    nop

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->j:Landroid/app/NotificationManager;

    nop

    nop

    nop

    iget-object v2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->a:Landroid/app/Notification$Builder;

    nop

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->h:Z

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->p:Landroid/os/Handler;

    nop

    new-instance v2, Llmx;

    nop

    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Llmx;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x3e8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    nop

    iput-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->h:Z

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_b
    throw p0

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x7f0b05bd

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

    :goto_2
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    :goto_3
    iget-object v2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    sput-boolean v0, Lcom/CameraLensesScan;->sWait:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->n:Lpdf;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, "com.google.android.apps.camera.legacy.app.processing.PAUSE"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    sget-wide v3, Lcom/google/android/apps/camera/processing/ProcessingService;->u:J

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "WakeLock#new"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_13
    iget-object v2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->m:Ledc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_17
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v2}, Llqh;->a(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xf

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->t:Lofu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/content/IntentFilter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->v:Llqb;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    monitor-enter v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    :goto_23
    invoke-virtual {v0}, Lofu;->e()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v2, "com.google.android.apps.camera.legacy.app.processing.RESUME"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->l:Landroid/os/PowerManager;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->n:Lpdf;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_28
    iput-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->c:Llqh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v2, v3, v4}, Llqh;-><init>(Landroid/os/PowerManager;J)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    monitor-enter v2

    nop

    nop

    nop

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    const/16 v3, 0x1a

    nop

    nop

    nop

    if-lt v0, v3, :cond_3

    nop

    nop

    nop

    new-instance v0, Landroid/app/Notification$Builder;

    nop

    nop

    nop

    nop

    const-string v3, "processing"

    nop

    nop

    invoke-direct {v0, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    nop

    :cond_3
    new-instance v0, Landroid/app/Notification$Builder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_2b
    const v3, 0x7f0802d9

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    const v4, 0x7f060895

    nop

    nop

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->r:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    const-string v1, ""

    nop

    nop

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const v1, 0x7f14006e

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/processing/ProcessingService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    nop

    :goto_2c
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->a:Landroid/app/Notification$Builder;

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Lcom/a;->g:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    :goto_2f
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->n:Lpdf;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_31
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v2, "onCreate"

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_33
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->n:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Llqh;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :try_start_3
    iput-boolean v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->g:Z

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->h:Z

    nop

    iput-boolean v2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->i:Z

    nop

    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v2, v3, v0}, Ledc;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v2, "ProcessingService#onCreate"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->t:Lofu;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    :try_start_0
    iput v1, p0, Llqc;->f:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Llqc;->c:Z

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Llqc;->c:Z

    nop

    nop

    nop

    invoke-virtual {p0}, Llqc;->b()V

    const/4 p0, 0x0

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    iget-object v1, p0, Llqc;->e:Lsuu;

    nop

    nop

    new-instance v2, Lsuu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lsuu;-><init>()V

    iput-object v2, p0, Llqc;->e:Lsuu;

    nop

    nop

    move-object p0, v1

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Ledc;->c(Landroid/content/BroadcastReceiver;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_9
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_40

    nop

    :goto_10
    sput-boolean v0, Lcom/CameraLensesScan;->sWait:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, v4, Lsmk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v3, Lsmk;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_14
    iput v3, v0, Lskd;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->m:Ledc;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lskd;->a:Lskd;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Llqh;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1c
    const/high16 v4, 0x200000

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v3, v0, Lskd;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_1f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Service destroyed, not restarting but queue has items."

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput v5, v4, Lsmk;->c:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->k:Llqc;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v2, 0x7f0b05bd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_27
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    :goto_29
    sget-object v3, Lsmk;->a:Lsmk;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lofu;->f()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_30
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-class v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v5, v4, Lsmk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v0, Lcom/a;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v1, v0}, Ljrg;->a(Lskd;)V

    goto/32 :goto_24

    nop

    nop

    :goto_36
    iget-object v0, p0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_38
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/processing/ProcessingService;->stopForeground(Z)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3b
    throw p0

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3d
    or-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3f
    goto/32 :goto_3c

    nop

    :goto_40
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_42
    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->s:Ljrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v3, v0, Lskd;->aw:Lsmk;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_44
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->c:Llqh;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->v:Llqb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_47
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_48
    check-cast v4, Lsmk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    const-string p2, "CameraProcessingThread"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, v0, Lsmk;->b:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3}, Ltkb;->i()Ltkg;

    move-result-object p3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    sget-object p2, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2, p1}, Ljre;-><init>(Ljrf;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_1d

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

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

    nop

    :goto_f
    invoke-interface {p1, p2}, Ljrg;->a(Lskd;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_11
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    iput v2, v0, Lsmk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p3}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p3, Llcc;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3

    nop

    nop

    :goto_18
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_19
    iget p3, v0, Lskd;->d:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/high16 v2, 0x200000

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/processing/ProcessingService;->startForeground(ILandroid/app/Notification;)V

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v0, 0xa

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_21
    invoke-virtual {p2}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    monitor-enter p1

    nop

    nop

    :try_start_1
    iget-object p2, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->a:Landroid/app/Notification$Builder;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->s:Ljrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2}, Ltkg;->m()Ltkb;

    move-result-object p2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_28
    iput-object p3, v0, Lskd;->aw:Lsmk;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lsmk;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p1, Lowl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p3, p0, p2, v0}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->w:Ljava/lang/Thread;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->q:Ljrf;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p3, Lsmk;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v0, 0x17

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->w:Ljava/lang/Thread;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p3}, Ltkg;->m()Ltkb;

    move-result-object p3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p1, v0, p3, p2}, Lowl;-><init>(ILjava/lang/Runnable;Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    or-int/2addr p3, v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_35
    sget-object p3, Lsmk;->a:Lsmk;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_38
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p1, 0x2

    nop

    nop

    :try_start_2
    const/high16 p3, 0x40000000    # 2.0f

    nop

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/camera/processing/ProcessingService;->startForeground(ILandroid/app/Notification;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3b
    iput p3, v0, Lskd;->d:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3d
    iput v1, v0, Lsmk;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3e
    new-instance p2, Ljre;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_40
    check-cast p2, Lskd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_41
    const/4 v1, 0x1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_42
    or-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final onTimeout(I)V
    .locals 5

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lsmk;->a:Lsmk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_2
    goto/32 :goto_2f

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/processing/ProcessingService;->stopSelf()V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->s:Ljrg;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, v2, Lskd;->d:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, v0}, Lhug;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, v2, Lskd;->aw:Lsmk;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->k:Llqc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    or-int/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v3, v2, Lsmk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v3, v2, Lsmk;->c:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    :goto_18
    goto/32 :goto_35

    nop

    nop

    :goto_19
    goto/32 :goto_18

    nop

    :goto_1a
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    check-cast v1, Lsmk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1d
    const/high16 v3, 0x200000

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1e
    iput v3, v2, Lsmk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1, v0}, Ljrg;->a(Lskd;)V

    goto/32 :goto_39

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, v2, Lskd;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter v1

    nop

    :try_start_2
    iget-object v2, v0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lloo;

    nop

    nop

    const/16 v4, 0x8

    nop

    nop

    invoke-direct {v3, p1, v4}, Lloo;-><init>(Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object p1, v0, Llqc;->b:Ljava/util/LinkedList;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const/4 p1, 0x2

    nop

    iput p1, v0, Llqc;->f:I

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v0, "Short service timeout."

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_2c
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lcom/google/android/apps/camera/processing/ProcessingService;->d:Llqe;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    invoke-interface {v1}, Llqe;->a()Llqd;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1, p1}, Llqd;->b(Ljava/lang/Throwable;)V

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2d
    check-cast v2, Lskd;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Lsmk;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_30
    or-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v0, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_34
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_35
    new-instance p1, Lhug;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, v0, Llqc;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v4}, Lcom/google/android/apps/camera/processing/ProcessingService;->stopForeground(I)V

    goto/32 :goto_4

    nop

    nop

    nop
.end method
