.class public final Ljch;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Landroid/app/job/JobScheduler;

.field private final c:I

.field private final d:Lqhg;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/job/JobScheduler;Lhoh;Lqhg;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljch;->a:Landroid/app/Application;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    iput-object p4, p0, Ljch;->d:Lqhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Ljch;->c:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    sget-object p1, Lhmq;->k:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Ljch;->b:Landroid/app/job/JobScheduler;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    nop

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v2, 0x35b4065b

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    const-class v3, Lcom/google/android/apps/camera/keepalive/ProcessGcService;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    int-to-long v4, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/app/job/JobInfo$Builder;->setEstimatedNetworkBytes(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Ljch;->c:I

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

    nop

    :goto_e
    iget-object v2, p0, Ljch;->a:Landroid/app/Application;

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

    :goto_f
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object v3, p0, Ljch;->d:Lqhg;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-wide v5, v3, Lqhg;->a:J

    nop

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

    :goto_14
    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    invoke-direct {v0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    new-instance v1, Landroid/os/PersistableBundle;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v4, "keepalive_sig"

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

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    :goto_1f
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Ljch;->b:Landroid/app/job/JobScheduler;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x19

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

    :goto_22
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_23
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-wide/16 v3, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Ljch;->b:Landroid/app/job/JobScheduler;

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
.end method
