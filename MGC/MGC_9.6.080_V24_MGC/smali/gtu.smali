.class public Lgtu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field private static final c:Lsdb;


# instance fields
.field public final a:Llxr;

.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field private d:Landroid/media/AudioRouting;

.field private e:Z

.field private final f:Ljava/lang/Object;

.field private g:Lpci;

.field private final h:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lgtu;->c:Lsdb;

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

    :goto_3
    const-string v0, "gtu"

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
.end method

.method public constructor <init>(Liof;Llxr;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lgtu;->e:Z

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgtu;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object v0, p0, Lgtu;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgtu;->a:Llxr;

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

    :goto_5
    const/4 p1, 0x0

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

    :goto_6
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-object p1, p0, Lgtu;->h:Liof;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/media/AudioRouting;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Llxr;->h(Llxq;)Z

    move-result v0

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Llyg;->c:Llyg;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgtu;->h:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Landroid/media/AudioRouting;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_31

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Llyg;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    sget-object v2, Llxq;->d:Llxq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    sget-object v1, Llyg;->b:Llyg;

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

    :goto_a
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/16 :goto_1b

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    :goto_10
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2}, Llxr;->h(Llxq;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Llxr;->e:Landroid/media/AudioDeviceInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Liof;->z()Landroid/media/AudioDeviceInfo;

    move-result-object v0

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

    :goto_17
    invoke-static {v0}, Liof;->A(Landroid/media/AudioDeviceInfo;)V

    goto/32 :goto_a

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_30

    nop

    :goto_1a
    move-object v0, v1

    nop

    :goto_1b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Liof;->y()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Llxr;->c()Llyg;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lgtu;->a:Llxr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lgtu;->a:Llxr;

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

    :goto_24
    invoke-virtual {v0, v1}, Llyg;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    iget-object v0, p0, Lgtu;->a:Llxr;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    iput-object v1, p0, Llxr;->e:Landroid/media/AudioDeviceInfo;

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

    :goto_27
    invoke-virtual {v0}, Llxr;->c()Llyg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_28
    invoke-interface {p1, v1}, Landroid/media/AudioRouting;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    :goto_29
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lgtu;->a:Llxr;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_2c
    sget-object v2, Llxq;->c:Llxq;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lgtu;->a:Llxr;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1, v0}, Landroid/media/AudioRouting;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_d

    nop

    nop

    :goto_31
    goto/32 :goto_b

    nop

    nop

    :goto_32
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lgtu;->h:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_36
    iget-object p0, p0, Lgtu;->a:Llxr;

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
.end method

.method public final b(Landroid/media/AudioRouting;)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgtu;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lgtu;->a(Landroid/media/AudioRouting;)V

    :try_start_0
    const/4 v1, 0x2

    nop

    nop

    new-array v1, v1, [Loyd;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lgtu;->a:Llxr;

    nop

    iget-object v3, v2, Llxr;->b:Loyn;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    aput-object v3, v1, v4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llxr;->d:Loyn;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    aput-object v2, v1, v3

    nop

    invoke-static {v1}, Loyi;->a([Loyd;)Loyd;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Lgzw;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    invoke-direct {v2, p0, p1, v3, v4}, Lgzw;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, p1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lgtu;->g:Lpci;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    iput-object p1, p0, Lgtu;->d:Landroid/media/AudioRouting;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    :try_start_1
    iget-boolean v1, p0, Lgtu;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    sget-object p0, Lgtu;->c:Lsdb;

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 p1, 0x330

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string p1, "Ignore start. Already closed"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :cond_1
    iget-object v1, p0, Lgtu;->d:Landroid/media/AudioRouting;

    nop

    if-eqz v1, :cond_2

    nop

    nop

    invoke-virtual {p0}, Lgtu;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/media/AudioRouting;->getRoutedDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lgtu;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgtu;->e:Z

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lgtu;->c:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 v1, 0x332

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    const-string v1, "Ignore stop. Already closed"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lgtu;->d:Landroid/media/AudioRouting;

    nop

    iget-object v2, p0, Lgtu;->g:Lpci;

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpci;->close()V

    iput-object v1, p0, Lgtu;->g:Lpci;

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

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

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgtu;->f:Ljava/lang/Object;

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgtu;->e:Z

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    sget-object p0, Lgtu;->c:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    const/16 v1, 0x32e

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string v1, "Already closed"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    invoke-virtual {p0}, Lgtu;->c()V

    const/4 v1, 0x1

    nop

    nop

    iput-boolean v1, p0, Lgtu;->e:Z

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

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

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
