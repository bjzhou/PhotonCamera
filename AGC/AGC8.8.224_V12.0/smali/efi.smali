.class public final Lefi;
.super Ljava/lang/Object;

# interfaces
.implements Lefl;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Logd;

.field public final c:Ldzf;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ldhi;

.field public final f:Lkbc;

.field public final g:Lkaf;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;

.field public final i:Ljava/util/Map;

.field public final j:Lfwx;

.field public final k:Limq;

.field public final l:Ljvs;

.field public final m:Lfuz;

.field private final n:Lmqp;

.field private final o:Lmqp;

.field private final p:Lgkf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/deblurfusion/PostProcessingFusionImageSaverImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lefi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lmqp;Lmqp;Lfuz;Lgkf;Logd;Ldzf;Ljava/util/concurrent/Executor;Ldhi;Lkbc;Lgdd;Limq;Ljvs;[B[B)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, v0, Lefi;->h:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Lfwx;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lfwx;-><init>(I)V

    iput-object v1, v0, Lefi;->j:Lfwx;

    move-object v1, p1

    iput-object v1, v0, Lefi;->n:Lmqp;

    move-object v1, p2

    iput-object v1, v0, Lefi;->o:Lmqp;

    move-object v1, p3

    iput-object v1, v0, Lefi;->m:Lfuz;

    move-object v1, p4

    iput-object v1, v0, Lefi;->p:Lgkf;

    move-object v1, p5

    iput-object v1, v0, Lefi;->b:Logd;

    move-object v1, p6

    iput-object v1, v0, Lefi;->c:Ldzf;

    move-object v1, p7

    iput-object v1, v0, Lefi;->d:Ljava/util/concurrent/Executor;

    move-object v1, p8

    iput-object v1, v0, Lefi;->e:Ldhi;

    move-object v1, p9

    iput-object v1, v0, Lefi;->f:Lkbc;

    move-object v1, p10

    iget-object v1, v1, Lgdd;->b:Lkaf;

    iput-object v1, v0, Lefi;->g:Lkaf;

    move-object v1, p11

    iput-object v1, v0, Lefi;->k:Limq;

    move-object/from16 v1, p12

    iput-object v1, v0, Lefi;->l:Ljvs;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lefi;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic b(Lgkr;)Lfyy;
    .locals 0

    invoke-virtual {p0, p1}, Lefi;->c(Lgkr;)Ledm;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lgkr;)Ledm;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lgkr;Lefz;)Ledm;
    .locals 8

    iget-object v0, p0, Lefi;->p:Lgkf;

    invoke-virtual {v0}, Lgkf;->a()Lebb;

    move-result-object v4

    iget-object v0, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lgxl;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lefi;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lefh;

    if-nez v1, :cond_2

    sget-object v1, Lefz;->b:Lefz;

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lefi;->n:Lmqp;

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p2

    invoke-static {p2}, Lmoz;->p(Z)V

    iget-object p2, p0, Lefi;->n:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lefy;

    move-object v5, p2

    goto :goto_0

    :cond_0
    sget-object v1, Lefz;->c:Lefz;

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lefi;->o:Lmqp;

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result p2

    invoke-static {p2}, Lmoz;->p(Z)V

    iget-object p2, p0, Lefi;->o:Lmqp;

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lefy;

    move-object v5, p2

    :goto_0
    new-instance p2, Lefh;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lefh;-><init>(Lefi;Lgkr;Lebb;Lefy;[B[B)V

    iget-object p1, p0, Lefi;->i:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported fusion mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for session "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v1
.end method
