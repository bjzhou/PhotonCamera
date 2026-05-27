.class public final Lhhv;
.super Ljava/lang/Object;

# interfaces
.implements Lhic;


# static fields
.field private static final b:Lnak;


# instance fields
.field public a:Z

.field private final c:Ldhi;

.field private final d:Lmqp;

.field private final e:Lcsd;

.field private final f:Lcdi;

.field private final g:Lkxr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/speechenhancer/SpeechEnhancerVideoProcessorImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhhv;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Lmqp;Lcsd;Lkxr;Lcdi;Ldhi;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhhv;->d:Lmqp;

    iput-object p2, p0, Lhhv;->e:Lcsd;

    iput-object p3, p0, Lhhv;->g:Lkxr;

    iput-object p4, p0, Lhhv;->f:Lcdi;

    iput-object p5, p0, Lhhv;->c:Ldhi;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p4}, Lcdi;->i()Ljuf;

    move-result-object p2

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhib;

    new-instance p3, Lhhu;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lhhu;-><init>(Lhhv;I)V

    invoke-interface {p1, p3}, Lhib;->a(Lhia;)Lkad;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljuf;->d(Lkad;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhhv;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhhv;->g:Lkxr;

    iget-object v0, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method public final c(Lkpb;)V
    .locals 14

    iget-object v0, p0, Lhhv;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhhv;->g:Lkxr;

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    iget-object v3, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    int-to-double v3, v3

    iget-object v5, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v5

    sget-object v6, Lnmf;->a:Lj$/time/Duration;

    invoke-virtual {v5}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v5}, Lj$/time/Duration;->getNano()I

    move-result v5

    int-to-double v8, v5

    iget v5, v0, Lkxr;->a:I

    int-to-double v10, v5

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    cmpl-double v5, v3, v10

    if-lez v5, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object v3, v0, Lkxr;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v1, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    iget v2, v0, Lkxr;->a:I

    if-le v1, v2, :cond_3

    iget-object v0, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    :cond_3
    iget-boolean v0, p0, Lhhv;->a:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-interface {p1}, Lkpb;->c()I

    move-result v0

    invoke-interface {p1}, Lkpb;->b()I

    move-result v1

    invoke-static {v0, v1}, Lkaf;->h(II)Lkaf;

    move-result-object v0

    iget-object v1, p0, Lhhv;->e:Lcsd;

    invoke-virtual {v1}, Lcsd;->a()Ljvs;

    move-result-object v1

    check-cast v1, Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lkab;

    invoke-interface {p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1}, Lkpb;->a()I

    move-result v4

    const/16 v5, 0x36

    if-ne v4, v5, :cond_6

    invoke-interface {p1}, Lkpb;->c()I

    move-result v4

    invoke-interface {p1}, Lkpb;->b()I

    move-result v5

    mul-int v4, v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_1
    if-ge v3, v4, :cond_5

    add-int v6, v3, v3

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {v5, v3, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget v2, v0, Lkaf;->a:I

    iget v3, v0, Lkaf;->b:I

    iget v4, v1, Lkab;->e:I

    invoke-static {v5, v2, v3, v4}, Linb;->C(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Lkpb;->a()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_7

    iget v3, v0, Lkaf;->a:I

    iget v4, v0, Lkaf;->b:I

    iget v5, v1, Lkab;->e:I

    invoke-static {v2, v3, v4, v5}, Linb;->C(Ljava/nio/ByteBuffer;III)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_7
    sget-object v2, Lhhv;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0xe3c

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {p1}, Lkpb;->a()I

    move-result v3

    const-string v4, "Unsupported Image Format: %d."

    invoke-interface {v2, v4, v3}, Lnah;->p(Ljava/lang/String;I)V

    const/4 v2, 0x0

    move-object v4, v2

    :goto_2
    if-nez v4, :cond_8

    return-void

    :cond_8
    iget-object v2, p0, Lhhv;->c:Ldhi;

    sget-object v3, Ldif;->a:Ldhj;

    invoke-interface {v2}, Ldhi;->e()V

    sget-object v10, Lmpx;->a:Lmpx;

    iget-object v2, p0, Lhhv;->c:Ldhi;

    invoke-interface {v2}, Ldhi;->f()V

    iget-object v2, p0, Lhhv;->d:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lhib;

    iget v5, v0, Lkaf;->a:I

    iget v6, v0, Lkaf;->b:I

    iget v7, v1, Lkab;->e:I

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v8

    invoke-interface/range {v3 .. v10}, Lhib;->g(Ljava/nio/ByteBuffer;IIIJLmqp;)V

    return-void
.end method
