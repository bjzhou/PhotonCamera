.class public final Lmlr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lowu;

.field public c:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

.field public d:Lmlx;

.field public final e:Lmly;

.field public final f:Lmjv;

.field public final g:Lhoh;

.field public final h:Lqpa;

.field private final i:Lhwy;


# direct methods
.method public constructor <init>(Lqpa;Lmly;Lhwy;Ljava/util/concurrent/ScheduledExecutorService;Lowu;Lmjv;Lhoh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lmlr;->f:Lmjv;

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmlr;->h:Lqpa;

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

    :goto_4
    iput-object p5, p0, Lmlr;->b:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p2, p0, Lmlr;->e:Lmly;

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
    iput-object p3, p0, Lmlr;->i:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lmlr;->g:Lhoh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Lmlr;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

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

    :goto_3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_5

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

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    const-string v1, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const-string v1, "pref_category_storage"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, "pref_make_setting_page_root"

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

    nop

    nop

    :goto_11
    const-string p0, "pref_open_setting_page"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lmlr;->i:Lhwy;

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

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmlr;->c:Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Lhwy;->J(Lmlx;)Lmlo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a()V

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v3, v0, Lmlx;->c:J

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide v3, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    iget-wide v3, v0, Lmlx;->b:J

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v2, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->c:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, v1, Lmlo;->a:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v3, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->b:J

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

    :goto_13
    iput v1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    iget-object v0, p0, Lmlr;->d:Lmlx;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget v1, v1, Lmlo;->b:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0xb

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
