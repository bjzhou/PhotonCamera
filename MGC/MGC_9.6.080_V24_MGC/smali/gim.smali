.class public Lgim;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lowv;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/BlockingQueue;

.field public final c:Ljava/lang/ThreadLocal;

.field public final d:Ljava/util/ArrayList;

.field private final e:Lowv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "gim"

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

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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

    :goto_2
    sput-object v0, Lgim;->a:Lsdb;

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lowv;I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgim;->e:Lowv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lgim;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lgim;->b:Ljava/util/concurrent/BlockingQueue;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lgim;->c:Ljava/lang/ThreadLocal;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lgil;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lgil;-><init>()V

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lgim;->b:Ljava/util/concurrent/BlockingQueue;

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

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lgik;-><init>(Lgim;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lgim;->e:Lowv;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lgik;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lgim;->e:Lowv;

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

    :goto_9
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Lowv;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget-object p1, p0, Lgim;->c:Ljava/lang/ThreadLocal;

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

    :goto_c
    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_e
    invoke-interface {p1, v0}, Lowv;->execute(Ljava/lang/Runnable;)V

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
