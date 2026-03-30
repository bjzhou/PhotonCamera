.class public Likr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ltxm;

.field public final c:Lpdf;

.field public final d:Lrss;

.field public final e:Lrss;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/google/android/apps/camera/hdrplus/postprocessing/flareremoval/jni/NativeFlareRemoval;

.field public final h:Lhoh;

.field private final i:Lsui;

.field private final j:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    :goto_2
    const-string v0, "ikr"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sput-object v0, Likr;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Lhoh;Lpdf;Lrss;Lrss;Lcom/google/android/apps/camera/hdrplus/postprocessing/flareremoval/jni/NativeFlareRemoval;Lsui;Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Likr;->i:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iput-object p6, p0, Likr;->g:Lcom/google/android/apps/camera/hdrplus/postprocessing/flareremoval/jni/NativeFlareRemoval;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p2, p0, Likr;->h:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object p5, p0, Likr;->e:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Likr;->b:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Likr;->c:Lpdf;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p9, p0, Likr;->f:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iput-object p8, p0, Likr;->j:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Likr;->d:Lrss;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0, v1}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

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

    :goto_3
    iget-object v1, p0, Likr;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Likr;->i:Lsui;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    new-instance v0, Likq;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Likq;-><init>(Likr;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method
