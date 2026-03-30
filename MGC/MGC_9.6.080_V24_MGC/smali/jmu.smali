.class public Ljmu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final A:Ljmn;

.field public B:Ljny;

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:Ljmz;

.field public G:Z

.field public final H:Landroid/os/Handler;

.field public final I:Lhoh;

.field public final J:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private K:F

.field private final L:Ljqp;

.field private final M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field private final N:Lfgt;

.field private final O:Lfgt;

.field private final P:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public b:Ljmx;

.field public final c:Ljmb;

.field public d:Z

.field public e:F

.field public f:F

.field public final g:Ljnq;

.field public h:D

.field public i:D

.field public j:Z

.field public k:I

.field public final l:Ljava/util/concurrent/Semaphore;

.field public final m:Ljava/util/Vector;

.field public n:I

.field public o:Ljava/io/FileWriter;

.field public final p:Landroid/content/Context;

.field public final q:Landroid/view/WindowManager;

.field public r:Z

.field public s:Z

.field public t:Lihg;

.field public u:Z

.field public v:Z

.field public w:Ljny;

.field public x:Ljny;

.field public final y:Landroid/os/Handler;

.field public final z:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "jmu"

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

    :goto_1
    return-void

    nop

    :goto_2
    sput-object v0, Ljmu;->a:Lsdb;

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

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lhoh;Ljmb;Ljnq;Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Ljmn;Ljmx;Ljqp;)V
    .locals 3

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p5, Landroid/os/Handler;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v1, p0, Ljmu;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_5
    invoke-direct {v0, p0}, Ljms;-><init>(Ljmu;)V

    goto/32 :goto_40

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Ljmu;->G:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Ljmu;->z:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_8
    new-instance p3, Lkdz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Ljmu;->q:Landroid/view/WindowManager;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance p1, Ljava/io/FileWriter;

    nop

    nop

    nop

    nop

    iget-object p5, p5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    nop

    nop

    invoke-direct {p1, p5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p3, p0, Ljmu;->c:Ljmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_c
    new-instance v0, Ljms;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    iget-object p1, p0, Ljmu;->g:Ljnq;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Ljmu;->v:Z

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    const-string p5, "FileHandlerThread"

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Ljmu;->D:Ljava/util/List;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_19
    iput-object p5, p0, Ljmu;->M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljmr;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Ljmu;->w:Ljny;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/util/concurrent/Semaphore;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean p3, p1, Ljmz;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Ljmu;->E:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1f
    iget-object p5, p0, Ljmu;->M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_20
    iput-object p3, p1, Ljnq;->k:Ljny;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_21
    iput-object p5, p0, Ljmu;->y:Landroid/os/Handler;

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

    :goto_22
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0}, Ljmr;-><init>()V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p6, p0, Ljmu;->A:Ljmn;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    new-instance p3, Ljnh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_28
    iput-object p8, p0, Ljmu;->L:Ljqp;

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

    :goto_29
    const-string p4, "Nexus 5"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Ljmu;->l:Ljava/util/concurrent/Semaphore;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p3, p0, p4}, Lkdz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2e
    sget-object p1, Ljmu;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2f
    invoke-direct {p8, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    new-instance p1, Landroid/os/HandlerThread;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_31
    iput-object p8, p0, Ljmu;->H:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_32
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_33
    const/16 p5, 0x9ca

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_36
    const/4 p4, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_37
    iput-object v0, p0, Ljmu;->C:Ljava/util/List;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_38
    iput-object v0, p0, Ljmu;->F:Ljmz;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_39
    new-instance p8, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    iput-object p2, p0, Ljmu;->I:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3b
    iput-object p3, p1, Ljmx;->y:Ljnh;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3c
    iput-object p0, p7, Ljmx;->F:Ljmu;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_3d
    const-string p6, "Could not create file writer for : %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v0, p0, Ljmu;->m:Ljava/util/Vector;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v0, p0, Ljmu;->O:Lfgt;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

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

    :goto_42
    iput-object v0, p0, Ljmu;->J:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {p5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_21

    nop

    nop

    :goto_47
    iput-object p1, p0, Ljmu;->p:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_48
    iput v1, p0, Ljmu;->n:I

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1, p6, p5}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p1, p5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_4d
    invoke-virtual {p2, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4e
    iput-boolean v1, p0, Ljmu;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4f
    iput-object v0, p0, Ljmu;->N:Lfgt;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_50
    iput-object p7, p0, Ljmu;->b:Ljmx;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_51
    iput-object v0, p0, Ljmu;->x:Ljny;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_52
    iput-object v0, p0, Ljmu;->P:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p3}, Ljnh;-><init>()V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_54
    if-eqz p3, :cond_1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/16 v2, 0x64

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_56
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_52

    nop

    nop

    :goto_57
    const v0, 0x19

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_58
    const-string p6, "window"

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_59
    check-cast p1, Lscz;

    nop

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

    :goto_5a
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    new-instance v0, Ljmz;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5c
    iput-object p4, p1, Ljmx;->E:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v0}, Ljmz;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_5f
    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    goto/32 :goto_2b

    nop

    nop

    :goto_60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_61
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_63
    iget-object p1, p0, Ljmu;->q:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_64
    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_66
    iput-object p4, p0, Ljmu;->g:Ljnq;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_67
    sget-object p1, Lhng;->c:Lhmn;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_41

    nop

    nop

    :goto_69
    invoke-interface {p1, p5}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p5, p5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_6b
    iput-boolean v1, p0, Ljmu;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_6c
    iget-object p1, p0, Ljmu;->F:Ljmz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6d
    return-void

    nop

    :goto_6e
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p1, p0, Ljmu;->b:Ljmx;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-boolean v1, p0, Ljmu;->v:Z

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
.end method

.method public static final i(Landroid/view/MotionEvent;)F
    .locals 4

    goto/32 :goto_13

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    float-to-double v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    add-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sub-float/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    mul-float/2addr v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    double-to-float p0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    mul-float/2addr v0, v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xb

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

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_15
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    sub-float/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget p0, p0, Ljmu;->K:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz v1, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    const/high16 p0, 0x425c0000    # 55.0f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    const/high16 v0, 0x42960000    # 75.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljmu;->b()F

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v1, 0x10

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

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-float v0, p0, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop
.end method

.method public final b()F
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_1
    int-to-float p0, v0

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

    nop

    :goto_2
    sget-object v1, Lhng;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const/high16 v0, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    const-string v0, "Cannot use stopped controller"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Ljmu;->K:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljmu;->I:Lhoh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    const v0, 0x10

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

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    const v1, 0xe

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Ljml;->a:Ljmk;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljml;->a(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljmu;->c:Ljmb;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    div-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()I
    .locals 5

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget v0, p0, Ljmu;->n:I

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    throw v0

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    :try_start_2
    iput v0, p0, Ljmu;->n:I

    nop

    nop

    nop

    iget-object v0, p0, Ljmu;->C:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    nop

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    new-instance v0, Ljava/io/BufferedReader;

    nop

    new-instance v2, Ljava/io/FileReader;

    nop

    nop

    nop

    iget-object v3, p0, Ljmu;->M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v4, p0, Ljmu;->n:I

    nop

    nop

    nop

    if-ge v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/io/FileWriter;

    nop

    iget-object v3, p0, Ljmu;->M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_4
    sget-object v2, Ljmu;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v3, "undo image exception:"

    nop

    nop

    nop

    const/16 v4, 0x9c8

    nop

    nop

    invoke-static {v3, v4, v2, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_11
    iget v0, p0, Ljmu;->n:I

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iput-boolean v1, p0, Ljmu;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_2
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Ljmu;->G:Z

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    monitor-exit p0

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

    :goto_16
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_15

    nop

    nop
.end method

.method public final d(Lfgv;)V
    .locals 12

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    invoke-static {v4, v7, v9, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aput v6, v10, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_18

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
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5
    const-wide v5, 0x400921fb54442d18L    # Math.PI

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Ljmu;->N:Lfgt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    new-array v4, v9, [F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    new-array v4, v3, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    mul-float/2addr v3, v4

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

    nop

    :goto_c
    iget-object v0, p0, Ljmu;->H:Landroid/os/Handler;

    nop

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

    :goto_d
    new-instance v0, Ljob;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2, p1, v3}, Ljob;-><init>(JLandroid/location/Location;I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v6, 0x0

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

    :goto_10
    const/16 v3, 0x10

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

    nop

    :goto_11
    iget-object v1, p0, Ljmu;->P:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    aget v3, v4, v11

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v6, v6, Lnpl;->c:F

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljqp;->c()Lrss;

    move-result-object p1

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

    :goto_16
    iget-object v5, p0, Ljmu;->g:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Ljmu;->L:Ljqp;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    iget-object v5, v5, Ljnq;->d:[F

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

    :goto_19
    iget v8, v6, Lnpl;->b:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v4, v6, v10, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    new-array v3, v3, [F

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    const/high16 v4, 0x43340000    # 180.0f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    iget-object v3, p0, Ljmu;->O:Lfgt;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    aput v8, v10, v7

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lrss;->f()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    iget v7, v6, Lnpl;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    iput-boolean v11, p0, Ljmu;->G:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v9, 0x3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput v7, v10, v11

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

    :goto_26
    iget-object v6, v5, Ljnq;->b:Lnpl;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_28
    check-cast p1, Landroid/location/Location;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v8, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_2b
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    div-double/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v0, v1, v2, v3}, Lfgv;->o(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Lfgt;Lfgt;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    float-to-double v3, v3

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

    :goto_30
    goto/32 :goto_4

    nop

    :goto_31
    goto/32 :goto_c

    nop

    nop

    :goto_32
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    double-to-int v3, v3

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

    :goto_34
    iget-object p1, p0, Ljmu;->C:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_35
    new-array v10, v9, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 12

    goto/32 :goto_43

    nop

    nop

    :goto_0
    goto/16 :goto_6d

    nop

    :goto_1
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Ljna;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v6, v3, 0x4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v2

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7
    const/16 v0, 0x30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_9
    iput v3, p0, Ljna;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v3, 0x1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_75

    nop

    nop

    :goto_c
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v5, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-float v7, v4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_12
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    :goto_13
    iget-object v2, p0, Ljna;->c:Ljava/nio/ShortBuffer;

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

    :goto_14
    iput-object v0, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_15
    int-to-short v5, v2

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_16
    iput-object v0, p0, Ljna;->b:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Ljna;->f:I

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_1b
    iput-object v0, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1d
    add-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_1e
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_1f
    int-to-short v11, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v6, v7, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v3, v4, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_7b

    nop

    nop

    :goto_23
    add-int/lit8 v10, v6, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

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

    nop

    :goto_26
    iget-object v6, p0, Ljna;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_81

    nop

    nop

    :goto_29
    const/16 v0, 0x20

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2a
    move v6, v10

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_2c
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_2d
    move v3, v0

    nop

    nop

    :goto_2e
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v9, v3, 0x2

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

    nop

    :goto_30
    int-to-float v5, v2

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_31
    add-int/lit8 v7, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v3, v7

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

    :goto_34
    invoke-virtual {v6, v3, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_37
    if-gez v0, :cond_3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v0, p0, Ljna;->f:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

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

    :goto_3b
    invoke-virtual {v2, v6, v8}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_35

    nop

    nop

    :goto_3c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move v2, v0

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

    :goto_3e
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_40
    invoke-virtual {v2, v7, v8}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_44
    goto/16 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, v3, v8}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v2, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

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

    :goto_4a
    if-gez v0, :cond_4

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4b
    goto :goto_52

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v2, v3, v6}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_5
    goto/32 :goto_89

    nop

    :goto_4f
    iget-object v2, p0, Ljna;->i:Ljava/nio/ShortBuffer;

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

    :goto_50
    if-lez v2, :cond_6

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_51
    move v6, v1

    nop

    nop

    :goto_52
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_53
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_54
    add-int/2addr v6, v4

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_55
    move v4, v0

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_58
    throw p0

    nop

    :goto_59
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v4, v3, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_5c
    int-to-short v8, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v2, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5f
    iget-object v6, p0, Ljna;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_60
    goto :goto_56

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_64

    nop

    nop

    :goto_62
    move v2, v0

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-lez v2, :cond_7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_64
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_65
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_66
    int-to-short v5, v5

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_67
    add-int v5, v0, v0

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2, v7, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v6, v3, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_19

    nop

    nop

    :goto_6a
    add-int/lit8 v5, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1, v3, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_6c
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_86

    nop

    nop

    :goto_6e
    move v2, v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object p0, p0, Ljmx;->b:Ljna;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v7, v11}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    move v3, v5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_73
    move v2, v0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_74
    move v3, v2

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_76
    add-int/lit8 v7, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_77
    iput-boolean v4, p0, Ljna;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_8a

    nop

    :goto_79
    add-int/lit8 v7, v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_7a
    move v2, v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7b
    iget-object v4, p0, Ljna;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7c
    iget-object v2, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_7d
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_7e
    const/16 v4, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_7f
    if-lt v4, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    nop

    :cond_9
    :try_start_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v1, "State is not ready."

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

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

    goto/32 :goto_58

    nop

    nop

    :goto_81
    move v0, v4

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_4a

    nop

    nop

    :goto_83
    int-to-short v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_85
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v4, 0x1

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_87
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto :goto_82

    nop

    nop

    :goto_8c
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2, v9, v6}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_5e

    nop

    nop

    :goto_8e
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    add-int/2addr v5, v4

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_90
    int-to-short v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_91
    add-int/lit8 v7, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_92
    add-int v6, v0, v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_93
    move v0, v4

    nop

    nop

    :goto_94
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_95
    add-int/2addr v0, v0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1, v3, v5}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_98
    monitor-enter v0

    nop

    :try_start_1
    sget-object v1, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetFrameGeometry(II)[F

    move-result-object v2

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_99
    add-int/lit8 v3, v3, 0x6

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-lt v0, v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v2, p0, Ljna;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    move v3, v2

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    int-to-short v8, v5

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9e
    iget-object p0, p0, Ljmu;->b:Ljmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v6, p0, Ljna;->i:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_a1
    int-to-short v6, v6

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_a3
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    add-int/lit8 v7, v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 9

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    :goto_1
    :try_start_1
    throw v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_1
    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

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

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_8
    if-nez v4, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_2
    :goto_9
    :try_start_3
    iget-object v0, p0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_4
    new-instance v3, Ljava/io/FileWriter;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v1, "%s,%d\n"

    nop

    nop

    nop

    nop

    nop

    const-string v4, "first_photo_time"

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljob;

    nop

    nop

    nop

    nop

    iget-wide v5, v5, Ljob;->a:J

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v4}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "%s,%d\n"

    nop

    const-string v4, "last_photo_time"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    add-int/lit8 v5, v5, -0x1

    nop

    nop

    nop

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljob;

    nop

    iget-wide v5, v5, Ljob;->a:J

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v1, v4}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "%s,%d\n"

    nop

    const-string v4, "source_photos_count"

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v4}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v1, "%s,%d\n"

    nop

    nop

    nop

    nop

    const-string v4, "pose_heading"

    nop

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljob;

    nop

    nop

    nop

    nop

    iget v0, v0, Ljob;->d:I

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v1, v0}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_d
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljob;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ljob;->c:Landroid/location/Location;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    const-string v0, "%s,%f\n"

    nop

    nop

    nop

    nop

    const-string v2, "location_altitude"

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v0, v2}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s,%f\n"

    nop

    nop

    nop

    nop

    const-string v2, "location_latitude"

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    nop

    nop

    nop

    nop

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v0, v2}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s,%f\n"

    nop

    nop

    nop

    nop

    nop

    const-string v2, "location_longitude"

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-static {v0, v2}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s,%s\n"

    nop

    const-string v2, "location_provider"

    nop

    nop

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    invoke-static {v0, v2}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s,%d\n"

    nop

    nop

    nop

    nop

    const-string v2, "location_time"

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljoa;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    move-object v4, v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_11

    nop

    nop

    nop

    nop

    :catch_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit p0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    iget-boolean v0, p0, Ljmu;->s:Z

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    sget-object v0, Ljmu;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x9cb

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v1, "stopCamera invoked, but camera is already stopped!"

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

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

    :goto_15
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-exit p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    :try_start_8
    iget-object v3, v1, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    if-eqz v3, :cond_9

    nop

    invoke-virtual {v3}, Lfgv;->g()Lfho;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Lfho;->a()I

    move-result v3

    nop

    nop

    nop

    nop

    if-eq v3, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lfgv;->g()Lfho;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lfho;->d()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lfgy;

    nop

    invoke-direct {v5}, Lfgy;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v3}, Lfgv;->h()Lfhp;

    move-result-object v6

    nop

    nop

    nop

    nop

    new-instance v7, Less;

    nop

    nop

    nop

    nop

    const/16 v8, 0xf

    nop

    nop

    nop

    nop

    invoke-direct {v7, v3, v5, v8}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v5, v5, Lfgy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    const-string v8, "stop preview"

    nop

    invoke-virtual {v6, v7, v5, v8}, Lfhp;->b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw v0

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_9

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    move-object v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_d

    nop

    nop

    :cond_4
    :goto_21
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    monitor-exit p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x0

    nop

    nop

    nop

    :try_start_c
    iput-boolean v0, p0, Ljmu;->s:Z

    nop

    iget-object v1, p0, Ljmu;->b:Ljmx;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Ljmx;->s:Z

    nop

    iget-object v1, p0, Ljmu;->c:Ljmb;

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    goto :goto_28

    nop

    :catch_5
    move-exception v5

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v3}, Lfgv;->d()Lfgz;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v3}, Lfgz;->c()Lfhm;

    move-result-object v3

    nop

    invoke-virtual {v3, v5}, Lfhm;->c(Ljava/lang/RuntimeException;)V

    :cond_7
    :goto_28
    iget-object v3, v1, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    iget-object v5, v1, Ljmb;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v4}, Lfgv;->p(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    iget-object v3, v1, Ljmb;->b:Lfgv;

    nop

    nop

    invoke-virtual {v3, v2}, Lfgv;->k(Z)V

    iget-object v2, v1, Ljmb;->b:Lfgv;

    nop

    nop

    invoke-virtual {v2}, Lfgv;->c()Landroid/os/Handler;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lfgv;->c()Landroid/os/Handler;

    move-result-object v5

    nop

    nop

    const/16 v6, 0x12e

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    invoke-virtual {v2}, Lfgv;->c()Landroid/os/Handler;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/16 v3, 0x131

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    iput-object v4, v1, Ljmb;->e:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    :cond_9
    iget-object v1, p0, Ljmu;->M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    iget-object v2, p0, Ljmu;->C:Ljava/util/List;

    nop

    nop

    nop

    iget-object v1, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    nop

    nop

    nop

    sget v3, Ljoa;->a:I

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v3, :cond_a

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

    :cond_a
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lfgv;->b()Landroid/hardware/Camera$Parameters;

    move-result-object v0

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

    :goto_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

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
    iget-object v0, v0, Ljmb;->b:Lfgv;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljmu;->c:Ljmb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Ljmu;->K:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final h(I)V
    .locals 4

    goto/32 :goto_3b

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljmu;->a()F

    move-result v1

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1
    sget-object v3, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljmp;->b(Ljava/lang/String;F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljmu;->a()F

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v3, Ljmp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljmu;->a()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4e

    nop

    nop

    :goto_10
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_11
    if-eq p1, v2, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_12
    iget-object v1, v0, Ljmx;->d:Ljng;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_14
    add-int/lit8 v1, p1, -0x1

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v1, v3, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_18
    const v1, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForWideCapture(Ljava/lang/String;F)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    monitor-exit v3

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ljmu;->b:Ljmx;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean p1, v0, Ljmx;->n:Z

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljng;->d()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1}, Ljmp;->b(Ljava/lang/String;F)V

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v3}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    :goto_24
    goto/32 :goto_48

    nop

    nop

    :goto_25
    monitor-enter v3

    nop

    nop

    :try_start_1
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForVerticalCapture(Ljava/lang/String;F)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean v1, p0, Ljmu;->u:Z

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    :goto_28
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForHorizontalCapture(Ljava/lang/String;F)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1f

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    monitor-exit v3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_2b
    invoke-virtual {p0}, Ljmu;->a()F

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, v0, Ljmx;->d:Ljng;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_5

    nop

    nop

    :goto_2f
    throw p0

    nop

    nop

    :goto_30
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_31
    throw p0

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v1, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v3, Ljmp;->a:Ljava/lang/Object;

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

    :goto_36
    new-array p1, p1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_37
    sget-object v3, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0}, Ljmu;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_39
    iget-object v0, p0, Ljmu;->M:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Ljmu;->a()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3b
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq p1, v0, :cond_7

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3f
    if-ne v1, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, v0, Ljmx;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput v1, p0, Ljmu;->n:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_42
    monitor-enter v3

    nop

    :try_start_3
    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->ResetForFisheyeCapture(Ljava/lang/String;F)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    monitor-exit v3

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->a()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Ljmu;->b:Ljmx;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    const/16 p1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_48
    iput-boolean v2, v0, Ljmx;->u:Z

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v3, p1}, Ljng;->b([F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4b
    if-ne v1, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4c
    iget v3, v0, Ljmx;->x:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget p1, v0, Ljmx;->G:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

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
.end method
