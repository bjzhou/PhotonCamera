.class final Ldqj;
.super Ldqe;
.source "PG"


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p5, p0, Ldqj;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

    :goto_1
    iput-object p2, p0, Ldqj;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ldqe;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Ldqj;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ldqj;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    goto/32 :goto_1

    nop

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
    iput-object p3, p0, Ldqj;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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
.end method


# virtual methods
.method public final a(Ldqm;Ldqm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldqj;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(Ldqm;Ljava/lang/Thread;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldqj;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

    :goto_2
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ldqn;Ldqi;Ldqi;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldqj;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, La;->as(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final d(Ldqn;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ldqj;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2, p3}, La;->as(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

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
.end method

.method public final e(Ldqn;Ldqm;Ldqm;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, La;->as(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ldqj;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
