.class public final Lfqp;
.super Ljava/lang/Object;

# interfaces
.implements Lfsm;


# static fields
.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lecd;

.field public final b:Lkli;

.field public final c:Ldhi;

.field public final d:Lfqq;

.field public final e:Lgue;

.field public final f:Lcvr;

.field private final h:Lkaq;

.field private final i:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lfqp;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lecd;Lkli;Lkaq;Ldhi;Lfqq;Ljava/util/concurrent/Executor;Lcvr;Lgue;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqp;->a:Lecd;

    iput-object p2, p0, Lfqp;->b:Lkli;

    const-string p1, "MomentsHdrPLaunch"

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfqp;->h:Lkaq;

    iput-object p4, p0, Lfqp;->c:Ldhi;

    iput-object p5, p0, Lfqp;->d:Lfqq;

    iput-object p6, p0, Lfqp;->i:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lfqp;->f:Lcvr;

    iput-object p8, p0, Lfqp;->e:Lgue;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lkeb;Lgue;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lkeb;Lfte;Lnom;Lfsl;)V
    .locals 11

    sget-object v0, Lfqp;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher shot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfqp;->h:Lkaq;

    invoke-static {v0, v1}, Lkau;->k(Ljava/lang/String;Lkaq;)Lkau;

    move-result-object v5

    const-string v0, "launcher got a HDR+ burst"

    invoke-interface {v5, v0}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {p1}, Lkeb;->b()Lkeg;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, v0, Lkeg;->b:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    with frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lfqp;->i:Ljava/util/concurrent/Executor;

    new-instance v1, Lfql;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v10}, Lfql;-><init>(Lfqp;Lkeb;Lkaq;Lfsl;Lfte;Lnom;[B[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
