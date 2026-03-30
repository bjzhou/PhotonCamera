.class public Ljkz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Lowu;

.field public final d:Lrss;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljhy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljkz;->a:Lsdb;

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_2
    const-string v0, "jkz"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lowu;Lfdn;Ljhy;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljkz;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Lfdn;->h()Landroid/content/Intent;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Ljkz;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {p1}, Lfwt;->e(Landroid/content/Intent;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p2, p0, Ljkz;->c:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iput-object p1, p0, Ljkz;->d:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p4, p0, Ljkz;->f:Ljhy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
